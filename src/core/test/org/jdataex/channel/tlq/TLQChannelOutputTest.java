package org.jdataex.channel.tlq;

import java.io.IOException;

import junit.framework.Assert;

import org.jdataex.channel.IChannelOutput;
import org.jdataex.channel.common.ChannelEventType;
import org.jdataex.channel.common.DefaultValues;
import org.jdataex.channel.event.DefaultEvent;
import org.jdataex.channel.net.NetAddress;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.Test;

/**
 * 测试 tlq channel output的功能,主要测试 connect,disConnect writeMsg 功能
 * 以及测试断网连不上,断连接重试机制等.
 * 
 * @author chaos
 * 
 */
public class TLQChannelOutputTest {

	private IChannelOutput<String> output;

	@Before
	public void serUp() {
		System.out.println("TLq环境   1" + System.getenv("TLQHOMEDIR"));
		System.out.println("TLq环境   2client " + System.getenv("TCLIHOMEDIR"));
		output = new TLQChannelOutput<String>("test1", DefaultValues.TLQ_MSG,
				"qcu1", "lq");
		output.connect(null);
	}

	@After
	public void clear() {
		output.disConnect();
	}
	
	@AfterClass
	public static void clearMsg(){
		new Thread(new Runnable() {

			@Override
			public void run() {
				try {
					Runtime.getRuntime().exec(
							"cmd /c start tlqque qcu1 lq -a clear -o abort -y");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

		}).start();
	}

	 @Test
	public void testWriteAndFlush() {
		output.writeAndFlush(new DefaultEvent<String>("fdsafdsafdsdddddd",
				null, ChannelEventType.ChannelWrite, ""));
	}

	 @Test
	public void testConnectOK() {
		IChannelOutput<String> output = new TLQChannelOutput<String>("test1",
				DefaultValues.TLQ_MSG, "qcu1", "lq");
		output.connect(null);
	}

	 @Test
	public void testConnectNotOk() {
		try {
			IChannelOutput<String> output = new TLQChannelOutput<String>(
					"test1", DefaultValues.TLQ_MSG, "qcu1", "lq");
			output.connect(new NetAddress("127.0.0.1", 10111));
		} catch (Exception e) {
			e.printStackTrace();
			Assert.assertTrue(true);
		}
	}

	 @Test
	public void testDisConnect() {
		IChannelOutput<String> output = new TLQChannelOutput<String>("test1",
				DefaultValues.TLQ_MSG, "qcu1", "lq");
		output.connect(null);
		output.disConnect();
	}

	 @Test
	public void testDisConnectNotOk() {
		try {
			IChannelOutput<String> output = new TLQChannelOutput<String>(
					"test1", DefaultValues.TLQ_MSG, "qcu1", "lq");
			//不连接直接disconnect
			output.disConnect();
		} catch (Exception e) {
			e.printStackTrace();
			Assert.assertTrue(true);
		}
	}

	@Test
	public void testSendBufferMsg() {
		for (int i = 0; i < 9000; i++) {
			output.writeAndFlush(new DefaultEvent<String>("fdsafdsafdsdddddd",
					null, ChannelEventType.ChannelWrite, ""));
		}
	}

	public static void main(String[] args) {
		TLQChannelOutputTest tt = new TLQChannelOutputTest();

		tt.testConnectNotOk();
		tt.testConnectOK();
	}
}
