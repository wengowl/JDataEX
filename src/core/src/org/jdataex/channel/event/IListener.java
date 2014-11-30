package org.jdataex.channel.event;

import org.jdataex.monitor.IMonitor;

public interface IListener<T> {
	
	public abstract IFuture<T> doWork(IEvent<T> event);
	
	public abstract IMonitor getMonitor();
	
}
