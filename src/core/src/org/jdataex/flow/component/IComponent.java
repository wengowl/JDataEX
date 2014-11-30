package org.jdataex.flow.component;

import org.jdataex.core.InitializationException;
import org.jdataex.core.card.IGUICable;
import org.jdataex.engine.config.ComponentItem;

/**
 * 组件接口。
 * @author TwelveFoldEr
 *
 */
public interface IComponent extends IGUICable{

	/**
	 * 只用于初始化组件所用到的参数。不进行如资源链接等初始化工作。
	 * @param item
	 */
	public abstract void initConfig(ComponentItem item) throws InitializationException;
}
