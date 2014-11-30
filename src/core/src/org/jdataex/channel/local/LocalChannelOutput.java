package org.jdataex.channel.local;

import static org.jdataex.channel.common.DefaultValues.NULL_STRING;

import org.jdataex.channel.BaseAbstractChannelOutput;
import org.jdataex.channel.IChannelOutput;
import org.jdataex.channel.IChannelStage;
import org.jdataex.channel.common.ChannelEventType;
import org.jdataex.channel.event.DefaultEvent;
import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.exception.CanNotWriteChannelException;
import org.jdataex.channel.exception.ChannelException;
import org.jdataex.channel.executor.ExecutorTask;
import org.jdataex.channel.future.IChannelFuture;
import org.jdataex.channel.naming.LocalNamingContext;
import org.jdataex.channel.net.INetAddress;
import org.jdataex.channel.util.ChannelClassUtil;
import org.jdataex.util.AssertUtil;

/**
 * 本地output类型,本地output的特点是write方法直接写入目标端executor,connect方法通过
 * JNDI直接获取目标本地stage对象,注意本地output的下一级只能是包含本地input的stage.
 * 
 * 2014-6-4 修改代码将chain移出类,解耦合,chain处理代码移动到stage内部
 * 
 * @author chaos
 * 
 * @param <T>
 *            消息可以为任意类型
 */
public class LocalChannelOutput<T> extends BaseAbstractChannelOutput<T>
		implements IChannelOutput<T> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9026219013055268401L;

	private IChannelStage<T> targetStage;

	public LocalChannelOutput(String name) {
		super(name);
	}

	public IChannelStage<T> getTargetStage() {
		return targetStage;
	}

	public void setTargetStage(IChannelStage<T> targetStage) {
		// 2014-8-1修改为这里不再判断;
		// AssertUtil.assertNull(targetStage);
		this.targetStage = targetStage;
	}

	/**
	 * localOuput直接通过targetStage获取目标端的stage并写入数据
	 */
	@SuppressWarnings("unchecked")
	@Override
	public IChannelFuture<T> writeAndFlush(IEvent<T> event) {
		try {
			if (!this.canWrite()) {
				return (IChannelFuture<T>) ChannelClassUtil
						.getInstance(ChannelClassUtil.CAN_NOT_WRITE_CHANNEL_FUTURE);
			}

			if (targetStage == null || !targetStage.isAlive()) {
				reConnect();
			}
			// 加入对目标不能read的判断;
			if (!targetStage.getChannelContainer().getInput().canRead()) {
				// 阻塞
				synchronized(targetStage.getChannelContainer().getInput()){
					targetStage.getChannelContainer().getInput().wait();
				}
			}
			//this.getLogger().debug(this.getName()+" write msg!");
			return targetStage.getInputExecutor().execute(
					new ExecutorTask<T>(targetStage.getHandlerChain(),
							new DefaultEvent<T>(event.getMsg(), null,
									ChannelEventType.ChannelRead, event
											.getStringProps()), targetStage
									.getContext()));
		} catch (Exception ex) {
			return (IChannelFuture<T>) ChannelClassUtil.getInstance(
					ChannelClassUtil.ERROR_CHANNEL_FUTURE,
					new CanNotWriteChannelException(NULL_STRING, ex));
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public void connect(INetAddress localAddress) {
		AssertUtil.assertNull(localAddress);
		AssertUtil.assertNull(localAddress.getHostName());
		setAddress(localAddress);
		setTargetStage((IChannelStage<T>) LocalNamingContext.getInstance()
				.lookUp(getAddress().getHostName()));
		// 如果从LocalNamingContext中查询不到targetStage,说明stage不存在或者还没有注册成功,
		// 2014-8-1修改为这里就先不再判断,便于初始化顺序好控制.
		// AssertUtil.assertNull(getTargetStage());
	}

	private boolean tryToTestTargetIsAlive() {
		// 默认重试10次看目标stage是否处于活动状态
		for (int i = 0; i < getTimes(); i++) {
			getLogger().debug("try to connect target stage!");

			if (getTargetStage().isAlive()) {
				return true;
			}
			try {
				Thread.sleep(getInterval());
			} catch (InterruptedException e) {
			}
		}
		return false;
	}

	public void reConnect() {
		// 如果再重试连接后发现targetstage任然为null,那么说明targetstage没有或者洗白
		// 在重试getTimes次获取.
		for (int i = 0; i < getTimes(); i++) {
			connect(getAddress());
			if (this.getTargetStage() != null)
				break;
			try {
				Thread.sleep(getInterval());
			} catch (InterruptedException e) {
			}
		}
		//如果重试后亦然为null直接抛错;
		if(this.getTargetStage() ==null){
			throw new ChannelException("the target stage ["+getAddress().getHostName()+"] not found!");
		}
		if(!tryToTestTargetIsAlive()){
			throw new ChannelException("the target stage ["+getAddress().getHostName()+"] is not alive!");
		}
	}

	@Override
	public void disConnect() {
		targetStage = null;
		setWrite(false);
	}
}
