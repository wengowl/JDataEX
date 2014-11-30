package org.jdataex.cache;

import java.io.Serializable;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheException;
import net.sf.ehcache.Element;

public class EhCache implements IMemoryCache{
//TODO coding
	private Cache cache;

	public final Element createElement(final Serializable key, final Serializable value){
		return new Element(key, value);
	}
	
	public EhCache(Cache cache) {
		super();
		this.cache = cache;
	}

	public final Object get(Object key) throws IllegalStateException,
			CacheException {
		return cache.get(key).getObjectValue();
	}

	public final Object get(Serializable key) throws IllegalStateException,
			CacheException {
		return cache.get(key).getObjectValue();
	}

	public final void put(Element element, boolean doNotNotifyCacheReplicators)
			throws IllegalArgumentException, IllegalStateException,
			CacheException {
		cache.put(element, doNotNotifyCacheReplicators);
	}

	public final void put(Element element) throws IllegalArgumentException,
			IllegalStateException, CacheException {
		cache.put(element);
	}

	public final boolean remove(Object key, boolean doNotNotifyCacheReplicators)
			throws IllegalStateException {
		return cache.remove(key, doNotNotifyCacheReplicators);
	}

	public final boolean remove(Object key) throws IllegalStateException {
		return cache.remove(key);
	}

	public void removeAll() throws IllegalStateException, CacheException {
		cache.removeAll();
	}

	public void removeAll(boolean doNotNotifyCacheReplicators)
			throws IllegalStateException, CacheException {
		cache.removeAll(doNotNotifyCacheReplicators);
	}
	
}
