package org.jdataex.channel.future;

import org.jdataex.channel.event.IFuture;
import org.jdataex.monitor.IMonitor;
/**
 * channel操作返回对象,可以注册监听,当发生错误的时候将消息发给指定
 * {@link IMonitor}处理
 * @author chaos
 *
 */
public interface IChannelFuture<T> extends IFuture<T>{
	
}
