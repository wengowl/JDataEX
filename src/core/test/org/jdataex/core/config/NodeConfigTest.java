package org.jdataex.core.config;

import static org.junit.Assert.assertEquals;

import org.jdataex.BaseJDataExTest;
import org.junit.Test;

public class NodeConfigTest extends BaseJDataExTest{

	@Test
	public void testLoad() {
		assertEquals("Node name is not right.", "JDataExNode",
				NodeConfig.getNodeName());
		
		assertEquals("Node code is not right.", "JDataExCode",
				NodeConfig.getNodeCode());
		
		assertEquals("Node code is not right.", "deploy",
				NodeConfig.getString("context.deploy.dir"));
		
	}

}
