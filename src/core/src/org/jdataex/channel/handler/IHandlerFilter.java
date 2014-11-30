package org.jdataex.channel.handler;

import java.io.Serializable;

/**
 * handler过滤器，主要是有些业务并不需要全部的handler都处理消息，这个时候可以采用过滤区
 * 进行过滤，典型的业务就是
 * @author chaos
 *
 * @param <T>
 */
/**
 * @author Administrator
 *
 * @param <T>
 */
public interface IHandlerFilter<T> extends Serializable{

	/**
	 * 比较handler是否是符合要求。默认情况下所有业务handler都是针对channelInput的消息进行处理
	 * output都是将消息发送到对方stage的input中。
	 * @param handler
	 * @return
	 */
	public boolean accept(T handler);
	
}
