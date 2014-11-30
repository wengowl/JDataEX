package org.jdataex.flow.controller;

import org.jdataex.flow.FlowUtil;
import org.jdataex.flow.IFlow;
import org.jdataex.util.CommonUtil;
import org.jdataex.util.logger.LoggerFactory;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class FlowControllerJob implements Job {

	public static String SCHEDULER_FLOW_NAME = "flowId";
	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {
		String flowId = context.getMergedJobDataMap().getString(SCHEDULER_FLOW_NAME);
		if(CommonUtil.isNotBlank(flowId)){
			IFlow flow = FlowController.getFlow(flowId);
			
			try {
				LoggerFactory.getDefaultLogger().info("{} ready to run.", flowId);
				flow.notifyRunning(FlowUtil.createRunningRowSet());
			} catch (ControllerException e) {
				e.printStackTrace();
			}
		}
	}
}
