package org.jdataex.engine;

import java.io.File;
import java.util.Collection;

import org.jdataex.core.GlobalInitializer;
import org.jdataex.core.InitializationException;
import org.jdataex.core.config.JDataExConfig;
import org.jdataex.flow.Flow;
import org.jdataex.flow.FlowUtil;
import org.jdataex.flow.IFlow;
import org.jdataex.flow.controller.ControllerException;
import org.jdataex.flow.controller.FlowController;
import org.jdataex.util.FileUtil;
import org.jdataex.util.logger.LoggerFactory;
import org.quartz.SchedulerException;

public class Engine {

	public static void main(String[] args) {
		try {
			GlobalInitializer.initialization();
			FlowController.initialization();
		} catch (InitializationException e) {
			LoggerFactory.getRootLogger().infoI18nc(Engine.class,
					"Engine.FileNotFoundOrNotLoaded", e);
			return;
		}

		Collection<File> files = FileUtil.listAllFiles(new File(
				JDataExConfig.DEPLOY_FLOW_DIR));
		
		IFlow flow;
		for (File file : files) {
			try {
				flow = FlowUtil.loadFlow(file);
				
				FlowController.putFlow(flow.getId(), flow);
			} catch (InitializationException e) {
				LoggerFactory.getRootLogger().infoI18nc(Engine.class,
						"Engine.FlowNotLoaded", e);
			}
		}
		
		try {
			FlowController.getScheduler().start();
		} catch (SchedulerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
