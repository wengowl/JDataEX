package org.jdataex.engine.loader;

import static org.junit.Assert.assertEquals;

import java.io.File;
import java.io.IOException;

import org.dom4j.DocumentException;
import org.jdataex.BaseJDataExTest;
import org.jdataex.core.InitializationException;
import org.jdataex.engine.config.FlowConfig;
import org.jdataex.flow.FlowUtil;
import org.jdataex.flow.IFlow;
import org.jdataex.flow.component.step.MockStep;
import org.jdataex.flow.controller.ControllerException;
import org.jdataex.flow.controller.IComponentController;
import org.jdataex.util.FileUtil;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.Test;

public class FlowLoaderTest extends BaseJDataExTest {

	@Test
	public void testLoaderAttubites() throws IOException, DocumentException,
			InitializationException {
		String expected = "attCheckValue";

		IFlow flow = FlowUtil.loadFlow(this.getClass(), "flow-loader-test.xml");
		IComponentController controller = flow
				.getComponentControllerByID("controller");
		MockStep step = (MockStep) controller.getComponent("cid1");

		assertEquals(expected, step.getAttCheck());
	}

}
