package org.jdataex.channel.future;

import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.exception.BaseNestedException;

public class TrueChannelFuture<T> implements IChannelFuture<T>{

	@Override
	public boolean isSuccess() {
		return true;
	}

	@Override
	public BaseNestedException error() {
		return null;
	}

	@Override
	public IEvent<T> event() {
		return null;
	}

}
