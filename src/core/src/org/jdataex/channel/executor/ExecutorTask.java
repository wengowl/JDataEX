package org.jdataex.channel.executor;

import org.jdataex.channel.IStageContext;
import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.exception.BaseNestedException;
import org.jdataex.channel.exception.HandlerException;
import org.jdataex.channel.handler.IHandlerChain;

public class ExecutorTask<T> implements ITask<T> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9092253107040332670L;

	protected IHandlerChain<T> chain;

	protected IEvent<T> event;

	protected IStageContext<T> context;

	protected BaseNestedException error;

	protected boolean isComplete = false;

	public ExecutorTask(IHandlerChain<T> chain, IEvent<T> event,
			IStageContext<T> context) {
		this.chain = chain;
		this.context = context;
		this.event = event;
	}

	@Override
	public void run() {
		try {
			
			this.chain.executeHandlers(event);
			
		} catch (HandlerException exp) {
			exp.printStackTrace();
			setException(exp);
		} catch (Throwable exp) {
			exp.printStackTrace();
			setException(new BaseNestedException(exp.getMessage(),exp));
		}finally {
			this.isComplete = true;
			//消息执行完毕future 停止阻塞
			synchronized (this) {
				this.notifyAll();
			}
		}
	}

	@Override
	public BaseNestedException getException() {
		return error;
	}

	@Override
	public boolean isSuccessed() {
		if(!isCompleted()) return false;
		if (error == null) {
			return true;
		}
		return false;
	}

	@Override
	public IEvent<T> getEvent() {
		return event;
	}

	public void setException(BaseNestedException e) {
		this.error = e;
	}

	@Override
	public boolean isCompleted() {
		return isComplete;
	}

}
