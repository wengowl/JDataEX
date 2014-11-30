package org.jdataex.channel.tlq;

import org.jdataex.channel.BaseAbstractChannelInput;

import com.tongtech.tlq.base.TlqConnection;
import com.tongtech.tlq.base.TlqQCU;

public abstract class BaseTLQChannelInput<T> extends BaseAbstractChannelInput<T>{

	public BaseTLQChannelInput(String name) {
		super(name);
		tlq = new BaseTLQChannel();
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 8859805549162332587L;
	
	private BaseTLQChannel tlq;
	
	protected TlqConnection getTlqConnection() {
		return tlq.getTlqConnection();
	}

	protected void setTlqConnection(TlqConnection tlqConnection) {
		tlq.setTlqConnection(tlqConnection);
	}

	protected TlqQCU getQcu() {
		return tlq.getQcu();
	}

	protected void setQcu(TlqQCU qcu) {
		tlq.setQcu(qcu);
	}

	public int getType() {
		return tlq.getType();
	}

	public void setType(int type) {
		tlq.setType(type);
	}

	public String getQcuName() {
		return tlq.getQcuName();
	}

	public void setQcuName(String qcuName) {
		tlq.setQcuName(qcuName);
	}

	public String getQueueName() {
		return tlq.getQueueName();
	}

	public void setQueueName(String queueName) {
		tlq.setQueueName(queueName);
	}
	
	void assertTLQMsgType(int type) {
		tlq.assertTLQMsgType(type);
	}

}
