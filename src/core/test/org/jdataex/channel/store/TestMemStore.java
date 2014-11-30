package org.jdataex.channel.store;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class TestMemStore {

	private MemStore st;

	@Before
	public void setUpBefore() throws Exception {
		st = new MemStore(2000, 10000);
	}

	@After
	public void tearDownAfter() throws Exception {
		st = null;
	}

	@Test
	public void testPop() {
		st.pop();
		assertEquals(st.currentCapacity(), 0);
	}

	@Test
	public void testAdd() {
		for (int i = 0; i < 10; i++)
			st.push(new String("tefst1"));
		assertEquals(st.currentCapacity(), 10);

		st.push(new Object());

		assertEquals(st.currentCapacity(), 11);
	}

	// @Test
	public void testThreadsAdd() {

		List<Thread> list = new ArrayList<Thread>();
		for (int i = 0; i < 20; i++) {
			Thread th = new Thread(new Runnable() {

				@Override
				public void run() {
					for (int i = 0; i < 1000; i++)
						try {
							Thread.sleep(10);
						} catch (InterruptedException e) {
						}
					st.push(new String("tefst1"));
					System.out.println(st.currentCapacity() + "    "
							+ Thread.currentThread().toString());

				}

			}, "Thread" + (i + 1));
			list.add(th);
		}
		for (Thread th : list) {
			th.start();
		}

		for (Thread th : list) {
			while (th.isAlive()) {
				try {
					Thread.sleep(1000);
				} catch (InterruptedException e) {
				}
			}
		}
		assertEquals(st.currentCapacity(), 20000);
	}

	@Test
	public void testThreadsPop() {
		// 首先先添加点数据
		for (int i = 0; i < 10000; i++) {
			st.push(new Object());
		}
		assertEquals(st.currentCapacity(), 10000);

		assertEquals(st.currentCapacity(), st.getQueue().size());

		List<Thread> list = new ArrayList<Thread>();
		for (int i = 0; i < 20; i++) {
			Thread th = new Thread(new Runnable() {

				@Override
				public void run() {
					for (int i = 0; i < 100; i++) {
						Object obj = st.pop();

						System.out.println(Thread.currentThread().toString()
								+ "  " + obj);
					}
				}
			});
			list.add(th);
		}

		for (Thread th : list) {
			th.start();
		}
		for (Thread th : list) {
			while (th.isAlive()) {
				try {
					Thread.sleep(1000);
				} catch (InterruptedException e) {
				}
			}
		}
		assertEquals(st.currentCapacity(), 8000);
	}

	@Test
	public void testGet() {
		// 首先先添加点数据
		for (int i = 0; i < 10000; i++) {
			st.push(new Object());
		}
		assertEquals(st.currentCapacity(), 10000);

		assertEquals(st.currentCapacity(), st.getQueue().size());

		List<Thread> list = new ArrayList<Thread>();
		for (int i = 0; i < 20; i++) {
			Thread th = new Thread(new Runnable() {

				@Override
				public void run() {
					for (int i = 0; i < 100; i++) {
						Object obj = st.get();
						if (obj == null) {
							System.out.println(Thread.currentThread()
									.toString() + "  妈的咋为空呢!");
						} else {
							System.out.println(Thread.currentThread()
									.toString() + "  " + obj);
						}
					}
				}
			});
			th.setName("test get() " + (i + 1));
			list.add(th);
		}
		// 启动线程
		for (Thread th : list) {
			th.start();
		}

		// 等待线程完成
		for (Thread th : list) {
			while (th.isAlive()) {
				try {
					Thread.sleep(1000);
				} catch (InterruptedException e) {
				}
			}
		}
		assertEquals(st.currentCapacity(), 10000);
		assertEquals(st.getToDealWithNumber(), 2000);

		try {
			System.out.println("休息15,秒看是否恢复了未提交消息!");
			Thread.sleep(15000);
		} catch (InterruptedException e) {
		}
		assertEquals(st.getToDealWithNumber(), 0);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Test
	public void testGetAndRemove() throws InterruptedException {
		for (int i = 0; i < 10000; i++) {
			st.push(new Object());
		}
		assertEquals(st.currentCapacity(), 10000);

		assertEquals(st.currentCapacity(), st.getQueue().size());

		List list = new ArrayList();

		for (int i = 0; i < 1000; i++) {
			list.add(st.get());
		}
		assertEquals(st.currentCapacity(), 10000);
		assertEquals(st.getToDealWithNumber(), 1000);

		for (Object obj : list) {
			st.remove(obj);
		}
		assertEquals(st.currentCapacity(), 9000);
		assertEquals(st.getToDealWithNumber(), 0);
	}
}
