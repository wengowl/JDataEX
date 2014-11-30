package org.jdataex.channel.event;

import org.jdataex.channel.common.ChannelEventType;


/**
 * 事件类,没啥好说的
 * @author chaos
 *
 * @param <T>
 */
public interface IEvent<E> {
	
	/**
	 * 返回事件类型
	 * @return
	 */
	public ChannelEventType getEventType();
	
	public void setEventType(ChannelEventType eventType);
	
	/**
	 * 得到事件文本消息,格式
	 * xxx=xxx;xxx2=xxx;xxx3=xxx
	 * 采用;隔开
	 * @return
	 */
	public String getStringProps();
	
	public void setProps(String props);
	
	/**
	 * 返回产生事件的目标对象,或者处理对象
	 * @return
	 */
	public Object getTargetObject();
	
	public void setTarget(Object target);
	
	/**
	 * 返回具体的消息
	 * @return
	 */
	public E getMsg();
	
	public void setMsg(E msg);
}
