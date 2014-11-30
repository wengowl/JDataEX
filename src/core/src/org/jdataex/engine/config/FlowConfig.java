package org.jdataex.engine.config;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.jdataex.core.card.GUIC;
import org.jdataex.util.FileUtil;
import org.jdataex.util.XMLUtil;

public class FlowConfig {

	private String content;
	private Document document;

	private String id;
	private String type;

	private List<SchedulerCronItem> schedulerCrons;

	private Map<GUIC, ControllerItem> controllers;

	public FlowConfig(File file) throws IOException, DocumentException {
		this.schedulerCrons = new ArrayList<>();
		this.controllers = new HashMap<>();
		load(FileUtil.readFileToString(file));
	}

	public FlowConfig(String content) throws DocumentException {
		this.controllers = new HashMap<>();
		load(content);
	}

	public void load(String content) throws DocumentException {
		this.document = XMLUtil.createDocument(content);
		this.content = content;

		loadAttributes(this.document.getRootElement());

		loadSchedulers(this.document.getRootElement());

		loadControllers(this.document.getRootElement());

	}

	private void loadAttributes(Element root) {
		String id = XMLUtil.getStringValue(root, "id");
		// TODO check
		this.id = id;

		String type = XMLUtil.getStringValue(root, "type");
		// TODO check
		this.type = type;
	}
	
	private void loadSchedulers(Element root) {
		List<Element> cronList = (List<Element>) root
				.selectNodes("schedulers/cron");
		for (Element element : cronList) {
			schedulerCrons.add(new SchedulerCronItem(element));
		}
	}



	private void loadControllers(Element element) {
		List<?> children = element.selectNodes("controller");
		for (Iterator<?> iterator = children.iterator(); iterator.hasNext();) {
			Element e = (Element) iterator.next();
			ControllerItem item = new ControllerItem(e);

			this.controllers.put(new GUIC(item.getId()), item);
		}
	}

	public void load(File file) throws DocumentException, IOException {
		load(FileUtil.readFileToString(file));
	}

	public String getContent() {
		return content;
	}

	public Document getDocument() {
		return document;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setDocument(Document document) {
		this.document = document;
	}

	public Map<GUIC, ControllerItem> getControllers() {
		return controllers;
	}

	public void setControllers(Map<GUIC, ControllerItem> controllers) {
		this.controllers = controllers;
	}

	public List<SchedulerCronItem> getCrons() {
		return schedulerCrons;
	}

	public void setCrons(List<SchedulerCronItem> crons) {
		this.schedulerCrons = crons;
	}

	public List<SchedulerCronItem> getSchedulerCrons() {
		return schedulerCrons;
	}

	public void setSchedulerCrons(List<SchedulerCronItem> schedulerCrons) {
		this.schedulerCrons = schedulerCrons;
	}

}
