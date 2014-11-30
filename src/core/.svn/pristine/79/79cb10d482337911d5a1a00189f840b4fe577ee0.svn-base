package org.jdataex.flow.controller;

import java.util.Map;

import org.jdataex.channel.IChannelStage;
import org.jdataex.core.card.GUIC;
import org.jdataex.core.card.IGUICable;
import org.jdataex.flow.component.IComponent;
import org.jdataex.flow.handler.IComponentHandler;
import org.jdataex.flow.row.IRowSet;
import org.jdataex.flow.runner.IComponentRunner;

public interface IComponentController extends IGUICable {

	public abstract IComponentHandler addComponentHanlder(
			IComponentHandler handler);
	
	public abstract IComponent addComponent(
			IComponent component);
	
	public abstract IComponent getComponent(String id);

	public abstract boolean notifyRunning(IRowSet rowSet)
			throws ControllerException;

	public abstract void setChannelStages(Map<String, IChannelStage<IRowSet>> channelStages);

	public abstract Map<String, IChannelStage<IRowSet>> getChannelStages();

	public abstract void setEntryChannelStage(IChannelStage<IRowSet> entryChannelStage);

	public abstract IChannelStage<IRowSet> getEntryChannelStage();

}
