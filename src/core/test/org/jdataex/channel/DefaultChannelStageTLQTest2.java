package org.jdataex.channel;

import java.util.HashMap;
import java.util.Map;

import org.jdataex.channel.common.DefaultValues;
import org.jdataex.channel.future.IChannelFuture;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

public class DefaultChannelStageTLQTest2 {
	
	static IChannelStage<String> stage1;

	static IChannelStage<String> stage2;
	
	@SuppressWarnings("unchecked")
	@BeforeClass
	public static void setUp(){
		stage1 = StageCreater.createStageTLQChannelGroup("stage1", DefaultValues.TLQ_MSG, 0, null, "output1", null, "lq");

		stage2 = StageCreater.createStageTLQChannelGroup("stage2", DefaultValues.TLQ_MSG, 10, "input2", null, "lq", null);

		@SuppressWarnings("rawtypes")
		Map map = new HashMap();
		map.put("output1", null);

		stage1.start(null, map);

		stage2.start(null, null);

		System.out.println("start ok");
	}
	
	@AfterClass
	public static void clear(){
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
		for (int i = 0; i < 5000; i++) {
			IChannelFuture<String>[] iff = stage1.writeMsg("dddfdsafasf"+(i+1),
					"output1");
			iff[0].isSuccess();
		}
	}
	
	@SuppressWarnings("static-access")
	public static void main(String[] args) throws InterruptedException{
		DefaultChannelStageTLQTest2 tt = new DefaultChannelStageTLQTest2();
		
		tt.setUp();

		tt.testSend();

		tt.clear();
		
		//IChannelStage<String> stage2 = createStage("stage2", 1, 0, "input2", "output2", "lq", "");
		//stage2.start(new NetAddress("127.0.0.1", 10261), null);
		//Thread.sleep(3000);
		//stage2.shutdown();
	}
}
