package org.jdataex.channel.event;

import org.jdataex.channel.exception.BaseNestedException;


public interface IFuture<T> {

	/**
	 * 此方法必须是阻塞式的
	 * @return
	 */
	public boolean isSuccess();
		
	public BaseNestedException error();
	
	public IEvent<T> event();
	
}
