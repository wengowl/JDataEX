package org.jdataex.flow.row;

import java.util.Set;

public interface IRowHeader {

	public abstract Set<String> keySet();

	public abstract void clear();

	public abstract String remove(Object key);

	public abstract String put(String key, String value);

	public abstract String get(Object key);

	public abstract boolean containsValue(Object value);

	public abstract boolean containsKey(Object key);

	public abstract boolean isEmpty();

}
