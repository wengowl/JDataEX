package org.jdataex.channel.util;

import java.util.ArrayList;
import java.util.List;

import junit.framework.Assert;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class ObjectAndByteTest {
	
	@SuppressWarnings("rawtypes")
	List list = new ArrayList();
	
	@SuppressWarnings("unchecked")
	@Before
	public void setUp(){
		list.add("Stringddddd");
		list.add("dfasdfeeee");
	}
	
	@After
	public void clear(){
		list= null;
	}

	@Test
	public void testToByteArray() {
		byte[] by = ObjectAndByte.toByteArray(list);
		System.out.println(new String(by));
		Assert.assertNotNull(by);
	}

	@Test
	public void testToObject() {
		byte[] by = ObjectAndByte.toByteArray(list);
		@SuppressWarnings("rawtypes")
		List list = (List) ObjectAndByte.toObject(by);
		Assert.assertEquals(list.size(), 2);
		Assert.assertEquals(list.get(0), "Stringddddd");
	}

}
