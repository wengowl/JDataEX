package org.jdataex.channel.listener;

import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.event.IListener;

public interface IChannelListener extends IListener{
	
	public void doComplete(IEvent event);
}