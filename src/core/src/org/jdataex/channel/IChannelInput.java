package org.jdataex.channel;

import java.io.Serializable;

import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.net.INetAddress;

/**
 * 收消息的channel接口,只负责收消息,如果要实现写操作请看{@link IChannelOutput}接口
 * @author chaos
 */
public interface IChannelInput<T> extends Serializable{
	
	
	/**
	 * 返回channelInput名称
	 * @return
	 */
	public String getName();
	
		
	/**
	 * 绑定地址启动服务
	 * @param {@link INetAddress}
	 */
	public void bind(INetAddress address);

	/**
	 * 管道是否可读，当没有消息或者管道关闭读取的时候不能读
	 * @return  true 可读 false 不可读
	 */
	public boolean canRead();
	
	/**
	 * 设置管道是否可读,通常在系统执行监控或者收到event指令的时候执行操作.
	 * @param value  true 可读  false 不可读
	 */
	public void setRead(boolean value);
	
	/**
	 * 读取消息，一般是一条一条的返回，返回类型根据具体的实现定义
	 * 如果为大文件消息，返回的对象是存储的文件路径
	 * 将数据参数空event填满.类似于buff的处理方式.
	 * 之所有这么设计,考虑到后续添加buffer比较方便些
	 * @return  void
	 */
	public boolean doReadMsg(IEvent<T> event);
	
	/**
	 * 关闭连接
	 */
	public void close();
	
	/**
	 * 将stage注册到内部,便于部分方法可能会调用stage内部方法;
	 * @param stage
	 */
	public void registerStage(IChannelStage<T> stage);
	
	public boolean isClosed();
	
}
