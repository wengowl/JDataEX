package org.jdataex.channel.local;

import org.jdataex.channel.BaseAbstractChannelInput;
import org.jdataex.channel.IChannelInput;
import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.net.INetAddress;

/**
 * 本地input本身基本没什么用处,上一节组件直接通过关联Executor来执行消息,channelOutput
 * 的write方法通过本地方式查找到下一级channelExecutor,再调用read的方法直接执行消息.不采用
 * 中间queue的方式处理,这么做减少内存消耗,提高处理性能.
 * 
 * @author chaos
 * 
 */
public class LocalChannelInput<T> extends BaseAbstractChannelInput<T> implements IChannelInput<T> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8359901304334637264L;

	public LocalChannelInput(String name) {
		super(name);
	}

	/**
	 * 本地channelInput绑定
	 */
	@Override
	public void bind(INetAddress address) {

	}

	/**
	 * 针对于本地方式来说,doReadMsg本身没有设么用处 为了调用的时候减少cpu利用率,直接wait
	 */
	@Override
	public boolean doReadMsg(IEvent<T> event) {
		try {
			while (!this.isClosed()) {
				synchronized (this) {
					// System.out.println("wait");
					this.wait();
					getLogger().debug("wait over...do soming");
				}
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public void close() {
		super.close();
		synchronized (this) {
			this.notifyAll();
		}
	}

}
