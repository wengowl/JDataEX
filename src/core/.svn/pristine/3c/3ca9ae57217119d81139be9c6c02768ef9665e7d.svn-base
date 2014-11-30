package org.jdataex.channel.naming;

import javax.naming.NamingException;

/**
 * 资源名称查找类,可以实现为jndi方式也可以是map方式,具体看
 * 实际应用情况
 * @author chaos
 *
 */
public interface NamingContext {

	public void bind(String name, Object obj) throws NamingException;
	
	public Object lookUp(String name) throws NamingException;
	
	public void close();
	
	public void rebuild();
}
