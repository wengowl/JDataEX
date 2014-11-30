package org.jdataex.channel;

import java.io.Serializable;

import org.jdataex.channel.exception.ExceptionFixer;
import org.jdataex.channel.future.IChannelFuture;

/**
 * @author Administrator
 *
 * @param <T>
 */
public interface IStageContext<T> extends Serializable {

	/**
	 * 将数据写入channel,系统将不会独立开放channel对象用于数据写入.写入操作都必须
	 * 通过channelStage完成.
	 * @param obj  
	 * @param channelOutputName 如果有多个接收端(channelOutput),可以指定需要写入的
	 * 接收端,如果只有一个接收端,可以写null
	 * @return {@link IChannelFuture}
	 */
	public IChannelFuture<T>[] writeMsg(T msg,String... channelOutputName);
	
	
	/**
	 * 得到当前stage名称
	 * @return
	 */
	public String getCurrentStageName();
	/**
	 * 
	 * @return {@linkExceptionFixer}
	 */
	public ExceptionFixer getHandlerFixer();
	
	/**
	 * 得到channelContainer,这个方法只能在task中调用,否则返回null.
	 * @return
	 */
	public IChannelContainer<T> getContainer();
	
}
