package org.jdataex.channel.tlq;

import static org.jdataex.channel.common.DefaultValues.TLQ_FILE;
import static org.jdataex.channel.common.DefaultValues.TLQ_MSG;

import org.jdataex.channel.exception.IllegalNumberException;

import com.tongtech.tlq.base.TlqConnection;
import com.tongtech.tlq.base.TlqQCU;

public class BaseTLQChannel {
	
	private int type;

	private TlqConnection tlqConnection;

	private TlqQCU qcu;

	private String qcuName;

	private String queueName;
	
	protected TlqConnection getTlqConnection() {
		return tlqConnection;
	}

	protected void setTlqConnection(TlqConnection tlqConnection) {
		this.tlqConnection = tlqConnection;
	}

	protected TlqQCU getQcu() {
		return qcu;
	}

	protected void setQcu(TlqQCU qcu) {
		this.qcu = qcu;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getQcuName() {
		return qcuName;
	}

	public void setQcuName(String qcuName) {
		this.qcuName = qcuName;
	}

	public String getQueueName() {
		return queueName;
	}

	public void setQueueName(String queueName) {
		this.queueName = queueName;
	}
	
	void assertTLQMsgType(int type) {
		switch (type) {
		case TLQ_MSG:
			break;
		case TLQ_FILE:
			break;
		default:
			throw new IllegalNumberException(
					"tlq message type error must be msg(" + TLQ_MSG
							+ ") or file(" + TLQ_FILE + ")");
		}
	}
	
	
}
