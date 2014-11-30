package org.jdataex.channel.queue;

import java.io.Serializable;
import java.util.concurrent.BlockingQueue;

public interface IQueue extends BlockingQueue<Runnable>,Serializable{
	
	/**
	 * 仓库是否已满
	 * @return
	 */
	public boolean isFull();
	
	/**
	 * 仓库是否为空
	 * @return
	 */
	public boolean isEmpty();
	
	/**
	 * 最大仓库存量
	 * @return
	 */
	public long maxCapacity();
	
	/**
	 * 当前仓库存量
	 * @return
	 */
	public long currentCapacity();
	
}
