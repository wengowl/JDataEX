package org.jdataex.core.config;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import org.jdataex.util.CommonUtil;

/**
 * 节点相关配置信息，比如节点级的参数，日志级别、错误间隔时间等。
 * 
 * @author TwelveFoldEr
 * 
 */
public class NodeConfig {

	public static String CONFIG_NAME = "node.properties";

	public static String KEY_ROOT_DOT = "node.";

	public static String KEY_NAME = "name";
	public static String KEY_CODE = "code";

	public static String getNodeName() {
		return getString(KEY_NAME);
	}

	public static String getNodeCode() {
		return getString(KEY_CODE);
	}

	public static String KEY_RUNNER_INTERVAL_IN_MILLISECOND = "runnerIntervalInMillsecond";
	public static Integer DEFUALT_RUNNER_INTERVAL_IN_MILLISECOND = 200;
	public static Integer getRunnerIntervalInMillisecond() {
		return getInteger(KEY_RUNNER_INTERVAL_IN_MILLISECOND,
				DEFUALT_RUNNER_INTERVAL_IN_MILLISECOND);
	}

	public static String KEY_LOGGER_DOT = "logger.";
	public static String KEY_LOGGER_LEVEL = KEY_LOGGER_DOT + "level";
	public static String KEY_LOGGER_TYPE = KEY_LOGGER_DOT + "type";
	public static String KEY_LOGGER_DIR = KEY_LOGGER_DOT + "dir";

	public static final String LOGGER_LEVEL_INFO = "INFO";
	public static final String LOGGER_LEVEL_DEBUG = "DEBUG";

	public static final String LOGGER_TYPE_ROLLING = "Rolling";
	public static final String LOGGER_TYPE_DAILY_ROLLING = "DailyRolling";

	public static String getLoggerLevel() {
		return getString(KEY_LOGGER_LEVEL, LOGGER_LEVEL_INFO);
	}

	public static String getLoggerType() {
		return getString(KEY_LOGGER_TYPE, LOGGER_TYPE_DAILY_ROLLING);
	}

	public static String getLoggerDir() {
		return getString(KEY_LOGGER_DIR);
	}

	public static final String KEY_ERROR_DOT = "error.";
	public static final String KEY_ERROR_INTERVAL_IN_SECOND = KEY_ERROR_DOT
			+ "intervalInSecond";
	public static final Integer DEFAULT_ERROR_INVERVAL_IN_SECOND = 15;

	public static Integer getErrorIntervalInSecond() {
		return getInteger(KEY_ERROR_INTERVAL_IN_SECOND,
				DEFAULT_ERROR_INVERVAL_IN_SECOND);
	}

	public static final String KEY_SCHEDULER_DOT = "scheduler.";
	public static final String KEY_SCHEDULER_LOOP_INTERVAL_IN_MILLISECOND = KEY_SCHEDULER_DOT
			+ "loopIntervalInMillisecond";
	public static final Integer DEFAULT_SCHEDULER_LOOP_INTERVAL_IN_MILLISECOND = 5000;

	public static Integer getSchedulerLoopIntervalMillisecond() {
		return getInteger(KEY_SCHEDULER_LOOP_INTERVAL_IN_MILLISECOND,
				DEFAULT_SCHEDULER_LOOP_INTERVAL_IN_MILLISECOND);
	}

	private static Properties properties = new Properties();
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
