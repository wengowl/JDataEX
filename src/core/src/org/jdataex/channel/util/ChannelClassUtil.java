package org.jdataex.channel.util;

import java.util.HashMap;
import java.util.Map;

import org.jdataex.channel.exception.BaseNestedException;
import org.jdataex.channel.future.CanNotReadChannelFuture;
import org.jdataex.channel.future.CanNotWriteChannelFuture;
import org.jdataex.channel.future.ErrorChannelFuture;
import org.jdataex.channel.future.TrueChannelFuture;

public final class ChannelClassUtil {

	public static final int TRUE_CHANNEL_FUTURE = 0;

	public static final int ERROR_CHANNEL_FUTURE = 1;

	public static final int CAN_NOT_WRITE_CHANNEL_FUTURE = 3;

	public static final int CAN_NOT_READ_CHANNEL_FUTURE = 4;
	
	public static final int CLOSE_ERROR_FUTURE = 5;

	@SuppressWarnings("rawtypes")
	private static final Map<Integer, Class> map = new HashMap<Integer, Class>();

	static {
		map.put(TRUE_CHANNEL_FUTURE, TrueChannelFuture.class);
		map.put(CAN_NOT_WRITE_CHANNEL_FUTURE, CanNotWriteChannelFuture.class);
		map.put(CAN_NOT_READ_CHANNEL_FUTURE, CanNotReadChannelFuture.class);
		map.put(ERROR_CHANNEL_FUTURE, ErrorChannelFuture.class);
		map.put(CLOSE_ERROR_FUTURE, ErrorChannelFuture.class);
	}

	@SuppressWarnings("unchecked")
	public final static Object getInstance(int type, BaseNestedException ex) {
		try {
			if (ex == null) {
				return map.get(type).newInstance();
			} else {
				return map.get(type).getConstructor(BaseNestedException.class)
						.newInstance(ex);
			}
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public final static Object getInstance(int type){
		return ChannelClassUtil.getInstance(type, null);
	}
}
