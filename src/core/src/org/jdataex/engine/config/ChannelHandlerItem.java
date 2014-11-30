package org.jdataex.engine.config;

import org.dom4j.Element;
import org.jdataex.util.XMLUtil;

public class ChannelHandlerItem {

	public static final String TYPE_STRATEGY = "strategy";
	public static final String TYPE_COMPONENT = "component";
	
	private String type;
	private String clazz;
	private String componentRef;

	public ChannelHandlerItem(Element e) {
		this.type = XMLUtil.getAttributeValueByAssert(e, "type",
				"Channel input type is null or blank.");

		switch (type) {
		case TYPE_COMPONENT:
			loadComponent(e);
		case TYPE_STRATEGY:
			loadStrategy(e);
		}
	}

	private void loadComponent(Element e) {
		
		this.clazz = XMLUtil.getAttributeValueByAssert(e, "class",
				"Channel input class is null or blank.");

		this.componentRef = XMLUtil.getAttributeValueByAssert(e,
				"component-ref",
				"Channel input component-ref is null or blank.");
	}

	private void loadStrategy(Element e) {

	}

	public String getClazz() {
		return clazz;
	}

	public void setClazz(String clazz) {
		this.clazz = clazz;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getComponentRef() {
		return componentRef;
	}

	public void setComponentRef(String componentRef) {
		this.componentRef = componentRef;
	}
}
