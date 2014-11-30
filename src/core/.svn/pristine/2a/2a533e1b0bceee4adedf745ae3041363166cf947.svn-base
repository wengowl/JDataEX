package org.jdataex.core.config;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import org.jdataex.util.CommonUtil;

/**
 * 类的配置信息，比如对应组件应该是加载那个class等。
 * 
 * @author TwelveFoldEr
 * 
 */
public class ClassConfig {

	public static String CONFIG_NAME = "class.properties";

	public static String KEY_ROOT_DOT = "class.";

	private static Properties properties = new Properties() ;
	private static File propertiesFile = new File(JDataExConfig.CONFIG_DIR,
			CONFIG_NAME);

	/**
	 * 这个在系统初始化的时候，必须调用。目的检查配置文件是否能被加载。
	 * 
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public static void init() throws FileNotFoundException, IOException {
		synchronized (properties) {
			properties.load(new FileInputStream(propertiesFile));
		}
	}

	/**
	 * 获取节点属性。
	 * 
	 * @param key
	 * @param defaultValue
	 * @return
	 */
	public static String getString(String key, String defaultValue) {
		return CommonUtil.getProperty(properties, key, defaultValue);
	}

	public static String getString(String key) {
		return CommonUtil.getProperty(properties, KEY_ROOT_DOT + key);
	}

	public static Integer getInteger(String key, Integer defaultValue) {
		return CommonUtil.getPropertyAsInteger(properties, KEY_ROOT_DOT + key,
				defaultValue);
	}

	public static Integer getInteger(String key) {
		return CommonUtil.getPropertyAsInteger(properties, KEY_ROOT_DOT + key);
	}

	public static Long getLong(String key, Long defaultValue) {
		return CommonUtil.getPropertyAsLong(properties, KEY_ROOT_DOT + key,
				defaultValue);
	}

	public static Long getLong(String key) {
		return CommonUtil.getPropertyAsLong(properties, KEY_ROOT_DOT + key);
	}

}
