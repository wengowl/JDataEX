package org.jdataex.channel.exception;


public class BaseNestedException extends RuntimeException{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2208063784819551892L;
	
	public BaseNestedException(String msg){
		super(msg);
	}
	
	public BaseNestedException(String msg,Throwable cause){
		super(msg+"   "+cause.getMessage(),cause);
	}
	
}