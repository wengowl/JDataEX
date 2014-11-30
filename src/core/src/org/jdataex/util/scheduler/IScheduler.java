package org.jdataex.util.scheduler;

import java.util.Date;

/**
 * 调度器。负责时间调度。
 * @author TwelveFolder
 * @deprecated
 */
public interface IScheduler {

	/**
	 * 是否是到运行时间了。
	 * 
	 * @return 是返回true，否返回false。
	 */
	public abstract boolean isRunTime();

	/**
	 * 下一次运行的时间。<br>
	 * 调用后自动将当前运行时间移动到下一次运行时间。
	 * 
	 * @return 返回下一次工作时间。
	 */
	public abstract Date nextRunTime();
	
	/**
	 * 获取工作时间。
	 */
	public abstract Date getRunTime();

	/**
	 * 初始化第一次运行时间。
	 */
	public abstract void initFirstRunTime();
}
