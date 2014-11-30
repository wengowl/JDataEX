package org.jdataex.uitl.scheduler;

import java.util.Date;

import org.jdataex.util.logger.LoggerFactory;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class MockQuartzJob implements Job {
	public static int count = 0;

	private int selfCount = 0;

	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {
		LoggerFactory.getDefaultLogger().info(
				arg0.getJobDetail().getKey() + " " + " jobName="
						+ arg0.getMergedJobDataMap().getString("jobName")
						+ ".\nTotal executed times is " + ++count
						+ ".\nSeft  executed times is " + ++selfCount);
	}
}
