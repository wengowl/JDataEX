package org.jdataex.channel.tlq;

import java.io.IOException;

import org.jdataex.channel.IChannelOutput;
import org.jdataex.channel.common.ChannelEventType;
import org.jdataex.channel.common.DefaultValues;
import org.jdataex.channel.event.DefaultEvent;
import org.jdataex.channel.net.NetAddress;
import org.junit.Test;

import com.tongtech.tlq.base.TlqException;

public class TLQChannelOutputTest2 {

	/**
	 * TLQ一但关闭,java应用程序就会直接被关闭,测试首先连接不了TLQ,然后再
	 * write msg时候是有有重连机制.
	 * @throws IOException
	 */
	@Test
	public void testReConnect() throws IOException {
		IChannelOutput<String> output=null;
		try {
			output = new TLQChannelOutput<String>(
					"test1", DefaultValues.TLQ_MSG, "qcu1", "lq",true);
			output.connect(new NetAddress("127.0.0.1", 10261));
		} catch (Exception e) {

		}

		Runtime.getRuntime().exec("cmd /c start tlq -cabort -y -w1");
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
		}

		output.writeAndFlush(new DefaultEvent<String>("fdsafdsafdsdddddd",
				null, ChannelEventType.ChannelWrite, ""));

		Runtime.getRuntime().exec("cmd /c start tlq");

		output.writeAndFlush(new DefaultEvent<String>("fdsafdsafdsdddddd",
				null, ChannelEventType.ChannelWrite, ""));
		
		
	}
	
	public static void main(String[] args) throws IOException, TlqException{
		TLQChannelOutputTest2 tt = new TLQChannelOutputTest2();
		
		tt.testReConnect();
	}

}
