package org.jdataex.util.scheduler;

import java.util.Date;

public abstract class BaseScheduler implements IScheduler {
	protected Date time = new Date();
	
	@Override
	public Date getRunTime() {
		return time;
	}
	
	@Override
	public boolean isRunTime() {
		if(System.currentTimeMillis() > time.getTime()){
			return true;
		}
		
		return false;
	}
}
