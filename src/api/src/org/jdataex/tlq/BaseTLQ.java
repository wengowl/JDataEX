package org.jdataex.tlq;

import com.tongtech.tlq.base.TlqConnection;
import com.tongtech.tlq.base.TlqQCU;


/**
 * Created by wengxf on 2014/7/14 0014.
 */
public class BaseTLQ {
    private int type;

    private TlqConnection tlqConnection;

    private TlqQCU qcu;

    private String qcuName;

    private String queueName;

    private int times;

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

    public int getTimes() {
        return times;
    }

    public void setTimes(int times) {
        this.times = times;
    }

    /*void assertTLQMsgType(int type){
        switch (type) {
            case TlqMessage.BUF_MSG:
                break;
            case TlqMessage.FILE_MSG:
                break;
            default:
                throw new MessageExceptions(
                        "tlq message type error must be buffermsg(" + TlqMessage.BUF_MSG
                                + ") or filemsg(" +TlqMessage.FILE_MSG + ")");
        }
    }*/

}
