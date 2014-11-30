package org.jdataex.channel.local;

import static org.junit.Assert.fail;

import org.jdataex.channel.IChannelOutput;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class LocalChannelOutputTest {
	
	private IChannelOutput<String> output;
	
	@Before
	public void setUp(){
		output = new LocalChannelOutput<String>("test1");
	}
	
	@After
	public void clear(){
		output.disConnect();
	}

	@Test
	public void testSetWrite() {
		fail("Not yet implemented");
	}

	@Test
	public void testWriteAndFlush() {
		fail("Not yet implemented");
	}

	@Test
	public void testConnect() {
		//output.connect(remoteAddress);
	}

	@Test
	public void testDisConnect() {
		fail("Not yet implemented");
	}

}
