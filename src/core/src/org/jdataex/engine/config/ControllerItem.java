package org.jdataex.engine.config;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.dom4j.Element;
import org.jdataex.util.XMLUtil;

public class ControllerItem {

	private String content = "";
	private String id = "";
	private String clazz = "";
	private String loggerName = "";

	private Map<String, ComponentItem> components = new HashMap<>();

	private Map<String, ChannelStageItem> channels = new HashMap<>();
	
	public ControllerItem(){
		
	}
	
	public ControllerItem(Element e) {
		load(e);
	}

	public void load(Element e) {
		loadBaseAttributes(e);

		loadComponents(e);

		loadChannelStage(e);
//		loadStations(e);
	}

	private void loadBaseAttributes(Element e) {
		this.id = XMLUtil.getAttributeValueByAssert(e, "id","Controller id is null or blank.");;
		this.clazz = XMLUtil.getAttributeValue(e, "class");
	}

	private void loadComponents(Element element) {
		List<?> children = element.selectNodes("component");
		for (Iterator<?> iterator = children.iterator(); iterator.hasNext();) {
			Element e = (Element) iterator.next();
			ComponentItem item = new ComponentItem(e);

			this.components.put(item.getId(), item);
		}
	}

	private void loadChannelStage(Element element) {
		List<?> children = element.selectNodes("channel-stage");
		for (Iterator<?> iterator = children.iterator(); iterator.hasNext();) {
			Element e = (Element) iterator.next();
			ChannelStageItem item = new ChannelStageItem(e);

			this.channels.put(item.getId(), item);
		}
	}

	
	public String getContent() {
		return content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Map<String, ComponentItem> getComponents() {
		return components;
	}

	public void setComponents(Map<String, ComponentItem> components) {
		this.components = components;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getClazz() {
		return clazz;
	}

	public void setClazz(String clazz) {
		this.clazz = clazz;
	}

	public String getLoggerName() {
		return loggerName;
	}

	public void setLoggerName(String loggerName) {
		this.loggerName = loggerName;
	}

	public Map<String, ChannelStageItem> getChannels() {
		return channels;
	}

	public void setChannels(Map<String, ChannelStageItem> channels) {
		this.channels = channels;
	}

}
