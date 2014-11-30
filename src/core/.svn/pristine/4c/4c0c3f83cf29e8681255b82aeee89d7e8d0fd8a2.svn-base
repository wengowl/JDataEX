package org.jdataex.i18n;

import static org.junit.Assert.*;

import org.jdataex.util.FileUtil;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class MessagesTest {

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testGeString() {
		String actual = Messages.getMessage(MessagesTest.class, "Test.Message");
		String expected = "不能为连接池 [{0}] 和类 [{1}] 加载驱动";

		assertEquals(expected, actual);
		
		actual = Messages.getMessage(MessagesTest.class, "Test.Message");
		assertEquals(expected, actual);
	}

}
