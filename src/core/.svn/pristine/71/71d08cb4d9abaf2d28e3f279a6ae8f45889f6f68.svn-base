package org.jdataex.channel.util;

import java.util.HashMap;
import java.util.Map;

import org.jdataex.channel.common.DefaultValues;
import org.jdataex.util.AssertUtil;

/**
 * 用于解析Event的spring properties
 * @author chaos
 *
 */
public final class EventStringPropsUtil {

	/**
	 * 解析event的string Properties,如果解析不了string 返回空的map
	 * @param text
	 * @return
	 */
	public static Map<String, String> getProperties(String text) {
		AssertUtil.assertNullOrBlank(text);
		Map<String, String> map = new HashMap<String, String>();
		String[] props = text.split(DefaultValues.EVENT_DEFAULT_SEPARATOR);
		for (String prop : props) {
			String[] propNameAndValue = prop
					.split(DefaultValues.EVENT_DEFAULT_SIGN);
			if (propNameAndValue.length != 2)
				continue;
			map.put(propNameAndValue[0].trim(), propNameAndValue[1].trim());
		}
		return map;
	}
}
