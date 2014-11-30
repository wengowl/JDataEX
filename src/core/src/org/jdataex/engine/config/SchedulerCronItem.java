package org.jdataex.engine.config;

import org.dom4j.Element;

public class SchedulerCronItem {
	
	private String text;
	
	public SchedulerCronItem(Element e) {
		if(e == null){
			return;
		}
		
		this.text = e.getStringValue();	
	}

	public String getText() {
		return text;
	}

	public void setText(String cronText) {
		this.text = cronText;
	}

}
