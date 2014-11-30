package org.jdataex.flow.component.step.trigger;

import java.util.Map;

/**
 * Created by wengxf on 14-4-25.
 * 目的表数据封装Bean
 */
public class DestData {

    private Map<String, String> field_type;
    private Map<String, Object> field_value;
    private String action;
    private String table;

    public Map<String, String> getField_type() {
        return field_type;
    }

    public void setField_type(Map<String, String> field_type) {
        this.field_type = field_type;
    }

    public Map<String, Object> getField_value() {
        return field_value;
    }

    public void setField_value(Map<String, Object> field_value) {
        this.field_value = field_value;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getTable() {
        return table;
    }

    public void setTable(String table) {
        this.table = table;
    }
}