package org.jdataex.flow.component.step.dataaccess;

import org.jdataex.flow.row.IRow;

import java.util.Date;

/**
 * Created by wengxf on 14-5-6.
 */
public class MsgCacheBean {

    public static String OPERATION_TYPE_INSERT = "insert";
    public static String OPERATION_TYPE_UPDATE = "update";
    public static String OPERATION_TYPE_DELETE = "delete";
    public static String OPERATION_TYPE_INUP = "inup";
    public static String OPERATION_TYPE_UPIN = "upin";

    private int msgId;
    private Date msgQueuedAt;
    private String msgStatus;
    private int msgRetryTimes;
    private Date msgDeliveredAt;
    private String msgFailedText;
    private String operationType;
    //    private String msgTypeName;
    private IRow row;

    public int getMsgId() {
        return msgId;
    }

    public void setMsgId(int msgId) {
        this.msgId = msgId;
    }

    public Date getMsgQueuedAt() {
        return msgQueuedAt;
    }

    public void setMsgQueuedAt(Date msgQueuedAt) {
        this.msgQueuedAt = msgQueuedAt;
    }

    public String getMsgStatus() {
        return msgStatus;
    }

    public void setMsgStatus(String msgStatus) {
        this.msgStatus = msgStatus;
    }

    public int getMsgRetryTimes() {
        return msgRetryTimes;
    }

    public void setMsgRetryTimes(int msgRetryTimes) {
        this.msgRetryTimes = msgRetryTimes;
    }

    public Date getMsgDeliveredAt() {
        return msgDeliveredAt;
    }

    public void setMsgDeliveredAt(Date msgDeliveredAt) {
        this.msgDeliveredAt = msgDeliveredAt;
    }

    public String getMsgFailedText() {
        return msgFailedText;
    }

    public void setMsgFailedText(String msgFailedText) {
        this.msgFailedText = msgFailedText;
    }

    public String getOperationType() {
        return operationType;
    }

    public void setOperationType(String operationType) {
        this.operationType = operationType;
    }

    public IRow getDataObject() {
        return row;
    }

    public void setDataObject(IRow row) {
        this.row = row;
    }

/*//    public String getMsgTypeName() {
//        return msgTypeName;
//    }
//
//    public void setMsgTypeName(String msgTypeName) {
//        this.msgTypeName = msgTypeName;
//    }*/
}
