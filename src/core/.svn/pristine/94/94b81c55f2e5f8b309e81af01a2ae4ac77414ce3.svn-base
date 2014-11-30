package org.jdataex.channel;

import org.jdataex.channel.exception.ExceptionFixer;
import org.jdataex.channel.future.IChannelFuture;

public class DefaultStageContext<T> implements IStageContext<T>{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -4297680420544013532L;
	private IChannelStage<T> stage;
	
	public DefaultStageContext(IChannelStage<T> stage){
		this.stage = stage;
	}

	@Override
	public IChannelFuture<T>[] writeMsg(T msg, String... channelOutputName) {
		return stage.writeMsg(msg, channelOutputName);
	}

	@Override
	public ExceptionFixer getHandlerFixer() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getCurrentStageName() {
		return stage.getName();
	}

	@Override
	public IChannelContainer<T> getContainer() {
/*		StackTraceElement stack[] = Thread.currentThread().getStackTrace();
		for (StackTraceElement ste:stack){
			if(ste.getClassName().contains("org.jdataex.channel.executor")){
				return stage.getChannelContainer();
			}
		}
		return null;
		*/
		return stage.getChannelContainer();
	}

}
