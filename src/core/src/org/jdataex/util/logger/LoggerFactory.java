package org.jdataex.util.logger;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;

/**
 * 日志工厂类。可以获取根日志和默认日志。
 * 暂时写的比较固定，只支持logback。
 * @author TwelveFoldEr
 *
 */
public class LoggerFactory {

	private static Map<String, ILogger> loggers = new HashMap<String, ILogger>();

	public static ILogger getLogger(String name) {
		ILogger logger = loggers.get(name);

		if (null == logger) {
			synchronized (loggers) {
				logger = new Logback(org.slf4j.LoggerFactory.getLogger(name));
				loggers.put(name, logger);
			}
		}

		return logger;
	}

	/**
	 * 获取默认日志。目前暂时是获取根日志。
	 * @return 根日志。
	 */
	public static ILogger getDefaultLogger(){
		return getLogger(Logger.ROOT_LOGGER_NAME);
	}

	/**
	 * 获取根日志。
	 * @return 根日志。
	 */
	public static ILogger getRootLogger(){
		return getLogger(Logger.ROOT_LOGGER_NAME);
	}
	
	/**
	 * 获取测试日志。目前暂时还是根日志。
	 * @return 根日志。
	 */
	public static ILogger getTestLogger(){
		return getLogger(Logger.ROOT_LOGGER_NAME);
	}

}
