package org.jdataex.util.logger;

import ch.qos.logback.classic.sift.SiftingAppender;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.Appender;

/**
 * 根据日志文件名称筛选Appender。它可以根据logger name去指定不同的文件名称。
 * 
 * @author TwelveFoldEr
 *
 */
public class SiftingWithLoggerNameAppender extends SiftingAppender {

	@Override
	protected void append(ILoggingEvent event) {
		if (!isStarted()) {
			return;
		}
		// source
		// String discriminatingValue = this.getDiscriminator()
		// .getDiscriminatingValue(event);
		String discriminatingValue = event.getLoggerName();
		long timestamp = getTimestamp(event);

		Appender<ILoggingEvent> appender = this.getAppenderTracker()
				.getOrCreate(discriminatingValue, timestamp);
		// marks the appender for removal as specified by the user
		if (eventMarksEndOfLife(event)) {
			this.getAppenderTracker().endOfLife(discriminatingValue);
		}
		this.getAppenderTracker().removeStaleComponents(timestamp);
		appender.doAppend(event);
	}
}
