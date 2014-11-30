package org.jdataex.flow.runner;

import org.jdataex.core.InitializationException;
import org.jdataex.core.config.NodeConfig;
import org.jdataex.core.entity.EntityFactory;
import org.jdataex.flow.component.ComponentException;
import org.jdataex.flow.handler.IComponentHandler;
import org.jdataex.util.logger.LoggerFactory;
import org.jdataex.util.scheduler.IScheduler;
import org.jdataex.util.scheduler.LoopScheduler;

public class SchedulerRunner extends BaseCompomentRunner implements IStepRunner {

	private IScheduler scheduler;
	private IComponentHandler handler;

	public SchedulerRunner() {
		try {

			this.scheduler = new LoopScheduler(NodeConfig.getRunnerIntervalInMillisecond());
			this.handler = (IComponentHandler) EntityFactory
					.newInstance(IComponentHandler.class);

		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException e) {
			LoggerFactory.getRootLogger().error("Not constructor.");
		}
	}

	public SchedulerRunner(IComponentHandler handler) {
		try {
			this.scheduler = (IScheduler) EntityFactory
					.newInstance(IScheduler.class);
			this.handler = handler;

		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException e) {
			LoggerFactory.getRootLogger().error("Not constructor.");
		}
	}

	public SchedulerRunner(IScheduler scheduler, IComponentHandler handler) {
		super();
		this.scheduler = scheduler;
		this.handler = handler;
	}

	@Override
	public void run() {

		notifyStateByForce(RunnerState.STARTING);

		try {
			init();

			notifyStateByForce(RunnerState.RUNNING);
			while (this.getState() == RunnerState.RUNNING) {
				if (this.scheduler.isRunTime()) {
//					System.out.println(this.scheduler.nextRunTime());
					this.handler.execute();
					this.scheduler.nextRunTime();
				} else {
					try {
						Thread.sleep(NodeConfig
								.getRunnerIntervalInMillisecond());
					} catch (InterruptedException e) {
					}
				}
			}
		} catch (InitializationException | ComponentException e1) {
			// TODO 调整异常处理，目前该只是简单处理下。
			e1.printStackTrace();
		}

		notifyStateByForce(RunnerState.SHUTDOWN);
	}

	@Override
	public void init() throws InitializationException {

	}

}
