package org.jdataex.channel.tlq;

import static org.jdataex.channel.common.DefaultValues.DEFAULT_QCU_NAME;
import static org.jdataex.channel.common.DefaultValues.TLQ_FILE;
import static org.jdataex.channel.common.DefaultValues.TLQ_FILE_SIGN;
import static org.jdataex.channel.common.DefaultValues.TLQ_MSG;
import static org.jdataex.channel.util.ChannelClassUtil.ERROR_CHANNEL_FUTURE;
import static org.jdataex.channel.util.ChannelClassUtil.TRUE_CHANNEL_FUTURE;

import org.jdataex.channel.IChannelOutput;
import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.exception.BaseError;
import org.jdataex.channel.exception.BaseNestedException;
import org.jdataex.channel.exception.CanNotConnectChannelException;
import org.jdataex.channel.exception.CanNotDisConnectChannelException;
import org.jdataex.channel.exception.CanNotWriteChannelException;
import org.jdataex.channel.exception.NoMessageTypeException;
import org.jdataex.channel.future.IChannelFuture;
import org.jdataex.channel.net.INetAddress;
import org.jdataex.channel.util.ChannelClassUtil;
import org.jdataex.channel.util.EventStringPropsUtil;
import org.jdataex.channel.util.ObjectAndByte;
import org.jdataex.util.AssertUtil;

import com.tongtech.tlq.base.TlqConnContext;
import com.tongtech.tlq.base.TlqConnection;
import com.tongtech.tlq.base.TlqException;
import com.tongtech.tlq.base.TlqMessage;
import com.tongtech.tlq.base.TlqMsgOpt;

/**
 * 基于TLQ的本地消息发送channelInput,据研发确认,本地接口单队列一个TLQConnection和<br>
 * 多个TLQConnection发消息性能几乎相同,所以,tlqChannelInput内部只需要有一个<br>
 * TLQConnection就行了,支持断网重连tlq,tlq重启重连,支持文件和buffer消息<br>
 * 不管传入的buffer消息为哪种对象,统一转换为byte[]进行传输.
 * 
 * @author chaos
 * 
 * @param <T>
 */
public class TLQChannelOutput<T> extends BaseTLQChannelOutput<T> implements
		IChannelOutput<T>, Runnable {

	private boolean autoReConnect;

	private Thread autoReConnectThread;

	public boolean isAutoReConnect() {
		return autoReConnect;
	}

	public void setAutoReConnect(boolean autoReConnect) {
		this.autoReConnect = autoReConnect;
	}

	public TLQChannelOutput(String name, int type, String qcuName,
			String queueName, boolean autoReConnect) {
		super(name);
		AssertUtil.assertNullOrBlank(qcuName);
		AssertUtil.assertNullOrBlank(queueName);
		assertTLQMsgType(type);
		setType(type);
		setQcuName(qcuName);
		setQueueName(queueName);
		setAutoReConnect(autoReConnect);
		autoReConnectThread = new Thread(this);
	}

	public TLQChannelOutput(String name, int type, String qcuName,
			String queueName) {
		this(name, type, qcuName, queueName, false);
	}

	public TLQChannelOutput(String name, String qcuName, String queueName) {
		this(name, TLQ_MSG, qcuName, queueName, false);
	}

	public TLQChannelOutput(String name, String queueName) {
		this(name, TLQ_MSG, DEFAULT_QCU_NAME, queueName, false);
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 8159396668540542096L;

	@SuppressWarnings("unchecked")
	@Override
	public IChannelFuture<T> writeAndFlush(IEvent<T> event) {
		try {
			// 如果不可写直接抛错,方法将返回错误Future
			AssertUtil.assertTrue("", this.canWrite());
			switch (getType()) {
			case TLQ_MSG:
				putBuffMsg(event);
				break;
			case TLQ_FILE:
				putFileMsg(event);
				break;
			default:
				return (IChannelFuture<T>) ChannelClassUtil
						.getInstance(
								ERROR_CHANNEL_FUTURE,
								new NoMessageTypeException(
										"the message type is error only byteBuff or file"));
			}

			return (IChannelFuture<T>) ChannelClassUtil
					.getInstance(TRUE_CHANNEL_FUTURE);

		} catch (BaseNestedException e) {
			e.printStackTrace();
			return (IChannelFuture<T>) ChannelClassUtil.getInstance(
					ERROR_CHANNEL_FUTURE, e);
		} catch (Exception e) {
			e.printStackTrace();
			return (IChannelFuture<T>) ChannelClassUtil.getInstance(
					ERROR_CHANNEL_FUTURE, new CanNotWriteChannelException(e));
		}
	}

	@Override
	/**
	 * 连接本地的tlq或者远程的tlq,建议一般情况下连接本地的tlq 进行消息发送,如果是本地
	 * 的tlq,remoteAddress直接传入 null
	 */
	public void connect(INetAddress remoteAddress) {
		reConnect(remoteAddress);
		if (isAutoReConnect()) {
			// 启动线程执行自动重连功能
			if(!autoReConnectThread.isAlive()&&!autoReConnectThread.isInterrupted())
				autoReConnectThread.start();
		}
	}

	public void connectOnce(INetAddress remoteAddress) {
		// 如果TLQ版本或者环境变量不对,将抛出 java.lang.UnsatisfiedLinkError异常
		// 如:32jdk位用64位TLQ,64位JDK用32位TLQ
		// 如:环境变量不对 no jtlq_client in java.library.path
		try {
			setAddress(remoteAddress);
			if (remoteAddress == null) {
				setTlqConnection(new TlqConnection());
			} else {
				TlqConnContext context = new TlqConnContext();
				context.HostName = remoteAddress.getHostName();
				context.ListenPort = remoteAddress.getPort();
				setTlqConnection(new TlqConnection(context));
			}
			this.setQcu(getTlqConnection().openQCU(getQcuName()));
			this.setWrite(true);
		} catch (UnsatisfiedLinkError error) {
			throw new BaseError(error);
		} catch (TlqException e) {
			throw new CanNotConnectChannelException(e);
		}
	}

	/**
	 * 只捕获可以重试的错误,其他环境类错误不捕获,直接抛出,意味着如果TLQ环境本身就有问题将不会重试
	 * 
	 * @param remoteAddress
	 */
	public void reConnect(INetAddress remoteAddress) {
		for (int i = 1; i <= getTimes(); i++) {
			try {
				connectOnce(remoteAddress);
				break;
			}// 只捕获可以重试的错误,其他环境类错误不捕获,直接抛出
			catch (CanNotConnectChannelException e) {
				getLogger().info(
						"can not connect [" + remoteAddress
								+ "] try to connect [" + i + "] times!");
				try {
					Thread.sleep(getInterval());
				} catch (InterruptedException e1) {
				}
				if (i >= getTimes())
					throw e;
				continue;
			}
		}
	}

	@Override
	public void disConnect() {
		try {
			autoReConnectThread.interrupt();
			
			AssertUtil.assertNull(
					"tlq connecion is null maby not do connect() methrod!",
					getTlqConnection());

			AssertUtil.assertNull(
					"tlq qcu is null maby not do connect() methrod!", getQcu());

		} catch (Exception e) {
			throw new CanNotDisConnectChannelException(e);
		}
		try {
			getQcu().close();
		} catch (TlqException e) {
			e.printStackTrace();
		}
		try {
			getTlqConnection().close();
		} catch (TlqException e) {
			e.printStackTrace();
		}
		// 一定要设置是否能写
		setWrite(false);
	}

	private void putBuffMsg(IEvent<T> event) throws TlqException {

		TlqMessage msgInfo = new TlqMessage();
		TlqMsgOpt msgOpt = new TlqMsgOpt();
		msgOpt.QueName = getQueueName(); // 队列名

		byte[] msgContent = ObjectAndByte.toByteArray(event.getMsg()); // 消息内容

		msgInfo.MsgType = TlqMessage.BUF_MSG; // 消息类型
		msgInfo.MsgSize = msgContent.length; // 消息大小
		msgInfo.setMsgData(msgContent);
		msgInfo.Persistence = TlqMessage.TLQPER_Y; // 持久性
		msgInfo.Priority = TlqMessage.TLQPRI_NORMAL; // 优先级
		msgInfo.Expiry = -1; // 生命周期

		getQcu().putMessage(msgInfo, msgOpt);

	}

	private void putFileMsg(IEvent<T> event) throws TlqException {
		String file = EventStringPropsUtil
				.getProperties(event.getStringProps()).get(TLQ_FILE_SIGN);
		AssertUtil.assertNullOrBlank(file);

		TlqMessage msgInfo = new TlqMessage();
		TlqMsgOpt msgOpt = new TlqMsgOpt();
		msgOpt.QueName = getQueueName();
		msgOpt.RemoveFileFlag = TlqMsgOpt.REMOVEFILE; // 是否删除源文件标志

		msgInfo.MsgType = TlqMessage.FILE_MSG;
		msgInfo.MsgSize = file.getBytes().length;// 文件必须在本地
		msgInfo.setMsgData(file.getBytes());
		msgInfo.Persistence = TlqMessage.TLQPER_Y;// 持久
		msgInfo.Priority = TlqMessage.TLQPRI_NORMAL;
		msgInfo.Expiry = -1;

		getQcu().putMessage(msgInfo, msgOpt);
	}

	private void testAutoReconnectMsg() throws TlqException {
		getLogger().debug("test connect...!");
		
		TlqMessage msgInfo = new TlqMessage();
		TlqMsgOpt msgOpt = new TlqMsgOpt();
		msgOpt.QueName = "channelevent"; // 队列名

		byte[] msgContent = ObjectAndByte.toByteArray("test"); // 消息内容

		msgInfo.MsgType = TlqMessage.BUF_MSG; // 消息类型
		msgInfo.MsgSize = msgContent.length; // 消息大小
		msgInfo.setMsgData(msgContent);
		msgInfo.Persistence = TlqMessage.TLQPER_Y; // 持久性
		msgInfo.Priority = TlqMessage.TLQPRI_NORMAL; // 优先级
		msgInfo.Expiry = 10; // 生命周期
		
		getQcu().putMessage(msgInfo, msgOpt);
		
        TlqMessage msgInfo2 = new TlqMessage();
        TlqMsgOpt msgOpt2 = new TlqMsgOpt();
        
        msgOpt2.QueName = "channelevent";
        msgOpt2.WaitInterval = 10;
        
        getQcu().getMessage(msgInfo2, msgOpt2);
		
		getLogger().debug("test connect ok!");
	}

	@Override
	/**
	 * 自动重连tlqConnect,如果遇到TLQ环境错误等类型的问题,直接关闭重试<br>
	 * 首先判断连接是否正常是否能发生消息如果不能才重连;
	 */
	public void run() {
		while (!autoReConnectThread.isInterrupted()) {
			getLogger().debug("execute auto reConnect");
			try {
				Thread.sleep(getInterval());
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			try {
				testAutoReconnectMsg();
			} catch (TlqException e) {
				reConnect(getAddress());
			}
		}
	}
}
