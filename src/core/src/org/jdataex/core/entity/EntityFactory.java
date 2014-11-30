package org.jdataex.core.entity;

import org.jdataex.core.config.ClassConfig;

public class EntityFactory {

	@SuppressWarnings("unchecked")
	public static <T> T newInstance(Class<T> clazz)
			throws InstantiationException, IllegalAccessException,
			ClassNotFoundException {
		String className = ClassConfig.getString(clazz.getName());

		return (T) ClassLoader.getSystemClassLoader().loadClass(className)
				.newInstance();
	}
}
