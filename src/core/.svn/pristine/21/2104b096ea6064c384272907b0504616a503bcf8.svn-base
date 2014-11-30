package org.jdataex.util;

import static org.jdataex.util.CommonUtil.isNull;
import static org.jdataex.util.CommonUtil.isNullOrBlank;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

/**
 * 
 * @author TwelveFoldEr
 * @deprecated 转移到了
 *
 */
public class DataExUtil {

	public static String INN_SEPARATOR = ",";

	public static String PATH_OF_CONFIG = "config";

	public static final String CONTEXT_TEMP_DIR = "context.temp.dir";
	public static final String CONTEXT_TEMP_DIR_DEFAULT = "temp";
	public static final String CONTEXT_ERROR_WAIT_TIME = "context.error.waitTime";
	public static final String CONTEXT_ERROR_WAIT_TIME_DEFAULT = "5000";
	public static final String COMPONENT_DATABASE_BATCHSIZE = "component.database.batchSize";
	public static final String COMPONENT_DATABASE_BATCHSIZE_DEFAULT = "1000";

	public static final String LOG_LEVEL_VALUE_INFO = "INFO";
	public static final String LOG_LEVEL_VALUE_DEBUG = "DEBUG";

	public static final String LOG_TYPE_VALUE_ROLLING = "Rolling";
	public static final String LOG_TYPE_VALUE_DAILY_ROLLING = "DailyRolling";

	public static final String LOG_DATE_PATTERN = "log.datePattern";
	public static final String LOG_DATE_PATTERN_DEFAULT = "yyyy-MM-dd";
	public static final String LOG_CONVERSION_PATTERN = "";
	public static final String LOG_CONVERSION_PATTERN_DEFAULT = "%-d{yyyy-MM-dd HH:mm:ss} [%t]-[%p] %m%n";

	private static Properties nodeProperties = null;
	private static Properties sysProperties = null;

	public static Integer getErrorWaitTime() {
		return new Integer(getProperty(CONTEXT_ERROR_WAIT_TIME,
				CONTEXT_ERROR_WAIT_TIME_DEFAULT));
	}

	public static String getNodeName() {
		return getProperty("node.name");
	}

	public static String getNodeCode() {
		return getProperty("node.code");
	}

	public static String getLogLevel() {
		return getProperty("log.level", LOG_LEVEL_VALUE_INFO);
	}

	public static String getLogType() {
		return getProperty("log.type", LOG_TYPE_VALUE_DAILY_ROLLING);
	}

	public static String getLogDir() {
		return getProperty("log.dir");
	}

	/**
	 * 从Properties文件里面获取String类型的属性值。<br>
	 * 如果Properties为空、key为空和值无法转换成Integer则返回默认值。
	 * 
	 * @param props
	 *            属性文件
	 * @param key
	 *            关键字
	 * @param defaultValue
	 *            默认值
	 * @return 返回属性值（String 类型）；Properties为空、key为空和值无法转换成Integer则返回默认值。
	 */
	public static String getProperty(Properties props, String key,
			String defaultValue) {
		if (isNull(props)
				|| isNullOrBlank(key)
				|| isNullOrBlank(props
						.getProperty(key, defaultValue.toString())))
			return defaultValue;

		return props.getProperty(key, defaultValue.toString());
	}

	public static String getProperty(String key, String defaultValue) {
		loadProperty();

		return nodeProperties.getProperty(key, defaultValue);
	}

	public static String getProperty(String key) {
		loadProperty();

		return nodeProperties.getProperty(key);
	}

	private static void loadProperty() {
		if (isNull(nodeProperties)) {
			nodeProperties = new Properties();
			synchronized (nodeProperties) {
				File file = new File(PATH_OF_CONFIG + "/TongDataEx.properties");

				try {
					nodeProperties.load(new FileInputStream(file));
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static String getSysClassProperty(String key) {
		return getSysProperty("sys.class." + key);
	}

	public static String getSysClassProperty(String key, String defaultValue) {
		return getSysProperty("sys.class." + key, defaultValue);
	}

	public static String getSysProperty(String key) {
		loadSysProperty();

		return sysProperties.getProperty(key);
	}

	private static void loadSysProperty() {
		if (isNull(sysProperties)) {
			sysProperties = new Properties();
			synchronized (sysProperties) {
				File file;
				try {
					file = new File(PATH_OF_CONFIG
							+ "/TongDataExSys.properties");

					sysProperties.load(new FileInputStream(file));
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

		}
	}

	public static String getSysProperty(String key, String defaultValue) {
		String value = getSysProperty(key);
		if (CommonUtil.isNullOrBlank(value)) {
			return defaultValue;
		} else {
			return value;
		}
	}

}
