package org.jdataex.flow.framework.channel;

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

public class ChannelStepTest extends BaseJDataExTest {

	private int runTimes = 10;

	@Test
	public void testChannelByConfig() throws InitializationException, ControllerException {
		IFlow flow = FlowUtil.loadFlowAndRunning(this.getClass(),
				"channel-step-test-config.xml",runTimes);

		MockStep firstStep = (MockStep) flow.getFirstComponentController()
				.getComponent("first");
		MockStep secondStep = (MockStep) flow.getFirstComponentController()
				.getComponent("second");
		
		assertEquals(runTimes, firstStep.getCheckCount());
		assertEquals(firstStep.getCheckCount(), secondStep.getCheckCount());
	}

	@Test
	public void testChannel() throws InitializationException {

		IChannelStage<IRowSet> firstStage = createChannelStage("first");
		IChannelStage<IRowSet> secondstage = createNullChannelStage("second");

		MockStep firstStep = new MockFirstStep();
		firstStep.setGUIC(new GUIC("firstStep"));
		MockStep secondStep = new MockSecondStep();
		secondStep.setGUIC(new GUIC("secondStep"));

		IHandler<IRowSet> secondHandler = new ChannelStepHandler(secondStep,
				new GUIC("secondHandler"));
		secondstage.addBefore(secondHandler);
		secondstage.start(null, null);

		IHandler<IRowSet> firstHandler = new ChannelStepHandler(firstStep,
				new GUIC("firstHandler"));
		firstStage.addBefore(firstHandler);
		Map<String, INetAddress> map = new HashMap<String, INetAddress>();
		map.put("firstOutput", new NetAddress("second", 0));
		firstStage.start(null, map);

		Map<GUIC, IComponentController> controllers = new HashMap<>();
		IComponentController cc = new StepController("testChannel");
		controllers.put(cc.getGUIC(), cc);

		cc.addComponentHanlder((IComponentHandler) firstHandler);
		cc.addComponentHanlder((IComponentHandler) secondHandler);

		IChannelFuture<IRowSet> cf = null;
		for (int i = 0; i < runTimes; i++) {
			IRowSet rowSet = new RowSet();
			IRow row = new Row();
			row.putColumn(new Column("Att01", "1"));
			rowSet.putRow(row);

			cf = firstStage.triggerChannelInput(rowSet);
			assertTrue("Running channel times is " + i, cf.isSuccess());
		}

		assertEquals(runTimes, firstStep.getCheckCount());
		assertEquals(firstStep.getCheckCount(), secondStep.getCheckCount());

	}

	private IChannelStage<IRowSet> createChannelStage(String name) {
		IChannelStage<IRowSet> stage = createNullChannelStage(name);

		IChannelOutput<IRowSet> out = new LocalChannelOutput<>(name + "Output");

		stage.getChannelContainer().addOutput(out);
		return stage;
	}

	private IChannelStage<IRowSet> createNullChannelStage(String name) {
		IChannelStage<IRowSet> stage = new DefaultChannelStage<IRowSet>(name);
		IChannelContainer<IRowSet> cr = new DefaultChannelContainer<IRowSet>(
				name + "container");

		cr.setInput(new LocalChannelInput<IRowSet>(name + "Input"));

		stage.setChannelContainer(cr);
		stage.setExecutor(new DefaultExecutor<IRowSet>(1),
				new DefaultExecutor<IRowSet>(1));

		return stage;
	}
}
