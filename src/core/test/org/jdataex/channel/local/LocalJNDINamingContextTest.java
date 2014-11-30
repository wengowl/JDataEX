package org.jdataex.channel.local;

import javax.naming.NamingException;

import org.jdataex.channel.naming.LocalJNDINamingContext;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class LocalJNDINamingContextTest {

	LocalJNDINamingContext context;

	@Before
	public void setUp() {
		context = LocalJNDINamingContext.getInstance();
	}

	@After
	public void clear() {
		context.close();
	}

	@Test
	public void testBind() throws NamingException {

/*		IChannelStage<String> ics = new DefaultChannelStage<String>("test1");

		context.bind("test1", ics);

		assertTrue(true);*/
	}

	@Test
	public void testLookUp() throws NamingException {

/*		IChannelStage<String> ics = new DefaultChannelStage<String>("test2");

		context.bind("test2", ics);

		System.out.println(context.lookUp("test2"));
		@SuppressWarnings("unchecked")
		IChannelStage<String> ics1 = (IChannelStage<String>) context
				.lookUp("test2");
		assertNotNull(ics1);*/
	}

}
