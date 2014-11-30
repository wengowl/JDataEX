package org.jdataex.util.scheduler;

import java.util.Date;

import org.jdataex.core.config.NodeConfig;

/**
 * 循环间隔调度器。<br>
 * 间隔时间单位是毫秒。
 * 
 * @author TwelveFoldEr
 * 
 */
public class LoopScheduler extends BaseScheduler {

	private long intervalTime = NodeConfig.getSchedulerLoopIntervalMillisecond();

	public LoopScheduler() {
		super();
	}

	public LoopScheduler(long intervalTime) {
		super();
		this.intervalTime = intervalTime;
	}

	public long getIntervalTime() {
		return intervalTime;
	}

	public void setIntervalTime(long intervalTime) {
		this.intervalTime = intervalTime;
	}

	@Override
	public void initFirstRunTime() {
		this.time = new Date();
		nextRunTime();
	}

	@Override
	public Date nextRunTime() {
		Date now = new Date();
		while (time.before(now)) {
			// 运行时间小于当前时间，则持续调整到下一次运行时间。
			this.time = new Date(this.time.getTime() + intervalTime);
		}
		return this.time;
	}

}
