package org.jdataex.channel.net;

import java.io.Serializable;

import org.jdataex.util.AssertUtil;

public class NetAddress implements INetAddress,Serializable{
	
	private String hostname;
	
	private int port;
	
	
	public NetAddress(String hostname, int port) {
		AssertUtil.assertNull(hostname);
		this.hostname = hostname;
		this.port = port;
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 9158516340163558412L;


	@Override
	public int getPort() {
		return port;
	}

	@Override
	public String getHostName() {
		return hostname;
	}

}
