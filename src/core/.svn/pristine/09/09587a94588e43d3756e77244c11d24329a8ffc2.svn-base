package org.jdataex.flow.runner;

import java.util.concurrent.atomic.AtomicBoolean;

public abstract class BaseCompomentRunner implements IComponentRunner{

	private AtomicBoolean isStateChanging = new AtomicBoolean(false);
	private RunnerState state = RunnerState.INITIATED;

	public BaseCompomentRunner() {
		super();
	}

	@Override
	public RunnerState getState() {
		return state;
	}

	@Override
	public boolean notifyStopping() {
		return notifyState(RunnerState.STOPPING);
	}

	@Override
	public boolean notifyStarting() {
		return notifyState(RunnerState.STARTING);
	}

	@Override
	public boolean notifyState(RunnerState state) {
		if (this.isStateChanging.get() == false) {
			this.isStateChanging.set(true);
			this.state = state;
			this.isStateChanging.set(false);
	
			return true;
		} else {
			return false;
		}
	}

	protected void notifyStateByForce(RunnerState state) {
		while (!notifyState(state)) {
	
		}
	}

}