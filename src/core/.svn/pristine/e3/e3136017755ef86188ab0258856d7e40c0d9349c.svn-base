package org.jdataex.engine.config;

import org.dom4j.Element;
import org.jdataex.util.XMLUtil;

public class ChannelOutputItem {

	public static String NET_ADDRESS_NULL = "${null}";
	
	private String name;
	private String clazz;
	private String host;
	private String port;

	public ChannelOutputItem(Element e) {
		this.name = XMLUtil.getAttributeValueByAssert(e, "name",
				"Channel output name is null or blank.");
		
		this.clazz = XMLUtil.getAttributeValueByAssert(e, "class",
				"Channel output class is null or blank.");
		
		this.host = XMLUtil.getAttributeValueByAssert(e, "host",
				"Channel host class is null or blank.");
		
		this.port = XMLUtil.getAttributeValueByAssert(e, "port",
				"Channel port class is null or blank.");
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

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public String getPort() {
		return port;
	}

	public void setPort(String port) {
		this.port = port;
	}
}
