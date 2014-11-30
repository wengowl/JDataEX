package org.jdataex.util.scheduler;


import java.util.Date;

import org.jdataex.util.DateUtil;


/**
 * TODO 待优化，调整算法和定义具体的功能。
 * 时间表模式的调度器。<br>
 * 
 * 按给定的时间启动调度器。启动后，根据duration值，持续运行一段时间。<br>
 * 最小运行周期间隔是一分钟。持续时间单位是1分钟。
 * 
 * @author TwelveFolder
 * 
 */
public class Scheduler extends BaseScheduler {

	private int startMonth = -1;
	private int startDay = -1;
	private int startHour = -1;
	private int startMinute = -1;
	
	/**
	 * 持续时间，单位分钟。即在这个时间类，将持续工作。
	 */
	private int duration = 600;
	private int runTimes = 0;

	public void initFirstRunTime(){
		tuneRunTime();
		Date now = new Date();
		while(this.getRunTime().before(now)){
			this.nextRunTime();
		}
	}
	
	public Date nextRunTime() {
		if(runTimes < duration){
			Date nowDate = new Date();
			Date newDate = this.time;
			
			newDate = DateUtil.addDate(this.time, 0, 0, 1);
			runTimes ++;
			while(newDate.before(nowDate)){// 如果当前时间超过下次运行时间，则将下次运行时间移动到当前时间后，同时计数
				newDate = DateUtil.addDate(newDate, 0, 0, 1);
				runTimes ++;
			}
			
			this.time = newDate;
		} else {
			// 先大范围的移动工作时间，然后在进行微调工作时间。
			moveRunTime();
			tuneRunTime();
			runTimes = 0;
		}
		
		return this.time;
	}

	private void tuneRunTime() {
		this.time = DateUtil.tuneDate(this.time, 0,
				startMonth, startDay, startHour, startMinute, 0);
	}

	private void moveRunTime() {
		int addYear = startMonth == -1 ? 0 : 1;
		int addMonth = startDay == -1 ? 0 : 1;
		int addDay = startHour == -1 ? 0 : 1;
		int addHour = startMinute == -1 ? 0 : 1;
		int addMinute = 0;
		// startSecond == -1 ? 0 : 1;
		// int addSecond = 0;

		this.time = DateUtil.addDate(this.time, addYear,
				addMonth, addDay, addHour, addMinute, 0);
	}

	public int getStartMonth() {
		return startMonth;
	}

	public void setStartMonth(int startMonth) {
		this.startMonth = startMonth;
	}

	public int getStartDay() {
		return startDay;
	}

	public void setStartDay(int startDay) {
		this.startDay = startDay;
	}

	public int getStartHour() {
		return startHour;
	}

	public void setStartHour(int startHour) {
		this.startHour = startHour;
	}

	public int getStartMinute() {
		return startMinute;
	}

	public void setStartMinute(int startMinute) {
		this.startMinute = startMinute;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

}
