package org.jdataex.flow.controller;

import java.util.HashMap;
import java.util.Map;

import org.jdataex.channel.DefaultChannelContainer;
import org.jdataex.channel.DefaultChannelStage;
import org.jdataex.channel.IChannelContainer;
import org.jdataex.channel.IChannelOutput;
import org.jdataex.channel.IChannelStage;
import org.jdataex.channel.executor.DefaultExecutor;
import org.jdataex.channel.future.IChannelFuture;
import org.jdataex.channel.local.LocalChannelInput;
import org.jdataex.channel.local.LocalChannelOutput;
import org.jdataex.channel.mock.MockHandler;
import org.jdataex.channel.mock.MockSystemHandler;
import org.jdataex.core.card.GUIC;
import org.jdataex.flow.component.IComponent;
import org.jdataex.flow.handler.IComponentHandler;
import org.jdataex.flow.row.IRowSet;
import org.jdataex.flow.runner.IComponentRunner;
import org.jdataex.util.AssertUtil;
import org.jdataex.util.GUICUtil;

public class StepController implements IComponentController {

	private GUIC guic;

	private Map<GUIC, IComponent> components = new HashMap<>();
	private IChannelStage<IRowSet> entryChannelStage;
	private Map<String, IChannelStage<IRowSet>> channelStages;

	public StepController(String id) {
		this.guic = new GUIC(id);
	}

	@Override
	public IComponent getComponent(String id) {
		IComponent component = GUICUtil.getByID(this.components, id);

		return component;
	}

	/**
	 * 通知控制器去启动任务运转。
	 * 
	 * @param rowSet
	 *            运行时条件参数
	 * @exception ControllerException
	 *                无法运行的错误。
	 * @return 成功运行返回true，否则返回false。
	 */
	@Override
	public boolean notifyRunning(IRowSet rowSet) throws ControllerException {
		// TODO 添加组件运行的起始时间和结束时间调用。
		AssertUtil.assertNull("Controller's entry channel stage is null.", this.entryChannelStage);
		
		IChannelFuture<IRowSet> cf = this.entryChannelStage.triggerChannelInput(rowSet);
		
		return cf.isSuccess();
	}


	public void addComponet(IComponent component){
		
	}
	
	public void addChannelStage(IChannelStage channelStage){
		
	}
	
	@Override
	public void setGUIC(GUIC guic) {
		this.guic = guic;
	}

	@Override
	public GUIC getGUIC() {
		return this.guic;
	}

	
	@Override
	public IComponentHandler addComponentHanlder(IComponentHandler handler) {
		return null;
	}

	@Override
	public IChannelStage<IRowSet> getEntryChannelStage() {
		return entryChannelStage;
	}

	@Override
	public void setEntryChannelStage(IChannelStage<IRowSet> entryChannelStage) {
		this.entryChannelStage = entryChannelStage;
	}

	@Override
	public Map<String, IChannelStage<IRowSet>> getChannelStages() {
		return channelStages;
	}

	@Override
	public void setChannelStages(Map<String, IChannelStage<IRowSet>> channelStages) {
		this.channelStages = channelStages;
	}

	public GUIC getGuic() {
		return guic;
	}

	public void setGuic(GUIC guic) {
		this.guic = guic;
	}

	@Override
	public IComponent addComponent(IComponent component) {
		return this.components.put(component.getGUIC(), component);
	}


}
