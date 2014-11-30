package org.jdataex.engine.config;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.dom4j.Element;
import org.jdataex.util.XMLUtil;

public class ChannelStageItem {

	private String id;

	private String clazz;

	private String entry;

	private ChannelExecutorItem inputExecutor;

	private ChannelExecutorItem outputExecutor;

	private ChannelContainerItem container;

	private ChannelInputItem input;

	private List<ChannelOutputItem> outputs;

	private List<ChannelHandlerItem> handlerList;

	/**
	 * @param e
	 */
	public ChannelStageItem(Element e) {
		this.id = XMLUtil.getAttributeValueByAssert(e, "id",
				"Channel stage id is null or blank.");
		this.clazz = XMLUtil.getAttributeValueByAssert(e, "class",
				"Channel stage class is null or blank.");

		this.entry = XMLUtil.getAttributeValue(e, "entry");

		this.inputExecutor = new ChannelExecutorItem(
				(Element) e.selectSingleNode("input-executor"));

		this.outputExecutor = new ChannelExecutorItem(
				(Element) e.selectSingleNode("output-executor"));

		this.container = new ChannelContainerItem(
				(Element) e.selectSingleNode("container"));

		this.input = new ChannelInputItem((Element) e.selectSingleNode("input"));

		@SuppressWarnings("unchecked")
		List<Element> outputList = (List<Element>) e
				.selectNodes("outputs/output");
		this.outputs = new ArrayList<>();
		for (Element element : outputList) {
			this.outputs.add(new ChannelOutputItem(element));
		}

		@SuppressWarnings("unchecked")
		List<Element> handlerList = ((List<Element>) e
				.selectNodes("handler-list/handler"));
		this.handlerList = new ArrayList<>();
		ChannelHandlerItem chi;
		for (Element element : handlerList) {
			chi = new ChannelHandlerItem(element);
			if (ChannelHandlerItem.TYPE_COMPONENT.equalsIgnoreCase(chi
					.getType())) {
				this.handlerList.add(chi);
			}

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

	public ChannelContainerItem getContainer() {
		return container;
	}

	public void setContainer(ChannelContainerItem container) {
		this.container = container;
	}

	public ChannelInputItem getInput() {
		return input;
	}

	public void setInput(ChannelInputItem input) {
		this.input = input;
	}

	public List<ChannelOutputItem> getOutputs() {
		return outputs;
	}

	public void setOutputs(List<ChannelOutputItem> outputs) {
		this.outputs = outputs;
	}

	public List<ChannelHandlerItem> getHandlerList() {
		return handlerList;
	}

	public void setHandlerList(List<ChannelHandlerItem> handlerList) {
		this.handlerList = handlerList;
	}

	public String getEntry() {
		return entry;
	}

	public void setEntry(String entry) {
		this.entry = entry;
	}

	public boolean isEntry() {
		return "true".equalsIgnoreCase(this.entry);
	}

	public ChannelExecutorItem getInputExecutor() {
		return inputExecutor;
	}

	public void setInputExecutor(ChannelExecutorItem inputExecutor) {
		this.inputExecutor = inputExecutor;
	}

	public ChannelExecutorItem getOutputExecutor() {
		return outputExecutor;
	}

	public void setOutputExecutor(ChannelExecutorItem outputExecutor) {
		this.outputExecutor = outputExecutor;
	}

}
