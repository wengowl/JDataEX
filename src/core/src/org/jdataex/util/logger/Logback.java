package org.jdataex.util.logger;

import org.jdataex.i18n.Messages;
import org.slf4j.Logger;
import org.slf4j.Marker;

public class Logback implements ILogger {

	/**
	 * node.logger.pattern中添加%F:%L|%M可以打印调用类的名称和行数、方法名。
	 */
	private Logger logger;

	public Logback(Logger logger) {
		super();
		this.logger = logger;
	}

	@Override
	public String getName() {
		return logger.getName();
	}

	@Override
	public boolean isTraceEnabled() {
		return logger.isTraceEnabled();
	}

	@Override
	public void trace(String msg) {
		logger.trace(msg);
	}

	@Override
	public void trace(String format, Object arg) {
		logger.trace(format, arg);
	}

	@Override
	public void trace(String format, Object arg1, Object arg2) {
		logger.trace(format, arg1, arg2);
	}

	@Override
	public void trace(String format, Object... arguments) {
		logger.trace(format, arguments);
	}

	@Override
	public void trace(String msg, Throwable t) {
		logger.trace(msg, t);
	}

	@Override
	public boolean isTraceEnabled(Marker marker) {
		return logger.isTraceEnabled(marker);
	}

	@Override
	public void trace(Marker marker, String msg) {
		logger.trace(marker, msg);
	}

	@Override
	public void trace(Marker marker, String format, Object arg) {
		logger.trace(marker, format, arg);
	}

	@Override
	public void trace(Marker marker, String format, Object arg1, Object arg2) {
		logger.trace(marker, format, arg1, arg2);
	}

	@Override
	public void trace(Marker marker, String format, Object... argArray) {
		logger.trace(marker, format, argArray);
	}

	@Override
	public void trace(Marker marker, String msg, Throwable t) {
		logger.trace(marker, msg, t);
	}

	@Override
	public boolean isDebugEnabled() {
		return logger.isDebugEnabled();
	}

	@Override
	public void debug(String msg) {
		logger.debug(msg);
	}

	@Override
	public void debug(String format, Object arg) {
		logger.debug(format, arg);
	}

	@Override
	public void debug(String format, Object arg1, Object arg2) {
		logger.debug(format, arg1, arg2);
	}

	@Override
	public void debug(String format, Object... arguments) {
		logger.debug(format, arguments);
	}

	@Override
	public void debug(String msg, Throwable t) {
		logger.debug(msg, t);
	}

	@Override
	public boolean isDebugEnabled(Marker marker) {
		return logger.isDebugEnabled(marker);
	}

	@Override
	public void debug(Marker marker, String msg) {
		logger.debug(marker, msg);
	}

	@Override
	public void debug(Marker marker, String format, Object arg) {
		logger.debug(marker, format, arg);
	}

	@Override
	public void debug(Marker marker, String format, Object arg1, Object arg2) {
		logger.debug(marker, format, arg1, arg2);
	}

	@Override
	public void debug(Marker marker, String format, Object... arguments) {
		logger.debug(marker, format, arguments);
	}

	@Override
	public void debug(Marker marker, String msg, Throwable t) {
		logger.debug(marker, msg, t);
	}

	@Override
	public boolean isInfoEnabled() {
		return logger.isInfoEnabled();
	}

	@Override
	public void info(String msg) {
		logger.info(msg);
	}

	@Override
	public void info(String format, Object arg) {
		logger.info(format, arg);
	}

	@Override
	public void info(String format, Object arg1, Object arg2) {
		logger.info(format, arg1, arg2);
	}

	@Override
	public void info(String format, Object... arguments) {
		logger.info(format, arguments);
	}

	@Override
	public void info(String msg, Throwable t) {
		logger.info(msg, t);
	}

	@Override
	public boolean isInfoEnabled(Marker marker) {
		return logger.isInfoEnabled(marker);
	}

	@Override
	public void info(Marker marker, String msg) {
		logger.info(marker, msg);
	}

	@Override
	public void info(Marker marker, String format, Object arg) {
		logger.info(marker, format, arg);
	}

	@Override
	public void info(Marker marker, String format, Object arg1, Object arg2) {
		logger.info(marker, format, arg1, arg2);
	}

	@Override
	public void info(Marker marker, String format, Object... arguments) {
		logger.info(marker, format, arguments);
	}

	@Override
	public void info(Marker marker, String msg, Throwable t) {
		logger.info(marker, msg, t);
	}

	@Override
	public boolean isWarnEnabled() {
		return logger.isWarnEnabled();
	}

	@Override
	public void warn(String msg) {
		logger.warn(msg);
	}

	@Override
	public void warn(String format, Object arg) {
		logger.warn(format, arg);
	}

	@Override
	public void warn(String format, Object... arguments) {
		logger.warn(format, arguments);
	}

	@Override
	public void warn(String format, Object arg1, Object arg2) {
		logger.warn(format, arg1, arg2);
	}

	@Override
	public void warn(String msg, Throwable t) {
		logger.warn(msg, t);
	}

	@Override
	public boolean isWarnEnabled(Marker marker) {
		return logger.isWarnEnabled(marker);
	}

	@Override
	public void warn(Marker marker, String msg) {
		logger.warn(marker, msg);
	}

	@Override
	public void warn(Marker marker, String format, Object arg) {
		logger.warn(marker, format, arg);
	}

	@Override
	public void warn(Marker marker, String format, Object arg1, Object arg2) {
		logger.warn(marker, format, arg1, arg2);
	}

	@Override
	public void warn(Marker marker, String format, Object... arguments) {
		logger.warn(marker, format, arguments);
	}

	@Override
	public void warn(Marker marker, String msg, Throwable t) {
		logger.warn(marker, msg, t);
	}

	@Override
	public boolean isErrorEnabled() {
		return logger.isErrorEnabled();
	}

	@Override
	public void error(String msg) {
		logger.error(msg);
	}

	@Override
	public void error(String format, Object arg) {
		logger.error(format, arg);
	}

	@Override
	public void error(String format, Object arg1, Object arg2) {
		logger.error(format, arg1, arg2);
	}

	@Override
	public void error(String format, Object... arguments) {
		logger.error(format, arguments);
	}

	@Override
	public void error(String msg, Throwable t) {
		logger.error(msg, t);
	}

	@Override
	public boolean isErrorEnabled(Marker marker) {
		return logger.isErrorEnabled(marker);
	}

	@Override
	public void error(Marker marker, String msg) {
		logger.error(marker, msg);
	}

	@Override
	public void error(Marker marker, String format, Object arg) {
		logger.error(marker, format, arg);
	}

	@Override
	public void error(Marker marker, String format, Object arg1, Object arg2) {
		logger.error(marker, format, arg1, arg2);
	}

	@Override
	public void error(Marker marker, String format, Object... arguments) {
		logger.error(marker, format, arguments);
	}

	@Override
	public void error(Marker marker, String msg, Throwable t) {
		logger.error(marker, msg, t);
	}


	/**
	 * 以下都是扩展的方法
	 */
	
	@Override
	public void traceI18nc(Class<?> clazz, String key, Object arg1, Object arg2) {
		logger.trace(Messages.getMessage(clazz, key), arg1, arg2);
	}

	@Override
	public void traceI18nc(Class<?> clazz, String key, Object... arguments) {
		logger.trace(Messages.getMessage(clazz, key), arguments);
	}

	@Override
	public void traceI18nc(Class<?> clazz, String key, Object arg) {
		logger.trace(Messages.getMessage(clazz, key), arg);
	}

	@Override
	public void traceI18nc(Class<?> clazz, String key, Throwable t) {
		logger.trace(Messages.getMessage(clazz, key), t);
	}

	@Override
	public void traceI18nc(Class<?> clazz, String key) {
		logger.trace(Messages.getMessage(clazz, key));
	}
	
	@Override
	public void debugI18nc(Class<?> clazz, String key, Object arg1, Object arg2) {
		logger.debug(Messages.getMessage(clazz, key), arg1, arg2);
	}

	@Override
	public void debugI18nc(Class<?> clazz, String key, Object... arguments) {
		logger.debug(Messages.getMessage(clazz, key), arguments);
	}

	@Override
	public void debugI18nc(Class<?> clazz, String key, Object arg) {
		logger.debug(Messages.getMessage(clazz, key), arg);
	}

	@Override
	public void debugI18nc(Class<?> clazz, String key, Throwable t) {
		logger.debug(Messages.getMessage(clazz, key), t);
	}

	@Override
	public void debugI18nc(Class<?> clazz, String key) {
		logger.debug(Messages.getMessage(clazz, key));
	}
	
	@Override
	public void infoI18nc(Class<?> clazz, String key, Object arg1, Object arg2) {
		logger.info(Messages.getMessage(clazz, key), arg1, arg2);
	}

	@Override
	public void infoI18nc(Class<?> clazz, String key, Object... arguments) {
		logger.info(Messages.getMessage(clazz, key), arguments);
	}

	@Override
	public void infoI18nc(Class<?> clazz, String key, Object arg) {
		logger.info(Messages.getMessage(clazz, key), arg);
	}

	@Override
	public void infoI18nc(Class<?> clazz, String key, Throwable t) {
		logger.info(Messages.getMessage(clazz, key), t);
	}

	@Override
	public void infoI18nc(Class<?> clazz, String key) {
		logger.info(Messages.getMessage(clazz, key));
	}
	
	@Override
	public void warnI18nc(Class<?> clazz, String key, Object arg1, Object arg2) {
		logger.warn(Messages.getMessage(clazz, key), arg1, arg2);
	}

	@Override
	public void warnI18nc(Class<?> clazz, String key, Object... arguments) {
		logger.warn(Messages.getMessage(clazz, key), arguments);
	}

	@Override
	public void warnI18nc(Class<?> clazz, String key, Object arg) {
		logger.warn(Messages.getMessage(clazz, key), arg);
	}

	@Override
	public void warnI18nc(Class<?> clazz, String key, Throwable t) {
		logger.warn(Messages.getMessage(clazz, key), t);
	}

	@Override
	public void warnI18nc(Class<?> clazz, String key) {
		logger.warn(Messages.getMessage(clazz, key));
	}
	
	@Override
	public void errorI18nc(Class<?> clazz, String key, Object arg1, Object arg2) {
		logger.error(Messages.getMessage(clazz, key), arg1, arg2);
	}

	@Override
	public void errorI18nc(Class<?> clazz, String key, Object... arguments) {
		logger.error(Messages.getMessage(clazz, key), arguments);
	}

	@Override
	public void errorI18nc(Class<?> clazz, String key, Object arg) {
		logger.error(Messages.getMessage(clazz, key), arg);
	}

	@Override
	public void errorI18nc(Class<?> clazz, String key, Throwable t) {
		logger.error(Messages.getMessage(clazz, key), t);
	}

	@Override
	public void errorI18nc(Class<?> clazz, String key) {
		logger.error(Messages.getMessage(clazz, key));
	}
}
