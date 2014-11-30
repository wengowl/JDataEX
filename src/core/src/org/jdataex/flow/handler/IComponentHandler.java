package org.jdataex.flow.handler;

import org.jdataex.core.InitializationException;
import org.jdataex.core.ReleaseException;
import org.jdataex.core.card.GUIC;
import org.jdataex.core.card.IGUICable;
import org.jdataex.flow.component.ComponentException;
import org.jdataex.flow.component.IComponent;
import org.jdataex.flow.runner.IComponentRunner;
import org.jdataex.util.logger.ILoggable;

public interface IComponentHandler extends IGUICable, ILoggable{

	public abstract void init() throws InitializationException;

	public abstract void execute() throws ComponentException;

	public abstract void release() throws ReleaseException;

	public abstract IComponent getComponent();

}
