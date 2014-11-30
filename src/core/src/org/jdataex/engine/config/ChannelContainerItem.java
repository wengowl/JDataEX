package org.jdataex.engine.config;

import org.dom4j.Element;
import org.jdataex.channel.DefaultChannelContainer;
import org.jdataex.util.XMLUtil;

public class ChannelContainerItem {

	private String id = "default";
	private String clazz = DefaultChannelContainer.class.getName();

	public ChannelContainerItem(Element e) {
		//TODO 根据实际情况再设计
		if(e == null){
			return;
		}
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
}
