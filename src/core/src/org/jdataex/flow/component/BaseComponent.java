package org.jdataex.flow.component;

import org.jdataex.core.InitializationException;
import org.jdataex.core.card.GUIC;
import org.jdataex.engine.config.ComponentItem;
import org.jdataex.util.logger.ILoggable;
import org.jdataex.util.logger.ILogger;
import org.jdataex.util.logger.LoggerFactory;

public abstract class BaseComponent implements IComponent ,ILoggable{

	private ILogger logger;
	private GUIC guic = new GUIC();
	
	@Override
	public void initConfig(ComponentItem item) throws InitializationException{
		this.guic = new GUIC(item.getId());
	}
	
	@Override
	public ILogger getLogger() {
		if(null == logger){
			return LoggerFactory.getDefaultLogger();
		}
		return logger;
	}

	@Override
	public void setLogger(ILogger logger) {
		this.logger = logger;
	}
	
	@Override
	public GUIC getGUIC() {
		return guic;
	}

	@Override
	public void setGUIC(GUIC guic) {
		this.guic = guic;
	}
}
