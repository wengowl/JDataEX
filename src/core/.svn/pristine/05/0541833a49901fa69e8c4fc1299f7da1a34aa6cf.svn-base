package org.jdataex.channel.mock;

import org.jdataex.channel.IStageContext;
import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.handler.ISystemHandler;

public class MockSystemHandler<T> implements ISystemHandler<T> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8503086776304358401L;

	@Override
	public void channelActive(IStageContext<T> context, IEvent<T> event)
			throws Exception {
		System.out.println(context.getCurrentStageName()+" sys channelActive..."+event.getMsg());

	}

	@Override
	public void channelBind(IStageContext<T> context) throws Exception {
		System.out.println(context.getCurrentStageName()+" sys channelBind...");
	}

	@Override
	public void channelRead(IStageContext<T> context, IEvent<T> event)
			throws Exception {
		//System.out.println(context.getCurrentStageName()+" sys channelRead..."+event.getMsg());
	}

	@Override
	public void channelWrite(IStageContext<T> context, IEvent<T> event)
			throws Exception {
		//System.out.println(context.getCurrentStageName()+" sys channelWrite..."+event.getMsg());
	}

}
