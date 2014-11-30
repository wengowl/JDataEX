package org.jdataex.core.entity;

import static org.junit.Assert.*;

import org.jdataex.BaseJDataExTest;
import org.jdataex.util.logger.LoggerFactory;
import org.jdataex.util.scheduler.IScheduler;
import org.junit.Test;

public class EntityFactoryTest extends BaseJDataExTest {

	@Test
	public void testNewInstance(){
		String expected = "org.jdataex.util.scheduler.LoopScheduler";
		String actual = "Not instance";
		IScheduler s;
		try {
			s = EntityFactory.newInstance(IScheduler.class);
			actual = s.getClass().getName();
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException e) {
			LoggerFactory.getTestLogger().error("New instance is error.",e);
		}
		
		assertEquals("New instance is not expected.", expected, actual);
		
	}
}
