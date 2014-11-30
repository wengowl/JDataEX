package org.jdataex.channel.store;

import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
/**
 * 此类是默认的内存缓存,重启后就没有了,需要特别注意!<br>
 * 但此类是线程安全的,适合在多线程环境下是用,单前题是<br>
 * 存入store的对象不再外部线程相互关联并且这些线程都<br>
 * 调用store存取数据.<br>
 * 此类设置了消息超时操作,当一个消息被get后(没有在store中标记并没有删除),长时间<br>
 * 不处理,消息将自动恢复,并且排序到最后.超时时间可以通过{@link StoreMetadata}
 * 设置
 * @author chaos
 *
 */
public class MemStore implements IStore<Object>, Runnable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -190134364006964979L;

	private ConcurrentLinkedQueue<Object> queue;

	private ConcurrentHashMap<Object, Long> temp;

	/**
	 * 当前仓库消息数
	 */
	private AtomicLong number;

	/**
	 * 进入事务处理的消息数
	 */
	private AtomicLong toDealWithNumber;

	public long getToDealWithNumber() {
		return toDealWithNumber.get();
	}

	private long timeoutSecond;

	private long recoverLoopTime;

	private Thread th;

	public MemStore(long timeoutSecond,long recoverLoopTime) {
		queue = new ConcurrentLinkedQueue<Object>();
		temp = new ConcurrentHashMap<Object, Long>();
		number = new AtomicLong(0);
		toDealWithNumber = new AtomicLong(0);
		this.timeoutSecond = timeoutSecond;
		this.recoverLoopTime = recoverLoopTime;
		th = new Thread(this);
		th.start();
	}

	public Queue<?> getQueue() {
		return queue;
	}

	@Override
	public boolean isFull() {
		return false;
	}

	@Override
	public boolean isEmpty() {
		return queue.isEmpty() && temp.isEmpty();
	}

	@Override
	public long maxCapacity() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public long currentCapacity() {
		return number.get();// nn;//
	}

	@Override
	public Object pop() {
		// queue和number都是线程安全的,obj为方法内变量
		// 属于线程变量,不存在线程安全问题.
		Object obj = queue.poll();
		if (obj != null)
			number.decrementAndGet();
		return obj;
	}

	@Override
	public Object get() {
		Object obj = queue.poll();
		try {
			temp.put(obj, System.currentTimeMillis());
			toDealWithNumber.addAndGet(1);
			return obj;
		} catch (Throwable t) {
			System.out.println("添加不进去?????   " + temp.size());
			queue.add(obj);
			return null;
		}
	}

	@Override
	public void remove(Object obj) {
		temp.remove(obj);
		number.decrementAndGet();
		toDealWithNumber.decrementAndGet();
	}

	@Override
	public void rollBack(Object obj) {
		temp.remove(obj);
		queue.add(obj);
		toDealWithNumber.decrementAndGet();
	}

	@Override
	public void push(Object obj){
		if (queue.add(obj)) {
			number.addAndGet(1);
		}
	}

	/**
	 * 恢复超时的消息
	 */
	private void recoverMsgs() {
		Iterator<Object> it = temp.keySet().iterator();
		long systime = System.currentTimeMillis();
		while (it.hasNext()) {
			Object key = it.next();
			System.out.println(systime + "   " + temp.get(key));
			if ((systime - temp.get(key)) > timeoutSecond) {
				// 消息超时了必须设置回去
				if (queue.add(key)) {
					temp.remove(key);
					toDealWithNumber.decrementAndGet();
				}
			}
		}
	}

	@Override
	public void run() {
		while (!Thread.currentThread().isInterrupted()) {
			recoverMsgs();
			try {
				Thread.sleep(recoverLoopTime);
			} catch (InterruptedException e) {
				// 不处理
			}
		}
	}

}
