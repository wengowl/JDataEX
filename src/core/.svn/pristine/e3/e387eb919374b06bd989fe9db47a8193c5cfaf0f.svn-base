package org.jdataex.channel.tlq;

import org.jdataex.channel.common.ChannelEventType;
import org.jdataex.channel.event.DefaultEvent;
import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.mock.MockObject;
import org.jdataex.channel.net.NetAddress;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class TLQChannelInputTest {

	TLQChannelInput<String> input;

	TLQChannelOutput<String> output;

	@Before
	public void setUp() {
		input = new TLQChannelInput<String>("testinput", "lq");
		input.bind(new NetAddress("127.0.0.1", 10261));
		output = new TLQChannelOutput<String>("testoutput", "lq");
		output.connect(null);
	}

	@After
	public void clear() {
		input.close();
		output.disConnect();
	}

	//@Test
	public void testBind() {

	}

	//@Test
	public void testDoReadMsg() {
		
		 for (int i = 0; i < 100; i++) { output.writeAndFlush(new
		 DefaultEvent<String>("fdsafdsafdsdddddd" + i, null,ChannelEventType.ChannelWrite, "")); }
		 
		for (int i = 0; i < 100; i++) {
			IEvent<String> event = new DefaultEvent<String>();
			input.beginTran();
			if (input.doReadMsg(event)) {
				System.out.println(event.getMsg());
				input.commit();
			}
		}
	}
	
	@Test
	public void testBlocking(){
		IEvent<String> event = new DefaultEvent<String>();
		input.beginTran();
		if (input.doReadMsg(event)) {
			System.out.println(event.getMsg());
			input.commit();
		}
	}
	
	//@Test
	public void testDoReadObjectMsg(){
		
		TLQChannelInput<MockObject> input = new TLQChannelInput<MockObject>("testinput", "lq");
		input.bind(null);
		TLQChannelOutput<MockObject> output = new TLQChannelOutput<MockObject>("testoutput", "lq");
		output.connect(null);
		
		 for (int i = 0; i < 100; i++) { output.writeAndFlush(new
		 DefaultEvent<MockObject>(new MockObject("ddddd"+i,i), null,ChannelEventType.ChannelWrite, "")); }
		
		for (int i = 0; i < 100; i++) {
			IEvent<MockObject> event = new DefaultEvent<MockObject>();
			input.beginTran();
			if (input.doReadMsg(event)) {
				System.out.println(event.getMsg());
				input.commit();
			}
		}
		
		input.close();
		output.disConnect();
	}

	//@Test
	public void testNotCommit() {
		 for (int i = 0; i < 10; i++) { output.writeAndFlush(new
		 DefaultEvent<String>("i am not commit " + i, null,ChannelEventType.ChannelWrite, "")); }
		 
			for (int i = 0; i < 10; i++) {
				IEvent<String> event = new DefaultEvent<String>();
				if (input.doReadMsg(event)) {
					System.out.println(event.getMsg());
					//input.commit();
				}
			}
	}

}
