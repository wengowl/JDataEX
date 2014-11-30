package org.jdataex.channel.exception;

import org.jdataex.channel.common.DefaultValues;

public class ChannelException extends BaseNestedException {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3068309377864642727L;

	public ChannelException(String msg) {
		super(msg);
	}

	public ChannelException(String msg,Throwable cause) {
		super(msg,cause);
	}
	
	public ChannelException(Throwable cause) {
		super(DefaultValues.NULL_STRING,cause);
	}

}
