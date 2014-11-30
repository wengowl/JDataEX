package org.jdataex.message;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by wengxf on 2014/7/10 0010.
 */
public class MessageAttrBean {
    private String destAppCode;
    private String destDeptCode;
    private int msgType;
    private Map<String,String> attrs= new HashMap<String, String>();
    private String sourceAppCode;
    private String sourceDeptCode;


    public MessageAttrBean(String destAppCode, String destDeptCode,String sourceAppCode, String sourceDeptCode, int msgType) {
        this.destAppCode = destAppCode;
        this.destDeptCode = destDeptCode;
        this.sourceAppCode = sourceAppCode;
        this.sourceDeptCode = sourceDeptCode;
        this.msgType = msgType;
        attrs.clear();
    }


    public String getDestAppCode() {
        return destAppCode;
    }

    public String getDestDeptCode() {
        return destDeptCode;
    }

    public int getMsgType() {
        return msgType;
    }

    public String getSourceAppCode() {
        return sourceAppCode;
    }

    public String getSourceDeptCode() {
        return sourceDeptCode;
    }

    public String  getAttr(String name) {
        return attrs.get(name);
    }

    public Map<String, String> getAttrs() {
        return attrs;
    }

    public void setAttrs(String name,String value) {
        attrs.put(name,value);

    }

}
