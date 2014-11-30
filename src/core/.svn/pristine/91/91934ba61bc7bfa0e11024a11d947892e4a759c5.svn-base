package org.jdataex.channel;

import java.util.HashMap;
import java.util.Map;

import org.jdataex.channel.common.DefaultValues;
import org.jdataex.channel.future.IChannelFuture;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

public class DefaultChannelStageTLQFileTest2 {

	static IChannelStage<String> stage1;

	static IChannelStage<String> stage2;
	
	@SuppressWarnings("unchecked")
	@BeforeClass
	public static void setUp(){
		stage1 = StageCreater.createStageTLQChannelGroup("stage1", DefaultValues.TLQ_FILE,1, null, "output1", null, "lq");

		stage2 = StageCreater.createStageTLQChannelGroup("stage2", DefaultValues.TLQ_FILE,10, "input2", null, "lq", null);

		@SuppressWarnings("rawtypes")
		Map map = new HashMap();
		map.put("output1", null);

		stage1.start(null, map);

		stage2.start(null, null);

		System.out.println("start ok");
	}
	
	@AfterClass
	public static void clear(){
		stage1.shutdown();
		stage2.shutdown();
	}
	
	@Test
	public void testSendFile(){
		IChannelFuture<String>[] iff = stage1.writeMsg("dddfdsafasf",
				"file=D:/FTP/ServUSetup7200.rar",new String[]{"output1"});
		iff[0].isSuccess();
	}
}
