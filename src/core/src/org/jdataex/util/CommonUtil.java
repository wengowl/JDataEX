package org.jdataex.util;

import java.io.File;
import java.util.Properties;

public class CommonUtil {
	/**
	 * 从Properties文件里面获取String类型的属性值。<br>
	 * 如果Properties为空或者key为空则返回默认值。
	 * 
	 * @param props
	 *            属性文件
	 * @param key
	 *            关键字
	 * @param defaultValue
	 *            默认值
	 * @return 返回属性值（String 类型）；Properties为空或者key为空则返回默认值。
	 */
	public static String getProperty(Properties props, String key,
			String defaultValue) {
		if (isNull(props) || isBlank(key))
			return defaultValue;

		if (isNull(props.getProperty(key)) && isNull(defaultValue))
			return null;

		return props.getProperty(key, defaultValue);
	}

	/**
	 * 从Properties文件里面获取Integer类型的属性值。<br>
	 * 如果Properties为空或者key为空返回null。
	 * 
	 * @param props
	 *            Properties文件
	 * @param key
	 *            关键字
	 * @param defaultValue
	 *            默认值
	 * @return 返回属性值；<br>
	 *         Properties为空或者key为空返回null。
	 */
	public static String getProperty(Properties props, String key) {
		if (isNull(props) || isBlank(key)) {
			return null;
		}

		return props.getProperty(key);
	}

	/**
	 * 从Properties文件里面获取Integer类型的属性值。<br>
	 * 如果Properties为空或者key为空、以及值无法转换成Integer则都会返回默认值。
	 * 
	 * @param props
	 *            Properties文件
	 * @param key
	 *            关键字
	 * @param defaultValue
	 *            默认值
	 * @return 返回属性值（Integer 类型）；<br>
	 *         Properties为空或者key为空、以及值无法转换成Integer则都会返回默认值。
	 */
	public static Integer getPropertyAsInteger(Properties props, String key,
			Integer defaultValue) {

		String value = getProperty(props, key, defaultValue);

		try {
			return new Integer(value);
		} catch (Exception e) {
			return defaultValue;
		}
	}

	/**
	 * 从Properties文件里面获取Integer类型的属性值。<br>
	 * 如果Properties为空或者key为空、以及值无法转换成Integer则都会返回默认值。
	 * 
	 * @param props
	 *            Properties文件
	 * @param key
	 *            关键字
	 * @param defaultValue
	 *            默认值
	 * @return 属性值（Integer 类型）；
	 */
	public static Integer getPropertyAsInteger(Properties props, String key) {
		return getPropertyAsInteger(props, key, null);
	}

	/**
	 * 从Properties文件里面获取Integer类型的属性值。<br>
	 * 如果Properties为空或者key为空、以及值无法转换成Integer则都会返回默认值。
	 * 
	 * @param props
	 *            Properties文件
	 * @param key
	 *            关键字
	 * @param defaultValue
	 *            默认值
	 * @return 返回属性值（Integer 类型）；<br>
	 *         Properties为空或者key为空、以及值无法转换成Integer则都会返回默认值。
	 */
	public static Long getPropertyAsLong(Properties props, String key,
			Long defaultValue) {

		String value = getProperty(props, key, defaultValue);

		try {
			return new Long(value);
		} catch (Exception e) {
			return defaultValue;
		}
	}
	
	public static Long getPropertyAsLong(Properties props, String key) {
		return getPropertyAsLong(props, key, null);
	}

	/**
	 * 从Properties文件里面获取属性值。<br>
	 * 如果Properties为空或者key为空都会返回默认值。
	 * 
	 * @param props
	 *            Properties文件
	 * @param key
	 *            关键字
	 * @param defaultValue
	 *            默认值
	 * @return 返回属性值；如果Properties为空或者key为空都会返回默认值。
	 */
	public static String getProperty(Properties props, String key,
			Object defaultValue) {

		if (null == props || null == key || null == getProperty(props, key)) {
			return null == defaultValue ? null : defaultValue.toString();
		}

		return getProperty(props, key);
	}

	/**
	 * 判断字符串是否为空（包括字符串对象为空）。
	 * 
	 * @param content
	 *            需要判断的字符串。
	 * @return 为空是返回true，否则返回false。
	 */
	public static boolean isBlank(String content) {
		if (isNull(content) || "".equals(content.trim()))
			return true;
		return false;
	}

	/**
	 * 判断字符串是否为不空（包括字符串对象为不空）。
	 * 
	 * @param content
	 *            需要判断的字符串。
	 * @return 为不空是返回true，否则返回false。
	 */
	public static boolean isNotBlank(String content) {
		return !isBlank(content);
	}

	/**
	 * 判断实例是否为非空。
	 * 
	 * @param object
	 *            需要判断的实例对象。
	 * @return 为空是返回false，否则返回true。
	 */
	public static boolean isNotNull(Object obj) {
		return !isNull(obj);
	}

	public static boolean isNotNullValue(Object obj) {
		return !isNullValue(obj);
	}

	/**
	 * 判断实例是否为空。
	 * 
	 * @param object
	 *            需要判断的实例对象。
	 * @return 为空是返回true，否则返回false。
	 */
	public static boolean isNull(Object obj) {
		return obj == null ? true : false;
	}

	/**
	 * 判断字符串是否为空（包括字符串对象为空）。
	 * 
	 * @param obj
	 *            需要判断的字符串。
	 * @return 为空是返回true，否则返回false。
	 */
	public static boolean isNullOrBlank(Object obj) {
		if (isNull(obj)) {
			return true;
		} else {
			if (obj instanceof String) {
				return isBlank(obj.toString().trim());
			} else {
				return false;
			}
		}
	}

	/**
	 * 判断目标实例对象是否是象征为空值。比如Null，空格，"NULL"字符串均为象征为空值。
	 * 
	 * @param object
	 *            需要判断的实例对象。
	 * @return 象征为空值返回true，否则返回false。
	 */
	public static boolean isNullValue(Object obj) {
		if (isNull(obj) || isBlank(obj.toString())
				|| "null".equalsIgnoreCase(obj.toString())) {
			return true;
		} else {
			return false;
		}
	}

}
