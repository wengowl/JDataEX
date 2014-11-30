package org.jdataex.channel;

import java.io.Serializable;

import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.future.IChannelFuture;
import org.jdataex.channel.net.INetAddress;

/**
 * 由于发消息
 * @author chaos
 *
 */
public interface IChannelOutput<T> extends Serializable{
	
	/**
	 * 返回channelOutput名称
	 * @return
	 */
	public String getName();
	
	/**
	 * 是否可写，如果消息队列满了或者管道关闭写功能时不能写
	 * @return  true 可写 false 不可写
	 */
	public boolean canWrite();
	
	/**
	 * 设置管道是否可写,通常在系统执行监控或者收到event指令的时候执行操作.
	 * @param value  true 可读  false 不可读
	 */
	public void setWrite(boolean value);
	
	
	/**
	 * 将消息写入channel并刷新，object必须包含消息类型说明
	 * File 文件类型
	 * Msg  消息类型
	 * @param msg
	 * @return {@link IChannelFuture} 返回回执信息。
	 */
	public IChannelFuture<T> writeAndFlush(IEvent<T> event);
	
	/**
	 * 连接到其他{@link IChannelStage} 的{@link IChannelInput}<br>
	 * 如果连接失败直接抛出异常
	 * @param remoteAddress 
	 */
	public void connect(INetAddress remoteAddress);
	
	/**
	 * 关闭指定的连接
	 * @param remoteAddress
	 */
	public void disConnect();
	
	/**
	 * 将stage注册到内部,便于部分方法可能会调用stage内部方法;
	 * @param stage
	 */
	public void registerStage(IChannelStage<T> stage);
	
	/**
	 * 设计断线重连次数和重连间隔时间,如果没有设置,默认间隔2000毫米,重试3次
	 * @param times  重试次数
	 * @param interval  间隔时间
	 */
	public void setReConnectTimes(int times,int interval);
	
}
