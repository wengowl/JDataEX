package org.jdataex.channel.queue;

import java.util.concurrent.LinkedBlockingQueue;

/**
 * 
 * @author chaos
 *
 */
public class MemBlockingQueue extends LinkedBlockingQueue<Runnable> implements IQueue{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8550220531247854931L;

	@Override
	public boolean isFull() {
		return false;
	}

	@Override
	public long maxCapacity() {
		return 0;
	}

	@Override
	public long currentCapacity() {
		return this.size();
	}

}
