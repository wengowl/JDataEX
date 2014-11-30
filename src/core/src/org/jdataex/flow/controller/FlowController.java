package org.jdataex.flow.controller;

import java.util.HashMap;
import java.util.Map;

import org.jdataex.flow.FlowUtil;
import org.jdataex.flow.IFlow;
import org.quartz.Scheduler;

public class FlowController {

	private static FlowController instance;
	private Map<String, IFlow> flows = new HashMap<>();
	private Scheduler scheduler;

	public static void initialization() {
		instance = new FlowController();
	}
	
	public void notifyAllRunning() throws ControllerException {
		for (IFlow flow : flows.values()) {
			flow.notifyRunning(FlowUtil.createRunningRowSet());
		}
	}

	public static IFlow getFlow(String id) {
		return instance.flows.get(id);
	}

	public static IFlow putFlow(String id, IFlow flow) {
		return instance.flows.put(id, flow);
	}

	public static IFlow removeFlow(String id) {
		return instance.flows.remove(id);
	}

	public static Scheduler getScheduler() {
		return instance.scheduler;
	}

	public static void setScheduler(Scheduler scheduler) {
		instance.scheduler = scheduler;
	}

}
