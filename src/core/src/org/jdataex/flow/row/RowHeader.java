package org.jdataex.flow.row;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.jdataex.util.JSONUtil;

import com.fasterxml.jackson.core.JsonProcessingException;

public class RowHeader implements IRowHeader {

	private Map<String,String> propeties = new HashMap<String,String>();

	@Override
	public boolean isEmpty() {
		return propeties.isEmpty();
	}

	@Override
	public boolean containsKey(Object key) {
		return propeties.containsKey(key);
	}

	@Override
	public boolean containsValue(Object value) {
		return propeties.containsValue(value);
	}

	@Override
	public String get(Object key) {
		return propeties.get(key);
	}

	@Override
	public String put(String key, String value) {
		return propeties.put(key, value);
	}

	@Override
	public String remove(Object key) {
		return propeties.remove(key);
	}

	@Override
	public void clear() {
		propeties.clear();
	}

	@Override
	public Set<String> keySet() {
		return propeties.keySet();
	}
	
	public Map<String, String> getPropeties() {
		return propeties;
	}

	public void setPropeties(Map<String, String> propeties) {
		this.propeties = propeties;
	}
	
	@Override
	public String toString() {
		try {
 			return JSONUtil.writeValueAsString(this);
		} catch (JsonProcessingException e) {
		}
		
		return super.toString();
	}

}
