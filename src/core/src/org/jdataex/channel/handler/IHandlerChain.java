package org.jdataex.channel.handler;

import java.io.Serializable;

import org.jdataex.channel.IStageContext;
import org.jdataex.channel.common.ChannelEventType;
import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.exception.HandlerException;


/**
 * handler连接接口
 * @author chaos
 *
 */
public interface IHandlerChain<T> extends Serializable{
	
	/**
	 * 设置关联的IStageContext
	 */
	public void setContext(IStageContext<T> context);
	
	/**
	 * 返回所有handler
	 * @return
	 */
	public Object[] getAllHandlers();
	
	/**
	 * 返回所有业务类型的handler
	 * @return
	 */
	public Object[] getAllBusinessHandlers();
	
	/**
	 * 返回所有属于系统类型的handler
	 * @return
	 */
	public Object[] getAllSystemHandlers();
	
	/**
	 * 删除handler
	 * @param handler
	 * @return
	 */
	public boolean removeHandler(IHandler<T> handler);
	
	/**
	 * 在链表头添加Handler<br>
	 * @param {@link IHandler}
	 * @return
	 */
	public void addHead(IHandler<T> handler); 
	
	/**
	 * 在链表尾添加Handler<br>
	 * @param handler
	 * @return
	 */
	public void addTail(IHandler<T> handler);
	
	/**
	 * 采用链表的方式执行所有handler,根据event执行handler的不同方法
	 * @param msg  具体的消息
	 * @param type {@link ChannelEventType} 事件类型 
	 * @throws Exception
	 */
	public void executeHandlers(IEvent<T> event) throws HandlerException;
	
}
