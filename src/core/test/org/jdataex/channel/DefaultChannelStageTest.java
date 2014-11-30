package org.jdataex.channel;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import junit.framework.Assert;

import org.jdataex.channel.executor.DefaultExecutor;
import org.jdataex.channel.future.IChannelFuture;
import org.jdataex.channel.local.LocalChannelInput;
import org.jdataex.channel.mock.MockHandler;
import org.jdataex.channel.mock.MockSystemHandler;
import org.jdataex.channel.net.INetAddress;
import org.jdataex.channel.net.NetAddress;
import org.jdataex.channel.tlq.TLQChannelOutput;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class DefaultChannelStageTest {

	IChannelStage<String> stage1;

	IChannelStage<String> stage2;

	@Before
	public void setUp() {

		stage1 = StageCreater.createLocalStage("stage1", 1, 1, "test",
				"testout");

		stage2 = StageCreater.createLocalStage("stage2", 10, 0, "test", null);

		Map<String, INetAddress> map = new HashMap<String, INetAddress>();

		System.out.println("map   start:::::::::::    " + new Date());
		map.put("testout", new NetAddress("stage2", 0));
		System.out.println("map   end start:::::::::::    " + new Date());

		// 本地input不用address,如果没有output也不需要加address
		stage1.start(null, map);

		stage2.start(null, null);

	}

	@After
	public void clear() {
		stage1.shutdown();
		stage2.shutdown();
	}

	// @Test
	public void testWrite() {
		System.out.println("start:::::::::::    " + System.currentTimeMillis());
		IChannelFuture<String>[] ic = stage1.writeMsg("[[[this is a test msg",
				"testout");
		Assert.assertEquals(ic[0].isSuccess(), true);
		System.out.println("end:::::::::::    " + System.currentTimeMillis());
	}

	// @Test
	public void testWriteSome() {
		for (int i = 0; i < 1000000; i++) {
			stage1.writeMsg("[[[this is a test msg", "testout");
		}
	}

	@Test
	public void testStopRead() {
		stage2.getChannelContainer().getInput().setRead(false);
		Thread th = new Thread(new Runnable() {

			@Override
			public void run() {
				try {
					Thread.sleep(3000);
				} catch (InterruptedException e) {
				}
				System.out.println("执行唤醒操作");
				System.out.println("消息11:"+((DefaultExecutor)stage1.getOutputExecutor()).getQueueNumber());
				System.out.println("消息11:"+((DefaultExecutor)stage2.getInputExecutor()).getQueueNumber());
				
				stage2.getChannelContainer().getInput().setRead(true);
				System.out.println("执行唤醒操作完毕");

				System.out.println(stage2.getInputExecutor().getTeskCount());
				System.out.println(stage2.getInputExecutor()
						.getActiveThreadSize());

				for (int i = 0; i < 100; i++) {
					IChannelFuture<String>[] ss = stage1.writeMsg(
							"[[[this is a test msgHHHH"+i, "testout");
				}
				//System.out.println("消息:"+((DefaultExecutor)stage1.getOutputExecutor()).getQueueNumber());
				//System.out.println("消息:"+((DefaultExecutor)stage2.getInputExecutor()).getQueueNumber());
				
			}
		});
		
		th.start();

		for (int i = 0; i < 100; i++) {
			System.out.println("开始写消息!");
			IChannelFuture<String>[] ss = stage1.writeMsg(
					"[[[this is a test msg"+i, "testout");
			ss[0].isSuccess();
		}
		
		System.out.println("消息000:"+((DefaultExecutor)stage1.getOutputExecutor()).getQueueNumber());
		System.out.println("消息000:"+((DefaultExecutor)stage2.getInputExecutor()).getQueueNumber());
		
		if(stage1.getOutputExecutor().isAllWorksFinish()){
			System.out.println("MMMMMMMMMMMMMMMMMM:::::::::"+stage1.getOutputExecutor().getTeskCount());
		}
		
		System.out.println("sssssssssssssssss:::::: "+stage1.getOutputExecutor().getActiveThreadSize());
		System.out.println("sssssssssssssssss:::::: "+stage2.getInputExecutor().getActiveThreadSize());
	}

	// @Test
	public void testBadWriteMsg() {
		IChannelFuture<String>[] ic = stage1.writeMsg(
				"error this is a bad write msg", "testout");
		Assert.assertEquals(ic[0].isSuccess(), false);
		// ic[0].error().printStackTrace();
		System.out.println(ic[0].error().getMessage());
	}

	@Test
	public void testBadReadMsg() {
		IChannelFuture<String>[] ic = stage1.writeMsg("this is a badread msg",
				"testout");
		Assert.assertEquals(ic[0].isSuccess(), false);
		System.out.println(ic[0].error().getMessage());
	}

	@Test
	public void testTriggerChannelInput() {
		for (int i = 0; i < 1000; i++) {
			stage2.triggerChannelInput("this is a trigger test");
		}
	}

	@Test
	public void testStage2shutdown() {
		stage2.shutdown();
		IChannelFuture<String> ic2 = stage1.writeMsg("this is a  msg",
				"testout")[0];
		Assert.assertEquals(ic2.isSuccess(), false);
		ic2.error().printStackTrace();
		System.out.println(ic2.error().getMessage());
	}

	// @Test
	public void testStage2ShutdownAndStart() {
		stage2.shutdown();
		System.out.println("shutdown 后再启动!");
		stage2 = StageCreater.createLocalStage("stage2", 100, 0, "test", null);
		stage2.start(null, null);

		IChannelFuture<String> ic2 = stage1.writeMsg("this is a qqq  msg",
				"testout")[0];
		Assert.assertEquals(ic2.isSuccess(), true);
	}

	/**
	 * 测试配置错误的address时的情况,正确的方式应该是直接抛出异常告知无法获取地址
	 */
	// @Test
	public void testBadOutputWriteName() {
		stage1 = StageCreater.createLocalStage("stage1", 1, 100, "test1",
				"output111");
		Map<String, INetAddress> map = new HashMap<String, INetAddress>();
		map.put("output111", new NetAddress("stage2", 0));
		stage1.start(null, map);

		IChannelFuture<String>[] ic = stage1.writeMsg("[[[this is a test msg",
				"testout");
		Assert.assertEquals(ic[0].isSuccess(), false);
	}

	/**
	 * 
	 */
	// @Test
	public void testBadOutputAddress() {
		stage1 = StageCreater.createLocalStage("stage1", 1, 100, "test1",
				"output111");
		Map<String, INetAddress> map = new HashMap<String, INetAddress>();
		map.put("output", new NetAddress("stage2", 0));
		try {
			stage1.start(null, map);
		} catch (Exception e) {
			e.printStackTrace();
			Assert.assertTrue(true);
		}
	}

	/**
	 * 测试当executor 与 channelOutput 类型不同的时候校验功能 测试 DefaultExecutor 与
	 * TLQChannelOutput 不匹配的情况
	 */
	// @Test
	public void testMatching() {
		try {
			IChannelStage<String> stage = new DefaultChannelStage<String>("ttt");
			IChannelContainer<String> cr = new DefaultChannelContainer<String>("testc");
			IChannelOutput<String> out = new TLQChannelOutput<>("test", "qcu1");
			cr.addOutput(out);
			cr.setInput(new LocalChannelInput<String>("intt"));
			stage.setChannelContainer(cr);
			stage.setExecutor(new DefaultExecutor<String>(1),
					new DefaultExecutor<String>(1));
			stage.addBefore(new MockHandler<String>());
			stage.addAfter(new MockSystemHandler<String>());

			stage.start(null, null);
		} catch (Exception e) {
			e.printStackTrace();
			Assert.assertTrue(true);
		}

	}

	// #********************************************************************************#
	// #********************************************************************************#
	// # #
	// # #
	// # main 测试方法 #
	// # #
	// # #
	// #********************************************************************************#
	// #********************************************************************************#
	public static void main(String[] args) {
		// testList();
		// testStage();
		// testClose();
		DefaultChannelStageTest tt = new DefaultChannelStageTest();
		tt.setUp();
		// tt.testWriteSome();
		// tt.testWrite();
		tt.testStopRead();
		// tt.testStage2shutdown();
		// tt.testWrite();

		 tt.clear();
	}

	@SuppressWarnings({ "unused", "unchecked" })
	private static void testList() {
		long start = System.currentTimeMillis();
		@SuppressWarnings("rawtypes")
		List list = new ArrayList();

		for (int i = 0; i < 100; i++) {
			// System.out.println("stage2 sys channelRead...[[[this is a test msg");
			// System.out.println("stage2 channelRead...[[[this is a test msg");
			// list.add("stage2 channelRead...[[[this is a test msg");

		}

		System.out.println("用时:   " + (System.currentTimeMillis() - start));
	}

	public static void testStage() {
		long start = System.currentTimeMillis();

		DefaultChannelStageTest t = new DefaultChannelStageTest();
		t.setUp();
		t.testWriteSome();
		t.clear();
		System.out.println("用时:   " + (System.currentTimeMillis() - start));
	}

	public static void testClose() {
		long start = System.currentTimeMillis();
		DefaultChannelStageTest t = new DefaultChannelStageTest();
		t.setUp();
		t.clear();
		System.out.println("用时:   " + (System.currentTimeMillis() - start));
	}

}
