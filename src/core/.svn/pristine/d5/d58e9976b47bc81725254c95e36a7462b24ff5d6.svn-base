package org.jdataex.channel.event;

import org.jdataex.channel.common.ChannelEventType;

public class DefaultEvent<E> implements IEvent<E> {
	
	private ChannelEventType eventType;
	
	private E msg;

	public void setMsg(E msg) {
		this.msg = msg;
	}

	private Object target;
	
	private String props;
	
	public DefaultEvent(){
		
	}
	
	public DefaultEvent(E msg,Object target,ChannelEventType eventType,String props){
		this.eventType = eventType;
		this.msg = msg;
		this.target = target;
		this.props = props;
	}

	@Override
	public ChannelEventType getEventType() {
		return eventType;
	}

	@Override
	public String getStringProps() {
		return props;
	}

	@Override
	public Object getTargetObject() {
		return target;
	}

	@Override
	public E getMsg() {
		return msg;
	}
	
	public Object getTarget() {
		return target;
	}

	public void setTarget(Object target) {
		this.target = target;
	}

	public String getProps() {
		return props;
	}

	public void setProps(String props) {
		this.props = props;
	}

	public void setEventType(ChannelEventType eventType) {
		this.eventType = eventType;
	}

}
