package org.jdataex.flow.component;

import java.util.ArrayList;
import java.util.List;

import org.jdataex.flow.handler.IComponentHandler;
import org.jdataex.flow.runner.IComponentRunner;

/**
 * 组件的连接相关信息。
 * @deprecated
 * 
 * @author TwelveFoldEr
 *
 */
public class ComponentLinkInfo implements IComponentLinkInfo {

	private IComponent component;
	private IComponentRunner runner;
	private IComponentHandler handler;
	
	private List<IComponent> nextComponents = new ArrayList<>();
	
	@Override
	public IComponent getComponent() {
		return component;
	}

	@Override
	public void setComponent(IComponent component) {
		this.component = component;
	}

	@Override
	public List<IComponent> getNextComponents() {
		return nextComponents;
	}

	public void setNextComponents(List<IComponent> nextComponents) {
		this.nextComponents = nextComponents;
	}
	
	@Override
	public void addNextComponent(IComponent component){
		this.nextComponents.add(component);
	}
	
	@Override
	public void removeNextComponent(int index){
		this.nextComponents.remove(index);
	}

	@Override
	public IComponentRunner getRunner() {
		return runner;
	}

	@Override
	public void setRunner(IComponentRunner runner) {
		this.runner = runner;
	}

	@Override
	public IComponentHandler getHandler() {
		return handler;
	}

	@Override
	public void setHandler(IComponentHandler handler) {
		this.handler = handler;
	}

}
