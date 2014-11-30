package org.jdataex.channel.future;

import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.exception.BaseNestedException;

public class ErrorChannelFuture<T> implements IChannelFuture<T>{
	
	BaseNestedException error;
	
	public ErrorChannelFuture(){
		
	}
	
	public ErrorChannelFuture(BaseNestedException e){
		this.error = e;	
	}

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