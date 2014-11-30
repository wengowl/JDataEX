package org.jdataex.engine.loader;

import static org.quartz.CronScheduleBuilder.cronSchedule;
import static org.quartz.JobBuilder.newJob;
import static org.quartz.TriggerBuilder.newTrigger;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.dom4j.DocumentException;
import org.jdataex.channel.IChannelContainer;
import org.jdataex.channel.IChannelInput;
import org.jdataex.channel.IChannelOutput;
import org.jdataex.channel.IChannelStage;
import org.jdataex.channel.executor.IExecutor;
import org.jdataex.channel.handler.IHandler;
import org.jdataex.channel.net.INetAddress;
import org.jdataex.channel.net.NetAddress;
import org.jdataex.core.InitializationException;
import org.jdataex.core.card.GUIC;
import org.jdataex.engine.config.ChannelHandlerItem;
import org.jdataex.engine.config.ChannelOutputItem;
import org.jdataex.engine.config.ChannelStageItem;
import org.jdataex.engine.config.ComponentItem;
import org.jdataex.engine.config.ControllerItem;
import org.jdataex.engine.config.FlowConfig;
import org.jdataex.engine.config.SchedulerCronItem;
import org.jdataex.flow.Flow;
import org.jdataex.flow.IFlow;
import org.jdataex.flow.component.IComponent;
import org.jdataex.flow.component.step.IStep;
import org.jdataex.flow.controller.FlowController;
import org.jdataex.flow.controller.FlowControllerJob;
import org.jdataex.flow.controller.IComponentController;
import org.jdataex.flow.controller.StepController;
import org.jdataex.flow.handler.ChannelStepHandler;
import org.jdataex.flow.row.IRowSet;
import org.jdataex.uitl.scheduler.MockQuartzJob;
import org.jdataex.util.CommonUtil;
import org.jdataex.util.logger.ILoggable;
import org.jdataex.util.logger.ILogger;
import org.jdataex.util.logger.LoggerFactory;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.quartz.impl.StdSchedulerFactory;

public class ChannelFlowLoader implements IFlowLoader, ILoggable {

	private ILogger logger;

	@Override
	public IFlow load(File file) throws InitializationException {
		FlowConfig fc;

		try {
			fc = new FlowConfig(file);

			return load(fc);
		} catch (IOException | DocumentException e) {
			throw new InitializationException("Flow loading error. "
					+ e.getMessage(), e);
		}

	}

	@Override
	public IFlow load(FlowConfig config) throws InitializationException {
		if (config == null) {
			return null;// TODO other handled,ex throw exception;
		}

		this.getLogger().info("Config id[{}] is loading.", config.getId());

		Map<GUIC, IComponentController> controllers = loadControllers(config);

		IFlow flow = new Flow(config.getId(), controllers);

		Scheduler scheduler = loadScheduler(flow, config.getSchedulerCrons());

		FlowController.setScheduler(scheduler);
		return flow;
	}

	public Scheduler loadScheduler(IFlow flow,
			List<SchedulerCronItem> schedulerCrons)
			throws InitializationException {
		Scheduler scheduler;
		try {
			scheduler = StdSchedulerFactory.getDefaultScheduler();
		} catch (SchedulerException e1) {
			throw new InitializationException("Scheduler cannot get.", e1);
		}

		Set<Trigger> triggers = new HashSet<>();
		JobDetail job = newJob(FlowControllerJob.class).withIdentity(
				flow.getId(), Scheduler.DEFAULT_GROUP).build();
		for (int i = 0; i < schedulerCrons.size(); i++) {

			SchedulerCronItem schedulerCronItem = schedulerCrons.get(i);

			this.getLogger().info("Prepared scheduler[{}].Cron text is [{}]",
					flow.getId(), schedulerCronItem.getText());
			Trigger trigger = newTrigger()
					.withIdentity(flow.getId() + "Trigger" + i,
							Scheduler.DEFAULT_GROUP)
					.withSchedule(cronSchedule(schedulerCronItem.getText()))
					.usingJobData(FlowControllerJob.SCHEDULER_FLOW_NAME,
							flow.getId()).build();
			triggers.add(trigger);

		}
		try {
			scheduler.scheduleJob(job, triggers, true);
		} catch (SchedulerException e) {
			e.printStackTrace();
		}
		return scheduler;
	}

	public Map<GUIC, IComponentController> loadControllers(FlowConfig config)
			throws InitializationException {
		Map<GUIC, IComponentController> controllers = new HashMap<>();

		IComponentController controller;
		Map<String, IComponent> components;
		Map<String, IChannelStage<IRowSet>> channelStages;
		for (ControllerItem controllerItem : config.getControllers().values()) {

			this.getLogger().info("Controller id[{}] is loading.",
					controllerItem.getId());

			components = loadComponents(controllerItem.getComponents());

			channelStages = loadChannelStages(controllerItem.getChannels(),
					components);

			controller = loadController(controllerItem, channelStages);

			for (IComponent component : components.values()) {
				controller.addComponent(component);
			}

			controllers.put(controller.getGUIC(), controller);
		}
		return controllers;
	}

	private IComponentController loadController(ControllerItem controllerItem,
			Map<String, IChannelStage<IRowSet>> channelStages)
			throws InitializationException {

		IComponentController controller = new StepController(
				controllerItem.getId());

		controller.setChannelStages(channelStages);

		for (ChannelStageItem item : controllerItem.getChannels().values()) {
			if (item.isEntry()) {
				controller
						.setEntryChannelStage(channelStages.get(item.getId()));
			}
		}

		return controller;
	}

	@SuppressWarnings("unchecked")
	private Map<String, IComponent> loadComponents(
			Map<String, ComponentItem> items) throws InitializationException {
		Map<String, IComponent> components = new HashMap<>();
		IComponent component;
		for (ComponentItem item : items.values()) {

			if (item != null && CommonUtil.isNotBlank(item.getClazz())) {
				try {
					component = (IComponent) ClassLoader.getSystemClassLoader()
							.loadClass(item.getClazz()).newInstance();

					// TODO 以后修改成，动态加载不同的logger。而不是现在这有通用一个logger。
					((ILoggable) component).setLogger(LoggerFactory
							.getDefaultLogger());

					component.initConfig(item);

					components.put(component.getGUIC().getID(), component);
				} catch (InstantiationException | IllegalAccessException
						| ClassNotFoundException e) {
					throw new InitializationException("Initialization station "
							+ e.getMessage(), e);
				}
			}

		}

		return components;
	}

	private Map<String, IChannelStage<IRowSet>> loadChannelStages(
			Map<String, ChannelStageItem> items,
			Map<String, IComponent> components) throws InitializationException {
		Map<String, IChannelStage<IRowSet>> channels = new HashMap<>();

		for (ChannelStageItem item : items.values()) {
			IChannelStage<IRowSet> cs = loadChannelStage(item, components);

			channels.put(item.getId(), cs);
		}

		return channels;
	}

	@SuppressWarnings("unchecked")
	private IChannelStage<IRowSet> loadChannelStage(ChannelStageItem item,
			Map<String, IComponent> components) throws InitializationException {

		if (item != null && CommonUtil.isNotBlank(item.getClazz())) {
			try {
				IChannelStage<IRowSet> cs = (IChannelStage<IRowSet>) newInstance(
						item.getClazz(), item.getId());

				loadExecutor(item, cs);

				IChannelContainer<IRowSet> cc = (IChannelContainer<IRowSet>) newInstance(
						item.getContainer().getClazz(), item.getContainer()
								.getId());
				cs.setChannelContainer(cc);

				IChannelInput<IRowSet> ci = (IChannelInput<IRowSet>) newInstance(
						item.getInput().getClazz(), item.getInput().getName());
				cc.setInput(ci);

				List<ChannelHandlerItem> handlerList = item.getHandlerList();
				for (ChannelHandlerItem handler : handlerList) {
					loadHandler(components, cs, handler);
				}

				List<ChannelOutputItem> outputs = item.getOutputs();
				for (ChannelOutputItem output : outputs) {
					loadOutput(cs, cc, output);
				}

				return cs;
			} catch (InstantiationException | IllegalAccessException
					| ClassNotFoundException e) {
				e.printStackTrace();
				throw new InitializationException(
						"Initialization ChannelStage " + e.getMessage(), e);
			}

		}

		return null;
	}

	private void loadExecutor(ChannelStageItem item, IChannelStage<IRowSet> cs)
			throws InitializationException {
		@SuppressWarnings("unchecked")
		IExecutor<IRowSet> inputExecutor = (IExecutor<IRowSet>) newInstance(
				item.getInputExecutor().getClazz(), item.getInputExecutor()
						.getNumber());
		@SuppressWarnings("unchecked")
		IExecutor<IRowSet> outputExecutor = (IExecutor<IRowSet>) newInstance(
				item.getOutputExecutor().getClazz(), item.getOutputExecutor()
						.getNumber());
		cs.setExecutor(inputExecutor, outputExecutor);
	}

	private void loadHandler(Map<String, IComponent> components,
			IChannelStage<IRowSet> cs, ChannelHandlerItem handler)
			throws InstantiationException, IllegalAccessException,
			ClassNotFoundException {
		@SuppressWarnings("unchecked")
		IHandler<IRowSet> h = (IHandler<IRowSet>) ClassLoader
				.getSystemClassLoader().loadClass(handler.getClazz())
				.newInstance();

		switch (handler.getType()) {
		case ChannelHandlerItem.TYPE_COMPONENT:
			ChannelStepHandler csh = (ChannelStepHandler) h;
			csh.setGUIC(new GUIC(cs.getName()));
			csh.setStep((IStep) components.get(handler.getComponentRef()));
		case ChannelHandlerItem.TYPE_STRATEGY:
			// TODO fix strategy;
		}

		cs.addAfter(h);
	}

	private void loadOutput(IChannelStage<IRowSet> cs,
			IChannelContainer<IRowSet> cc, ChannelOutputItem output)
			throws InitializationException {
		Map<String, INetAddress> map = new HashMap<String, INetAddress>();
		if (!ChannelOutputItem.NET_ADDRESS_NULL.equalsIgnoreCase(output
				.getHost())) {
			@SuppressWarnings("unchecked")
			IChannelOutput<IRowSet> co = ((IChannelOutput<IRowSet>) newInstance(
					output.getClazz(), output.getName()));
			cc.addOutput(co);

			map.put(output.getName(), new NetAddress(output.getHost(),
					new Integer(output.getPort())));

			this.getLogger().info("{} {} NetAddress:host[{}] port[{}]",
					cs.getName(), output.getName(), output.getHost(),
					output.getPort());

			cs.start(null, map);
		} else {
			cs.start(null, null);
		}
	}

	private Object newInstance(final String className, final String initargs)
			throws InitializationException {
		try {
			Class<?> csc = Class.forName(className);
			Constructor<?> cscc = csc.getConstructor(String.class);
			return cscc.newInstance(initargs);
		} catch (ClassNotFoundException | NoSuchMethodException
				| SecurityException | InstantiationException
				| IllegalAccessException | IllegalArgumentException
				| InvocationTargetException e) {
			e.printStackTrace();
			throw new InitializationException(e);
		}

	}

	@Override
	public void setLogger(ILogger logger) {
		this.logger = logger;
	}

	@Override
	public ILogger getLogger() {
		if (null == this.logger) {
			return LoggerFactory.getDefaultLogger();
		}
		return this.logger;
	}

}
