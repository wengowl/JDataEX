package org.jdataex.channel;

import java.util.HashMap;
import java.util.Map;

import org.jdataex.channel.common.DefaultValues;
import org.jdataex.channel.future.IChannelFuture;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

public class DefaultChannelStageTLQTest {

	static IChannelStage<String> stage1;

	static IChannelStage<String> stage2;

	@SuppressWarnings("unchecked")
	@BeforeClass
	public static void setUp() {

		stage1 = StageCreater.createStage("stage1",DefaultValues.TLQ_MSG, null, "output1", null, "lq");

		stage2 = StageCreater.createStage("stage2",DefaultValues.TLQ_MSG, "input2", null, "lq", null);

		@SuppressWarnings("rawtypes")
		Map map = new HashMap();
		//map.put("output1", new NetAddress("127.0.0.1", 10261));
		map.put("output1", null);
		
		stage1.start(null, map);

		stage2.start(null, null);

		System.out.println("start ok");

	}

	@AfterClass
	public static void clear() {
		try {
			Thread.sleep(10000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		stage1.shutdown();
		stage2.shutdown();
	}

	@Test
	public void testSend() {
		for (int i = 0; i < 10000; i++) {
			IChannelFuture<String>[] iff = stage1.writeMsg("dddfdsafasf"+(i+1),
					"output1");
			System.out.println(iff[0].isSuccess()+"    ");
		}
	}
	
	@Test
	public void testSendErrorMsg(){
		IChannelFuture<String>[] iff = stage1.writeMsg("dddfdsafasf error",
				"output1");
		iff[0].isSuccess();
	}
	
	@Test
	public void testBadReadMsg(){
		IChannelFuture<String>[] iff = stage1.writeMsg("dddfdsafasf badread",
				"output1");
		iff[0].isSuccess();
	}
	
}
