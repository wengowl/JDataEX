package org.jdataex.flow;

import java.util.Map;

import org.jdataex.core.card.GUIC;
import org.jdataex.flow.controller.ControllerException;
import org.jdataex.flow.controller.IComponentController;
import org.jdataex.flow.row.IRowSet;

public interface IFlow {

	public abstract Map<GUIC,IComponentController> getComponentControllers();
	
	public abstract IComponentController getComponentController(GUIC guic);

	public abstract void putComponentController(IComponentController controller);

	public abstract IComponentController getComponentControllerByID(String id);

	public abstract IComponentController getFirstComponentController();

	public abstract void notifyRunning(IRowSet rowSet) throws ControllerException;

	public abstract void setId(String id);

	public abstract String getId();

}
