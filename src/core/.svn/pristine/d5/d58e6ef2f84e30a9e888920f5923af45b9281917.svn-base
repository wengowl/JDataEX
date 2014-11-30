package org.jdataex.flow.framework.scheduler;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.util.HashMap;
import java.util.Map;

import org.jdataex.BaseJDataExTest;
import org.jdataex.channel.DefaultChannelContainer;
import org.jdataex.channel.DefaultChannelStage;
import org.jdataex.channel.IChannelContainer;
import org.jdataex.channel.IChannelOutput;
import org.jdataex.channel.IChannelStage;
import org.jdataex.channel.executor.DefaultExecutor;
import org.jdataex.channel.future.IChannelFuture;
import org.jdataex.channel.handler.IHandler;
import org.jdataex.channel.local.LocalChannelInput;
import org.jdataex.channel.local.LocalChannelOutput;
import org.jdataex.channel.net.INetAddress;
import org.jdataex.channel.net.NetAddress;
import org.jdataex.core.InitializationException;
import org.jdataex.core.card.GUIC;
import org.jdataex.flow.FlowUtil;
import org.jdataex.flow.IFlow;
import org.jdataex.flow.component.step.MockStep;
import org.jdataex.flow.controller.ControllerException;
import org.jdataex.flow.controller.IComponentController;
import org.jdataex.flow.controller.StepController;
import org.jdataex.flow.framework.MockFirstStep;
import org.jdataex.flow.framework.MockSecondStep;
import org.jdataex.flow.handler.ChannelStepHandler;
import org.jdataex.flow.handler.IComponentHandler;
import org.jdataex.flow.row.Column;
import org.jdataex.flow.row.IRow;
import org.jdataex.flow.row.IRowSet;
import org.jdataex.flow.row.Row;
import org.jdataex.flow.row.RowSet;
import org.jdataex.util.logger.LoggerFactory;
import org.junit.Test;

public class SchedulerTriggerTest extends BaseJDataExTest {

	private int runTimes = 10;

	@Test
	public void testByConfig() throws InitializationException, ControllerException {
		IFlow flow = FlowUtil.loadFlowAndRunning(this.getClass(),
				"scheduler-trigger-test-config.xml",runTimes);

		MockStep firstStep = (MockStep) flow.getFirstComponentController()
				.getComponent("first");
		MockStep secondStep = (MockStep) flow.getFirstComponentController()
				.getComponent("second");
		
		assertEquals(runTimes, firstStep.getCheckCount());
		assertEquals(firstStep.getCheckCount(), secondStep.getCheckCount());
	}

}
