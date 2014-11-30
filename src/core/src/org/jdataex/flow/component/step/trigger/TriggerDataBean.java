package org.jdataex.flow.component.step.trigger;

import org.jdataex.flow.component.DBOperation;
import org.jdataex.util.logger.LoggerFactory;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by wengxf on 14-4-23.
 * 对应同步配置的Bean
 */
public class TriggerDataBean {
    private String service;
    private int serviceid;
    private String tablename;
    private String action;

    private List<String> field = new ArrayList<>();
    private List<String> type = new ArrayList<>();

    private String desttablename;
    private String destaction;
    private List<String> destfield = new ArrayList<>();
    private List<String> desttype = new ArrayList<>();
    private List<String> exchanges = new ArrayList<>();
    private List<String> primarykey = new ArrayList<>();
    private Map<String, Object> sourcevalue;
    private Map<String, String>  sourcetype;
    private String[] msgparam = new String[10];
    private String sql = new String();
    private String poolname;

    public TriggerDataBean() {
    }

    public TriggerDataBean(String poolname) {
        this.poolname = poolname;
    }

    public Map<String, String> getSourcetype() {
        return sourcetype;
    }

    public void setSourcetype(Map<String, String> sourcetype) {
        this.sourcetype = sourcetype;
    }

    public String getSql() {
        return sql;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }

    public String[] getMsgparam() {
        return msgparam;
    }

    public void setMsgparam(String[] msgparam) {
        this.msgparam = msgparam;
    }

    public Map<String, Object> getSourcevalue() {
        return sourcevalue;
    }

    public void setSourcevalue(Map<String, Object> sourcevalue) {
        this.sourcevalue = sourcevalue;
    }

    public List<String> getPrimarykey() {
        return primarykey;
    }

    public void setPrimarykey() {
        primarykey.removeAll(primarykey);
        DBOperation dbOperation = new DBOperation();
        String[] primarykeys = dbOperation.getTablePK(this.getTablename(),poolname);
        if (primarykeys == null && this.getField() == null) {
//               若全为空，报警告信息
            LoggerFactory.getRootLogger().warn("表缺少主键！添加失败！");
        }
        if (primarykeys == null && this.getField() != null) {
            primarykeys = new String[1];
            primarykeys[0] = this.getField().get(0);

        }
        // zhujian创建
        if (primarykeys != null) {
            for (int i = 0; i < primarykeys.length; i++ ){
                primarykey.add(primarykeys[i]);
                //System.out.println("primarykey*********");
                LoggerFactory.getRootLogger().debug("add primarykey: " + primarykeys[i]);
            }
        }
    }

    public int getServiceid() {
        return serviceid;
    }

    public void setServiceid(int serviceid) {
        this.serviceid = serviceid;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getTablename() {
        return tablename;
    }

    public void setTablename(String tablename) {
        this.tablename = tablename;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public List<String> getField() {
        return field;
    }

    public void setField(List<String> field) {
        this.field = field;
    }

    public List<String> getType() {
        return type;
    }

    public void setType(List<String> type) {
        this.type = type;
    }

    public String getDesttablename() {
        return desttablename;
    }

    public void setDesttablename(String desttablename) {
        this.desttablename = desttablename;
    }

    public String getDestaction() {
        return destaction;
    }

    public void setDestaction(String destaction) {
        this.destaction = destaction;
    }

    public List<String> getDestfield() {
        return destfield;
    }

    public void setDestfield(List<String> destfield) {
        this.destfield = destfield;
    }

    public List<String> getDesttype() {
        return desttype;
    }

    public void setDesttype(List<String> desttype) {
        this.desttype = desttype;
    }

    public List<String> getExchanges() {
        return exchanges;
    }

    public void setExchanges(List<String> exchanges) {
        this.exchanges = exchanges;
    }
}
