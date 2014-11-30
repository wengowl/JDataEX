package org.jdataex.flow;

import java.util.Map;

import org.jdataex.core.card.GUIC;
import org.jdataex.flow.controller.ControllerException;
import org.jdataex.flow.controller.IComponentController;
import org.jdataex.flow.row.IRowSet;
import org.jdataex.util.AssertUtil;
import org.jdataex.util.GUICUtil;
import org.jdataex.util.logger.ILoggable;
import org.jdataex.util.logger.ILogger;
import org.jdataex.util.logger.LoggerFactory;

public class Flow implements IFlow, ILoggable {

	private ILogger logger;
	private String id;
	private Map<GUIC, IComponentController> controllers;

	@Override
	public ILogger getLogger() {
		if (null == logger) {
			return LoggerFactory.getDefaultLogger();
		}
		return logger;
	}

	@Override
	public void setLogger(ILogger logger) {
		this.logger = logger;
	}

	public Flow(String id, Map<GUIC, IComponentController> controllers) {
		AssertUtil.assertNullOrBlank("Flow id is null.", id);
		AssertUtil.assertNull("Controllers is null.", controllers);
		
		this.id = id;
		this.controllers = controllers;
	}

	@Override
	public void putComponentController(IComponentController controller) {
		if (null != controller) {
			controllers.put(controller.getGUIC(), controller);
		}
	}

	@Override
	public IComponentController getComponentController(GUIC guic) {
		if (null != guic) {
			return controllers.get(guic);
		}
		return null;
	}

	@Override
	public void notifyRunning(IRowSet rowSet) throws ControllerException {
		for (IComponentController controller : this.controllers.values()) {
			this.getLogger().debug("{} running result is {}",
					controller.getGUIC().getName(),
					controller.notifyRunning(rowSet));
		}
	}

	@Override
	public Map<GUIC, IComponentController> getComponentControllers() {
		return controllers;
	}

	@Override
	public IComponentController getComponentControllerByID(String id) {
		return GUICUtil.getByID(controllers, id);
	}

	@Override
	public IComponentController getFirstComponentController() {
		for (IComponentController controller : this.controllers.values()) {
			return controller;
		}
		return null;
	}

	@Override
	public String getId() {
		return id;
	}

	@Override
	public void setId(String id) {
		this.id = id;
	}

}
