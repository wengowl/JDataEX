package org.jdataex.core;

import java.io.IOException;

import org.jdataex.core.config.ClassConfig;
import org.jdataex.core.config.NodeConfig;
import org.jdataex.core.context.Context;

public class GlobalInitializer {

	public static void initialization() throws InitializationException {
		try {
			initConfig();
		} catch (IOException e) {
			throw new InitializationException(
					"Initialized of configs is failed.", e);
		}
		
		initContext();
	}

	public static void initConfig() throws IOException {
		ClassConfig.init();
		NodeConfig.init();
	}
	
	public static void initContext() {
		// TODO fix it.
		Context.putEntity("test",1);
		System.out.println("[fix it] test=" + Context.getEntity("test"));
		Context.removeEntity("test");
	}
}
