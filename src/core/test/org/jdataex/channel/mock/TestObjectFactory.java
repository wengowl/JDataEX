package org.jdataex.channel.mock;

import org.jdataex.channel.common.ChannelEventType;
import org.jdataex.channel.event.DefaultEvent;
import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.executor.ExecutorTask;
import org.jdataex.channel.executor.ITask;
import org.jdataex.channel.handler.IHandlerChain;

public final class TestObjectFactory {
	
	public static IEvent<?> getWriteEvent(){
		return new DefaultEvent<String>("this is a test", null,
				ChannelEventType.ChannelWrite, null);
	}
	
	public static IEvent<?> getReadEvent(){
		return new DefaultEvent<String>("this is a test", null,
				ChannelEventType.ChannelRead, null);
	}
	
	public static IEvent<?> getBindEventMock(){
		return new DefaultEvent<String>("this is a test", null,
				ChannelEventType.ChannelBind, null);
	}
	
	public static IEvent<?> getActiveEvent(){
		return new DefaultEvent<String>("this is a test", null,
				ChannelEventType.channelActive, null);
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public static ITask<?> getTask(IHandlerChain<?> chain,IEvent<?> event){
		return new ExecutorTask(chain, event, null);
	}
	
}
