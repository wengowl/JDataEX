package org.jdataex.engine.config;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Element;
import org.jdataex.util.XMLUtil;

public class ComponentItem {

	private String id;
	private String clazz;
	private Map<String, String> attributes;
	private Map<String, AttributeItem> attributeItems;

	public ComponentItem(Element e) {
		this.id = XMLUtil.getAttributeValueByAssert(e, "id",
				"Channel input id is null or blank.");
		this.clazz = XMLUtil.getAttributeValueByAssert(e, "class",
				"Channel input class is null or blank.");

		this.attributes = new HashMap<>();
		this.attributeItems = new HashMap<>();
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getClazz() {
		return clazz;
	}

	public void setClazz(String clazz) {
		this.clazz = clazz;
	}

	public Map<String, String> getAttributes() {
		return attributes;
	}
	
	public String getAttribute(String attName) {
		return this.attributes.get(attName);
	}

	public void setAttributes(Map<String, String> attributes) {
		this.attributes = attributes;
	}

	public Map<String, AttributeItem> getAttributeItems() {
		return attributeItems;
	}

	public AttributeItem getAttributeItem(String attName) {
		return attributeItems.get(attName);
	}
	
	public void setAttributeItems(Map<String, AttributeItem> attributeItems) {
		this.attributeItems = attributeItems;
	}

}
