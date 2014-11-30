package org.jdataex.channel.exception;

import org.jdataex.channel.event.IEvent;

/**
 * 对异常进行处理的接口
 * @author chaos
 *
 */
public interface ExceptionFixer<T> {
	
	/**
	 * 修复异常事件
	 * @param 
	 */
	public boolean fix(IEvent<T> msg,BaseNestedException exception);
	
}
