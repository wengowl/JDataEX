package org.jdataex.channel.future;

import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.exception.BaseNestedException;
import org.jdataex.channel.executor.ITask;

/**
 * 默认的channelFuture实现
 * 
 * @author chaos
 * 
 */
public class DefaultChannelFuture<T> implements IChannelFuture<T> {

	private IEvent<T> event;

	private ITask<T> task;

	public DefaultChannelFuture(ITask<T> task) {
		this.task = task;
		event = task.getEvent();
	}

	@Override
	public boolean isSuccess() {
		synchronized (task) {
			while (true) {
				if(task.isCompleted()) break;
				try {
					task.wait();
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		}
		return task.isSuccessed();
	}

	@Override
	public BaseNestedException error() {
		this.isSuccess();
		return task.getException();
	}

	@Override
	public IEvent<T> event() {
		return event;
	}

}
