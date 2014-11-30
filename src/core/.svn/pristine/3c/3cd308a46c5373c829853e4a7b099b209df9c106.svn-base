package org.jdataex.channel.util;

import static org.junit.Assert.*;

import java.util.Map;

import org.junit.Test;

public class EventStringPropsUtilTest {
	
	@Test
	public void setUp(){
		
	}
	
	@Test
	public void clear(){
		
	}

	@Test
	public void testGetProperties() {
		Map<String,String> map = EventStringPropsUtil.getProperties("file =   c:/dddd/sdfads  ;\n" +
				"   prop2=ddddd;prop3=fadf; \n");
		assertEquals(map.get("file"), "c:/dddd/sdfads");
		assertEquals(map.get("prop2"), "ddddd");
		assertEquals(map.get("prop3"), "fadf");
	}

}
