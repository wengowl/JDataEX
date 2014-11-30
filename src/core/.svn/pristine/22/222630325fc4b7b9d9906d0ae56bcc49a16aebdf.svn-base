package org.jdataex.channel.mock;

import org.jdataex.channel.IStageContext;
import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.handler.IHandler;

public class MockHandler<T> implements IHandler<T> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2997171212210000575L;

	@Override
	public void channelActive(IStageContext<T> context, IEvent<T> event)
			throws Exception {
		System.out.println(context.getCurrentStageName() + "  channelActive..."
				+ event.getMsg());
	}

	@Override
	public void channelBind(IStageContext<T> context) throws Exception {
		System.out.println(context.getCurrentStageName() + " channelBind...");
	}

	@Override
	public void channelRead(IStageContext<T> context, IEvent<T> event)
			throws Exception {
		// Thread.sleep(20);
		 System.out.println(context.getCurrentStageName()+" channelRead..."+event.getMsg());
		 System.out.println(context.getCurrentStageName()+" channelRead... props: "+event.getStringProps());
		if(event.getMsg() != null&&event.getMsg().toString().indexOf("badread") != -1){
			throw new Exception("bad read msg!");
		}
	}

	@Override
	public void channelWrite(IStageContext<T> context, IEvent<T> event)
			throws Exception {
		//Thread.sleep(20);
/*		System.out.println(context.getCurrentStageName() + " channelWrite..."
				+ event.getMsg());*/
		if (event.getMsg() != null&&event.getMsg().toString().indexOf("error") != -1) {
			throw new Exception("bad write msg!");
		}
	}

}
