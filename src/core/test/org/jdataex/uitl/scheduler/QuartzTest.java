package org.jdataex.uitl.scheduler;

import static org.quartz.CronScheduleBuilder.cronSchedule;
import static org.quartz.JobBuilder.newJob;
import static org.quartz.TriggerBuilder.newTrigger;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.quartz.Job;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.quartz.impl.JobDetailImpl;
import org.quartz.impl.StdSchedulerFactory;
import org.slf4j.Logger;

public class QuartzTest {

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() throws SchedulerException {
		Scheduler scheduler = StdSchedulerFactory.getDefaultScheduler();

		JobDetail job = newJob(MockQuartzJob.class).withIdentity("job1",
				Scheduler.DEFAULT_GROUP).build();
		try {
			Set<Trigger> triggers = new HashSet<>();
			triggers.add(newTrigger()
					.withIdentity("trigger1", Scheduler.DEFAULT_GROUP)
					.withSchedule(cronSchedule("0/3 * * * * ?"))
					.usingJobData("jobName", "01").build());

			triggers.add(newTrigger()
					.withIdentity("trigger2", Scheduler.DEFAULT_GROUP)
					.withSchedule(cronSchedule("0/10 * * * * ?"))
					.usingJobData("jobName", "02").build());
			scheduler.scheduleJob(job, triggers, true);
		} catch (SchedulerException e) {
			e.printStackTrace();
		}

		long start = System.currentTimeMillis();
		scheduler.start();

		try {
			Thread.sleep(10000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		scheduler.shutdown();
		System.out.println(System.currentTimeMillis() - start);
	}
}
