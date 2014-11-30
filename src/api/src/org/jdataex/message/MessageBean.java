package org.jdataex.message;

import java.util.UUID;

/**
 * Created by wengxf on 2014/7/10 0010.
 */
public class MessageBean {
    private MessageAttrBean messageAttr;
    private String filePath;
    private byte[] msgData;
    private UUID uuid;
    private int msgType;

    public int getMsgType() {
        return msgType;
    }

    public void setMsgType(int msgType) {
        this.msgType = msgType;
    }

    public UUID getUuid() {
        return uuid;
    }

    public void setUuid(UUID uuid) {
        this.uuid = uuid;
    }

    public MessageAttrBean getMessageAttr() {
        return messageAttr;
    }

    public void setMessageAttr(MessageAttrBean messageAttr) {
        this.messageAttr = messageAttr;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public byte[] getMsgData() {
        return msgData;
    }

    public void setMsgData(byte[] msgData) {
        this.msgData = msgData;
    }
}
