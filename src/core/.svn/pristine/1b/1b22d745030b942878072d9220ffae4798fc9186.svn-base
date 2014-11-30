package org.jdataex.core.context;

import java.util.HashMap;
import java.util.Map;

/**
 * 这个类，将手动初始化下，所以单例模式，可以很简单，不需要加锁。
 * 
 * @author TwelveFoldEr
 * 
 */
public class Context {

	static Context instance;

	static {
		instance = new Context();
		instance.objs = new HashMap<>();
	}

	private static Context getInstance() {
		return instance;
	}
	
	private Map<String, Object> objs;

	public static Object getEntity(String key) {
		return getInstance().objs.get(key);
	}

	public static Object putEntity(String key, Object obj) {
		return getInstance().objs.put(key, obj);
	}
	
	public static Object removeEntity(String key) {
		return getInstance().objs.remove(key);
	}
}
