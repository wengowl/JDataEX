package org.jdataex.channel.handler;

import java.io.Serializable;

import org.jdataex.channel.IStageContext;
import org.jdataex.channel.event.IEvent;

/**
 * Handler作为处理channel msg的类，定义了几种状态
 * 一般业务handler只需要实现channelRead方法就行了，在channelread方法中实现 往其他stage
 * write的逻辑。channelwrite是在写消息到其他stage的时候触发的方法。
 * 
 * @author chaos
 * 
 */
public abstract interface IHandler<T> extends Serializable {

	/**
	 * channel连接事件处理方法 output事件
	 * 
	 * @param pipe
	 * @param event
	 */
	public void channelActive(IStageContext<T> context, IEvent<T> event) throws Exception;

	/**
	 * inputChannel绑定事件触发的方法 input事件
	 * 
	 * @param pipe
	 */
	public void channelBind(IStageContext<T> context) throws Exception;

	/**
	 * inputChannel读取消息触发的方法。input事件
	 * 
	 * @param context
	 * @param event
	 */
	public void channelRead(IStageContext<T> context, IEvent<T> event) throws Exception;

	/**
	 * outputChannel写入消息时候触发的方法 output事件
	 * 
	 * @param context
	 * @param event
	 */
	public void channelWrite(IStageContext<T> context, IEvent<T> event) throws Exception;

}
