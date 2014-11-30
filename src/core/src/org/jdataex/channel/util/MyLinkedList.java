package org.jdataex.channel.util;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/**
 * 非线程安全,增加 toArray方法
 * 
 * @author chaos
 * 
 * @param <T>
 */
public class MyLinkedList<T> extends LinkedList<T> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -691090911481042010L;

	@SuppressWarnings("unchecked")
	public Object[] toArray(@SuppressWarnings("rawtypes") Class clasz) {
		Object[] objs = toArray();
		List<T> list = new ArrayList<T>();
		for (Object t : objs) {
			if (t.getClass().isInstance(clasz)) {
				list.add((T) t);
			}
		}
		return list.toArray();
	}
}
