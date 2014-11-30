package org.jdataex.util;

import java.util.Map;

import org.jdataex.core.card.GUIC;

public class GUICUtil {

	
	public static <E> E getByID(Map<GUIC,E> map, String id){
		if (null != id) {
			for (GUIC guic : map.keySet()) {
				if (id.equalsIgnoreCase(guic.getID())) {
					return map.get(guic);
				}
			}
		}

		return null;
	}
}
