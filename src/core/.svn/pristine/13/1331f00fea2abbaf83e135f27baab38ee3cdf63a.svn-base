package org.jdataex.engine.config;

import org.dom4j.Element;
import org.jdataex.util.XMLUtil;

public class ChannelInputItem {

	private String name;
	private String clazz;

	public ChannelInputItem(Element e) {
		this.name = XMLUtil.getAttributeValueByAssert(e, "name",
				"Channel input name is null or blank.");
		this.clazz = XMLUtil.getAttributeValueByAssert(e, "class",
				"Channel input class is null or blank.");
	}

	public String getClazz() {
		return clazz;
	}

	public void setClazz(String clazz) {
		this.clazz = clazz;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
