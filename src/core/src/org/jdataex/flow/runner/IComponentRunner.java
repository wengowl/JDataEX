package org.jdataex.flow.runner;

@Deprecated
public interface IComponentRunner extends Runnable {

	public enum RunnerState {
		/**
		 * 初始状态
		 */
		INITIATED,
		/**
		 * 启动中
		 */
		STARTING,
		/**
		 * 停止中
		 */
		STOPPING,
		/**
		 * 运行中
		 */
		RUNNING,
		/**
		 * 暂停中
		 */
		SUSPENDING,
		/**
		 * 关闭状态
		 */
		SHUTDOWN;
	}

	public abstract boolean notifyStopping();

	public abstract RunnerState getState();

	public abstract boolean notifyStarting();

	public abstract boolean notifyState(RunnerState state);

}
