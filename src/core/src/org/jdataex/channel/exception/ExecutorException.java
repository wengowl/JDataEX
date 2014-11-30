package org.jdataex.channel.exception;

public class ExecutorException extends BaseNestedException{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1972366671005953293L;

	public ExecutorException(String msg, Throwable cause) {
		super(msg, cause);
	}
	
	public ExecutorException(String msg) {
		super(msg);
	}
	
}
