package org.jdataex.flow.handler;

import org.jdataex.core.card.GUIC;
import org.jdataex.flow.component.IComponent;
import org.jdataex.util.logger.ILogger;
import org.jdataex.util.logger.LoggerFactory;

public abstract class BaseComponentHandler implements IComponentHandler {

	private ILogger logger;
	
	private IComponent component;

	private GUIC guic;
	
	public BaseComponentHandler(IComponent component, GUIC guidc) {
		super();
		this.component = component;
		this.guic = guidc;
	}

	public BaseComponentHandler() {
		super();
	}

	@Override
	public IComponent getComponent() {
		return component;
	}

	@Override
	public GUIC getGUIC() {
		return guic;
	}

	@Override
	public void setGUIC(GUIC guic) {
		this.guic = guic;
	}

	public void setComponent(IComponent component) {
		this.component = component;
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

}