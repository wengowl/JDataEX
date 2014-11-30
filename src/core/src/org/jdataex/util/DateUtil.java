package org.jdataex.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class DateUtil {

	// private static String defaultDatePattern = null;
	// 2012-04-11 17:41:04.733
	private static String timePattern = "yyyy-MM-dd HH:mm:ss.SSS";

	public static synchronized void setDatePattern(String newTimePattern) {
		timePattern = newTimePattern;
	}

	public static synchronized String getTimePattern() {
		return timePattern;
	}

	/**
	 * This method attempts to convert an Oracle-formatted date in the form
	 * dd-MMM-yyyy to mm/dd/yyyy.
	 * 
	 * @param aDate
	 *            date from database as a string
	 * @return formatted string for the ui
	 */
	public static final String getDate(Date aDate) {
		SimpleDateFormat df = null;
		String returnValue = "";

		if (aDate != null) {
			df = new SimpleDateFormat(getTimePattern());
			returnValue = df.format(aDate);
		}

		return (returnValue);
	}

	/**
	 * This method generates a string representation of a date/time in the
	 * format you specify on input
	 * 
	 * @param aMask
	 *            the date pattern the string is in
	 * @param strDate
	 *            a string representation of a date
	 * @return a converted Date object
	 * @see java.text.SimpleDateFormat
	 * @throws ParseException
	 */

	public static final Date convertStringToDate(String aMask, String strDate)
			throws ParseException {
		SimpleDateFormat df = new SimpleDateFormat(aMask);

		df.applyPattern(aMask);
		try {
			return df.parse(strDate);
		} catch (ParseException pe) {
			// log.error("ParseException: " + pe);
			throw new ParseException(pe.getMessage(), pe.getErrorOffset());
		}
	}

	public static final Date convertStringToDate(SimpleDateFormat dateFormat,
			String strDate) throws ParseException {
		try {
			return dateFormat.parse(strDate);
		} catch (ParseException pe) {
			// log.error("ParseException: " + pe);
			throw new ParseException(pe.getMessage(), pe.getErrorOffset());
		}
	}

	/**
	 * This method returns the current date time in the format: MM/dd/yyyy HH:MM
	 * a
	 * 
	 * @param theTime
	 *            the current time
	 * @return the current date/time
	 */
	public static String getTime(Date theTime) {
		return getDateTime(timePattern, theTime);
	}

	public static String getTimeNow() {
		return getDateTime(timePattern, new Date());
	}
	/**
	 * This method returns the current date in the format: MM/dd/yyyy
	 * 
	 * @return the current date
	 * @throws ParseException
	 */
	public static Calendar getTodayCal() throws ParseException {
		Date today = new Date();
		SimpleDateFormat df = new SimpleDateFormat(getTimePattern());

		// This seems like quite a hack (date -> string -> date),
		// but it works ;-)
		String todayAsString = df.format(today);
		Calendar cal = new GregorianCalendar();
		cal.setTime(convertStringToDate(todayAsString));

		return cal;
	}

	public static Calendar getToday() {
		Date today = new Date();
		Calendar cal = new GregorianCalendar();
		cal.setTime(today);

		return cal;
	}
	
	public static Calendar getCalendar(Date date){
		Calendar cal = new GregorianCalendar();
		cal.setTime(date);
		
		return cal;
	}

	/**
	 * This method generates a string representation of a date's date/time in
	 * the format you specify on input
	 * 
	 * @param aMask
	 *            the date pattern the string is in
	 * @param aDate
	 *            a date object
	 * @return a formatted string representation of the date
	 * 
	 * @see java.text.SimpleDateFormat
	 */
	public static final String getDateTime(String aMask, Date aDate) {
		SimpleDateFormat df = null;
		String returnValue = "";

		if (aDate == null) {
			throw new NullPointerException("Date is null.");
		} else {
			df = new SimpleDateFormat(aMask);
			returnValue = df.format(aDate);
		}

		return (returnValue);
	}

	/**
	 * This method generates a string representation of a date based on the
	 * System Property 'dateFormat' in the format you specify on input
	 * 
	 * @param aDate
	 *            A date to convert
	 * @return a string representation of the date
	 */
	public static final String convertDateToString(Date aDate) {
		return getDateTime(getTimePattern(), aDate);
	}

	/**
	 * This method converts a String to a date using the datePattern
	 * 
	 * @param strDate
	 *            the date to convert (in format MM/dd/yyyy)
	 * @return a date object
	 * 
	 * @throws ParseException
	 */
	public static Date convertStringToDate(String strDate)
			throws ParseException {
		Date aDate = null;

		try {

			aDate = convertStringToDate(getTimePattern(), strDate);
		} catch (ParseException pe) {
			pe.printStackTrace();
			throw new ParseException(pe.getMessage(), pe.getErrorOffset());

		}

		return aDate;
	}

	/**
	 * 给指定的时间添加或减去指定天数。
	 * 
	 * @param date
	 *            时间。
	 * @param up
	 *            添加或者减去的天数。
	 * @return
	 */
	public static Date rollDateForDayOfYear(Date date, int up) {
		AssertUtil.assertNull("Date is null.", date);

		Calendar calendar = new GregorianCalendar();
		calendar.setTime(date);
		calendar.roll(Calendar.DAY_OF_YEAR, 1);

		return calendar.getTime();
	}

	public static Date getNextDayAtZeroClock() {
		Calendar cal = getTodayAtZeroClockForCalendar();
		cal.roll(Calendar.DAY_OF_YEAR, 1);

		return cal.getTime();
	}

	public static Date getNextDayAtZeroClock(int up) {
		Calendar cal = getTodayAtZeroClockForCalendar();
		cal.roll(Calendar.DAY_OF_YEAR, up);

		return cal.getTime();
	}

	public static Date getTodayAtZeroClock() {
		Calendar cal = getTodayAtZeroClockForCalendar();

		return cal.getTime();
	}

	public static Calendar getTodayAtZeroClockForCalendar() {
		Calendar cal;
		cal = getToday();
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		return cal;
	}

	public static Date rollDate(Date date, int daysUp, int hourUp, int minutesUp) {
		Calendar cal = new GregorianCalendar();
		cal.setTime(date);

		cal.roll(Calendar.DAY_OF_YEAR, daysUp);
		cal.roll(Calendar.HOUR_OF_DAY, hourUp);
		cal.roll(Calendar.MINUTE, minutesUp);

		return cal.getTime();
	}

	public static Date addDate(Date date, int daysUp, int hourUp, int minutesUp) {
		Calendar cal = new GregorianCalendar();
		cal.setTime(date);

		cal.add(Calendar.DAY_OF_YEAR, daysUp);
		cal.add(Calendar.HOUR_OF_DAY, hourUp);
		cal.add(Calendar.MINUTE, minutesUp);

		return cal.getTime();
	}

	public static Date addDate(Date date, int yearsUp, int monthsUp,
			int daysUp, int hoursUp, int minutesUp, int secondsUp) {
		Calendar cal = new GregorianCalendar();
		cal.setTime(date);

		cal.add(Calendar.YEAR, yearsUp);
		cal.add(Calendar.MONTH, monthsUp);
		cal.add(Calendar.DAY_OF_MONTH, daysUp);
		cal.add(Calendar.HOUR_OF_DAY, hoursUp);
		cal.add(Calendar.MINUTE, minutesUp);
		cal.add(Calendar.SECOND, secondsUp);

		return cal.getTime();
	}
	
	public static Date tuneDate(Date date, int yearsUp, int monthsUp,
			int daysUp, int hoursUp, int minutesUp, int secondsUp) {
		Calendar cal = new GregorianCalendar();
		cal.setTime(date);

		if(yearsUp > 0){
			cal.set(Calendar.YEAR, yearsUp);
		}
		
		if(monthsUp > 0 && monthsUp < 12){
			cal.set(Calendar.MONTH, monthsUp);
		}
		
		if(daysUp > 0 && daysUp < 31){
			cal.set(Calendar.DAY_OF_MONTH, daysUp);			
		}
		
		if(hoursUp > -1 && hoursUp < 24){
			cal.set(Calendar.HOUR_OF_DAY, hoursUp);	
		}
		
		if(minutesUp > -1 && minutesUp < 60){
			cal.set(Calendar.MINUTE, minutesUp);
		}

		if(secondsUp > -1 && secondsUp < 60){
			cal.set(Calendar.SECOND, secondsUp);	
		}

		return cal.getTime();
	}

	public static String generateTimestamp() {
		return generateTimestamp(timePattern, new Date());
	}

	public static String generateTimestamp(String timePattern) {
		return generateTimestamp(timePattern, new Date());
	}

	/**
	 * 根据日期生成时间戳字符串。
	 * 
	 * @param timePattern
	 *            时间格式样式。
	 * @param date
	 *            依赖的日期。
	 * @return 时间戳字符串。
	 */
	public static String generateTimestamp(String timePattern, Date date) {
		AssertUtil.assertNull("Time pattern is null.", timePattern);
		AssertUtil.assertNull("Date is null.", date);

		SimpleDateFormat format = new SimpleDateFormat(timePattern);
		return format.format(date);
	}

}
