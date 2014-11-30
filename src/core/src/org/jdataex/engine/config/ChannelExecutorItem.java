package org.jdataex.engine.config;

import org.dom4j.Element;
import org.jdataex.channel.DefaultChannelContainer;
import org.jdataex.channel.common.DefaultValues;
import org.jdataex.channel.executor.DefaultExecutor;
import org.jdataex.util.CommonUtil;
import org.jdataex.util.XMLUtil;
import org.jdataex.util.logger.LoggerFactory;

public class ChannelExecutorItem {

	private String id = "default";
	private String clazz = DefaultExecutor.class.getName();
	private String number = String.valueOf(DefaultValues.DEFAULT_THREAD_SIZE);

	public ChannelExecutorItem(Element e) {
		// TODO 根据实际情况再设计
		if(e == null){
			return;
		}
		
		String number = XMLUtil.getAttributeValue(e, "number");
		if (CommonUtil.isNotBlank(XMLUtil.getAttributeValue(e, "number"))) {
			try {
				new Integer(number);
				this.number = XMLUtil.getAttributeValue(e, "number");
			} catch (NumberFormatException ex) {
				LoggerFactory.getRootLogger().warn(
						"Executor number is not right.Value is [{}]", number);
				this.number = String.valueOf(DefaultValues.DEFAULT_THREAD_SIZE);
			}
		} else {
			this.number = String.valueOf(DefaultValues.DEFAULT_THREAD_SIZE);
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

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}
}
