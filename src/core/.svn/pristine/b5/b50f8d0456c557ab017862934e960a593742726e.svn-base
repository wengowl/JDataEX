package org.jdataex.channel.tlq;

import static org.jdataex.channel.common.DefaultValues.DEFAULT_QCU_NAME;
import static org.jdataex.channel.common.DefaultValues.DEFAULT_TLQ_WAIT_INTERVAL;
import static org.jdataex.channel.common.DefaultValues.TLQ_FILE;
import static org.jdataex.channel.common.DefaultValues.TLQ_FILE_SIGN;
import static org.jdataex.channel.common.DefaultValues.TLQ_MSG;

import org.jdataex.channel.IChannelInput;
import org.jdataex.channel.common.ChannelEventType;
import org.jdataex.channel.common.DefaultValues;
import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.exception.BaseError;
import org.jdataex.channel.exception.CanNotConnectChannelException;
import org.jdataex.channel.exception.CanNotDisConnectChannelException;
import org.jdataex.channel.net.INetAddress;
import org.jdataex.channel.util.ObjectAndByte;
import org.jdataex.util.AssertUtil;

import com.tongtech.tlq.base.TlqConnContext;
import com.tongtech.tlq.base.TlqConnection;
import com.tongtech.tlq.base.TlqException;
import com.tongtech.tlq.base.TlqMessage;
import com.tongtech.tlq.base.TlqMsgOpt;

/**
 * tlq input类
 * 
 * @author chaos
 * 
 * @param <T>
 */
public class TLQChannelInput<T> extends BaseTLQChannelInput<T> implements
		IChannelInput<T> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3730129133325509488L;

	public TLQChannelInput(String name, int type, String qcuName,
			String queueName) {
		super(name);
		AssertUtil.assertNullOrBlank(qcuName);
		AssertUtil.assertNullOrBlank(queueName);
		assertTLQMsgType(type);
		setType(type);
		setQcuName(qcuName);
		setQueueName(queueName);
	}

	public TLQChannelInput(String name, String qcuName, String queueName) {
		this(name, TLQ_MSG, qcuName, queueName);
	}

	public TLQChannelInput(String name, String queueName) {
		this(name, TLQ_MSG, DEFAULT_QCU_NAME, queueName);
	}

	@Override
	public void bind(INetAddress address) {
		reConnect(address);
	}

	@Override
	public boolean doReadMsg(IEvent<T> event) {

		if (canRead()) {
			if (event == null)
				return false;

			TlqMessage msgInfo = new TlqMessage();
			TlqMsgOpt msgOpt = new TlqMsgOpt();

			msgOpt.QueName = this.getQueueName();
			msgOpt.WaitInterval = DEFAULT_TLQ_WAIT_INTERVAL;
			// 用户确认模式
			msgOpt.OperateType = TlqMsgOpt.TLQOT_GET;
			try {
				// getQcu().txBegin();
				getQcu().getMessage(msgInfo, msgOpt);
			} catch (TlqException e) {
				// tlq获取消息错误,重试连接
				// 如果是超时未获取到消息直接返回false
				if (e.getTlqErrno() == DefaultValues.NO_MSG_IN_QUEUE) {
					getLogger().debug(
							"no msg in queue[" + getQcuName() + "] this time");
					return false;
				}
				e.printStackTrace();
				getLogger().error(e.getMessage());
				if (DefaultValues.isHaveErrorNumber(e.getTlqErrno()))
					reConnect(getAddress());
				return false;
			}
			try {
				switch (getType()) {
				case TLQ_MSG:
					getBuffMsg(msgInfo, event);
					break;
				case TLQ_FILE:
					getFileMsg(msgInfo, event);
					break;
				default:
					return false;
				}
			} catch (Exception e) {
				e.printStackTrace();
				this.getLogger().error(e.getMessage());
				return false;
			}
			return true;
		} else {
			wait2Read();
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	private void getBuffMsg(TlqMessage msgInfo, IEvent<T> event) {
		event.setEventType(ChannelEventType.ChannelRead);
		event.setMsg((T) ObjectAndByte.toObject(msgInfo.getMsgData()));
		event.setProps(null);
		event.setTarget(null);
	}

	private void getFileMsg(TlqMessage msgInfo, IEvent<T> event) {
		event.setEventType(ChannelEventType.ChannelRead);
		event.setMsg(null);
		event.setProps(TLQ_FILE_SIGN + "=" + new String(msgInfo.getMsgData()));
		event.setTarget(null);
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
			setQcu(getTlqConnection().openQCU(getQcuName()));
			setRead(true);
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
				if (getTlqConnection() != null)
					closeTlq();
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

	public void commit() {
		try {
			this.getQcu().txCommit();
		} catch (TlqException e) {
			e.printStackTrace();
		}
	}

	public void beginTran() {
		try {
			this.getQcu().txBegin();
		} catch (TlqException e) {
			e.printStackTrace();
		}
	}

	public void rollBack() {
		try {
			this.getQcu().txRollback();
		} catch (TlqException e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			AssertUtil.assertNull(
					"tlq connecion is null maby not do connect() methrod!",
					getTlqConnection());

			AssertUtil.assertNull(
					"tlq qcu is null maby not do connect() methrod!", getQcu());

		} catch (Exception e) {
			throw new CanNotDisConnectChannelException(e);
		}
		closeTlq();
		// 一定要设置是否读
		setRead(false);
	}

	private void closeTlq() {
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
	}
}
