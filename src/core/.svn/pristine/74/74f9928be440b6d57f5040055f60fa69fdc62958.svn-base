package org.jdataex.channel;

import static org.jdataex.channel.common.DefaultValues.DEFAULT_CHANNEL_OUTPUT_RECONNECT_INTERVAL;
import static org.jdataex.channel.common.DefaultValues.DEFAULT_CHANNEL_OUTPUT_RECONNECT_TIMES;

import java.util.concurrent.atomic.AtomicBoolean;

import org.jdataex.channel.net.INetAddress;
import org.jdataex.util.AssertUtil;
import org.jdataex.util.logger.ILogger;
import org.jdataex.util.logger.LoggerFactory;

/**
 * 基本的channelInput抽象类,所有channelInput都继承这个方法.
 * 
 * @author chaos
 * 
 */
public abstract class BaseAbstractChannelInput<T> implements IChannelInput<T> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8478788747016952728L;

	private String name;

	private IChannelStage<T> stage;

	private ILogger logger;

	private int times = DEFAULT_CHANNEL_OUTPUT_RECONNECT_TIMES;

	private int interval = DEFAULT_CHANNEL_OUTPUT_RECONNECT_INTERVAL;

	/**
	 * 
	 */
	private AtomicBoolean read = new AtomicBoolean(true);

	private AtomicBoolean stopped = new AtomicBoolean(false);

	public BaseAbstractChannelInput(String name) {
		AssertUtil.assertNullOrBlank(name);
		setName(name);
		logger = LoggerFactory.getLogger(this.getName());
	}

	private INetAddress address;

	public INetAddress getAddress() {
		return address;
	}

	public void setAddress(INetAddress address) {
		this.address = address;
	}

	public ILogger getLogger() {
		return this.logger;
	}

	void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return this.name;
	}

	public boolean canRead() {
		return read.get();
	}

	public void setRead(boolean value) {
		read.set(value);
		if (value == true) {
			synchronized (this) {
				this.notifyAll();
			}
		}
	}

	public void wait2Read() {
		synchronized (this) {
			try {
				this.wait();
			} catch (InterruptedException e) {

			}
		}
	}

	public void registerStage(IChannelStage<T> stage) {
		AssertUtil.assertNull(stage);
		this.stage = stage;
	}

	public IChannelStage<T> getStage() {
		return stage;
	}

	public boolean isClosed() {
		return stopped.get();
	}

	public void close() {
		setRead(false);
		stopped.set(true);
	}

	public int getTimes() {
		return this.times;
	}

	public int getInterval() {
		return this.interval;
	}

}
