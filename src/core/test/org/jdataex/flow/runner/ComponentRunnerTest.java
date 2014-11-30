package org.jdataex.flow.runner;

import org.jdataex.BaseJDataExTest;
import org.junit.Test;

public class ComponentRunnerTest extends BaseJDataExTest{

	@Test
	public void testRunning() {
		IComponentRunner thread = new SchedulerRunner();
		new Thread(thread).start();

	}

	public static void main(String[] args) {
		try {
			setUpBeforeClass();
			
			IComponentRunner thread = new SchedulerRunner();
			new Thread(thread).start();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
