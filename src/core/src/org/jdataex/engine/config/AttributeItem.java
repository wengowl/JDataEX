package org.jdataex.engine.config;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.dom4j.Attribute;
import org.dom4j.Element;

public class AttributeItem {

	private Map<String, AttributeItem> attributeItems = new HashMap<>();

	private Map<String, String> attributes = new HashMap<>();

	public String getAttribute(String name) {
		return attributes.get(name);
	}

	public AttributeItem getAttributeItem(String name) {
		return attributeItems.get(name);
	}

	public AttributeItem(Element element) {
		for (Iterator<Attribute> iterator = element.attributeIterator(); iterator
				.hasNext();) {
			Attribute att = iterator.next();
			this.attributes.put(att.getName(), att.getStringValue());
		}

		List<Element> list = element.elements();
		for (Element e : list) {
			if (e.elements().size() == 0) {
				this.attributes.put(e.getName(), e.getStringValue());
			} else {
				this.attributeItems.put(e.getName(), new AttributeItem(e));
			}
		}
	}
}
