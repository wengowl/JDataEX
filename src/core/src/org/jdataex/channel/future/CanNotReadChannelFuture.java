package org.jdataex.channel.future;

import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.exception.BaseNestedException;
import org.jdataex.channel.exception.CanNotReadChannelException;

public class CanNotReadChannelFuture<T> implements IChannelFuture<T>{
	
	private BaseNestedException error = new CanNotReadChannelException("");

	@Override
	public boolean isSuccess() {
		return false;
	}

	@Override
	public BaseNestedException error() {
		return error;
	}

	@Override
	public IEvent<T> event() {
		return null;
	}

}
