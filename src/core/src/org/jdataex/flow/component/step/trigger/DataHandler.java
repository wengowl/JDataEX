package org.jdataex.flow.component.step.trigger;

import com.googlecode.aviator.AviatorEvaluator;
import org.jdataex.flow.component.DBOperation;
import org.jdataex.flow.component.step.dataquery.ReadDataConfig;
import org.jdataex.flow.row.*;
import org.jdataex.util.JDBCUtil;
import org.jdataex.util.logger.LoggerFactory;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

/**
 * Created by wengxf on 14-4-23.
 * 数据处理
 */
public class DataHandler {

    private TriggerDataBean triggerDataBean ;
    private String poolname;
    //TODO 路径配置统一
    private String path = "config/trigger/current/current.xls";
    private String appcode;
    private String deptcode;



    public DataHandler(TriggerDataBean triggerDataBean,String poolname) {
        this.triggerDataBean = triggerDataBean;
        this.poolname = poolname;

    }
    /**
     *
     *预留用于设置app_code和dept_code;
     *
     *
     */
    public void setCode(){

    }

    /**
     * 加载配置文件根据事务名获取配置中的bean内容
     */
    public TriggerDataBean getTriggerDataBean() {
        ConfigBean configBean = ConfigBean.getInstance();
        return configBean.getTriggerDataBean(triggerDataBean);
    }

    /**
     * 更新msgid
     */

    public void updateMsgid(int msgid, String field) {
        String sql = "Update Tr_Msgids set " + field + "=" + msgid;
        DBOperation dbOperation = new DBOperation();
        dbOperation.sqlExecute(sql, poolname);
    }

    /**
     * 获取当前中间表记录的表对应关系
     *
     * @param msgid  先前一次处理的序号
     * @param tr_msg 中间表名
     */

    public TriggerDataBean middleDataGet(int msgid, String tr_msg) {
        String[] msgparam = new String[5];
        LoggerFactory.getRootLogger().debug("middledataget msgid=" + msgid);
        String sql = "select * from " + tr_msg + " where MsgId=" + msgid;

        DBOperation dbOperation = new DBOperation();
        ResultSet rs = dbOperation.sqlQuery(sql, poolname);
        /*if (rs == null) {
            System.out.println("*******RS******");
            return null;
        }*/

        try {
            if (rs.next()) {
                LoggerFactory.getRootLogger().debug("middledataget triggerdatabean");
                triggerDataBean.setAction(rs.getString("MsgAction"));
                triggerDataBean.setService(rs.getString("MsgServiceName"));
                triggerDataBean.setTablename(rs.getString("MsgSourceTableName"));
                msgparam[0] = rs.getString("MsgParam1");
                for (int i = 1; i < 5 && msgparam[i - 1] != null; i++) {
                    msgparam[i] = rs.getString("MsgParam" + (i + 1));
                }
                triggerDataBean.setMsgparam(msgparam);
                triggerDataBean.setPrimarykey();
                triggerDataBean.setDestfield(getTriggerDataBean().getDestfield());
                triggerDataBean.setDestaction(getTriggerDataBean().getDestaction());
                triggerDataBean.setDesttablename(getTriggerDataBean().getDesttablename());
                triggerDataBean.setDesttype(getTriggerDataBean().getDesttype());
                triggerDataBean.setExchanges(getTriggerDataBean().getExchanges());
            /*triggerDataBean.setDestfield(configBean.getTriggerDataBean().getDestfield());
            triggerDataBean.setDestaction(configBean.getTriggerDataBean().getDestaction());
            triggerDataBean.setDesttablename(configBean.getTriggerDataBean().getDesttablename());
            triggerDataBean.setDesttype(configBean.getTriggerDataBean().getDesttype());
            triggerDataBean.setExchanges(configBean.getTriggerDataBean().getExchanges());*/
                rs.close();
            } else {
                triggerDataBean = null;
            }
//            if(triggerDataBean==null&&resultSet.next()){
//                triggerDataBean= new TriggerDataBean();
//                System.out.println("*******RS******");
//                msgid=msgid+1 ;
//                triggerDataBean=middleDataGet(msgid,tr_msg);
//                return triggerDataBean;
//            }

        } catch (SQLException e) {
            //TODO e.printStackTrace();
            //LoggerFactory.getRootLogger().error(e.getMessage(),e);
            LoggerFactory.getRootLogger().error(e.getMessage(), e);
        }

        return triggerDataBean;
    }

    /**
     * 数据库源表数据值获取
     */
    public void souDataGet(TriggerDataBean triggerDataBean) {
        String[] msg = triggerDataBean.getMsgparam();
        String sql = "select * from " + triggerDataBean.getTablename();
        String sql1 = " where " + triggerDataBean.getPrimarykey().get(0) + "=" + msg[0];
        for (int i = 1; i < triggerDataBean.getPrimarykey().size(); i++) {
            sql1 = sql1 + " and " + triggerDataBean.getPrimarykey().get(i) + "=" + msg[i];
        }
        triggerDataBean.setSql(sql1);
        sql = sql + sql1;
        DBOperation dbOperation = new DBOperation();
        ResultSet rs = dbOperation.sqlQuery(sql, poolname);
        String sql2 = "select * from " + triggerDataBean.getTablename();
       ResultSet rs2 = dbOperation.sqlQuery(sql2, poolname);
        Map<String, Object> value = new HashMap<>();
        Map<String, String> type = new HashMap<>();
        try {
            if (rs.next()) {
                for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {
                    value.put(rs.getMetaData().getColumnName(i), rs.getObject(i)); //获取记录对应表字段和对应的值
                    type.put(rs.getMetaData().getColumnName(i), rs.getMetaData().getColumnTypeName(i));
                    System.out.println("&&&&&&&&: " + rs.getMetaData().getColumnTypeName(i));
                }
            }
            /**
             * 源表数据类型根据入库的数据配置获取
             */
            if (rs2.next()) {
                for (int i = 1; i <= rs2.getMetaData().getColumnCount(); i++) {
                    // value.put(rs.getMetaData().getColumnName(i), rs.getObject(i)); //获取记录对应表字段和对应的值
                    type.put(rs2.getMetaData().getColumnName(i),ReadDataConfig.getInstance().getColumnAndTypesByTable(triggerDataBean.getTablename()).get(rs2.getMetaData().getColumnName(i)));
                }
            }



        } catch (SQLException e) {
            //TODO
            //e.printStackTrace();
            //  LoggerFactory.getRootLogger().traceI18nc(DataHandler.class,"SQLException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(), e);
        } finally {
            JDBCUtil.closeQueit(rs2);
            JDBCUtil.closeQueit(rs);

        }

        triggerDataBean.setSourcevalue(value);  //设置源表字段和值
        triggerDataBean.setSourcetype(type);
        if (triggerDataBean.getAction().equals("delete")) {
            Map<String, Object> valued = new HashMap<>();
            //   Map<String,String> typed = new HashMap<>();
            String[] msgparam = triggerDataBean.getMsgparam();
            for (int i = 0; i < triggerDataBean.getPrimarykey().size(); i++) {
                //System.out.println("-----------------------------");
                valued.put(triggerDataBean.getPrimarykey().get(i), msgparam[i]);
                //typed.put(triggerDataBean.getPrimarykey().get(i),type.get(triggerDataBean.getPrimarykey().get(i)));
            }
            triggerDataBean.setSourcevalue(valued);  //设置源表字段和值
            //triggerDataBean.setSourcetype(typed);
        }
        this.triggerDataBean = triggerDataBean;
    }

    /**
     * 源表数据转换为目标数据
     */
    public IRow SouToDest() {
        // int[] a = new int[20];
        Map<String, Object> field_value = new HashMap<>();
        Map<String, String> field_type = new HashMap<>();
        IRow row = new Row();
        DestData destData = new DestData();
        boolean flag = true;
        for (int i = 0; triggerDataBean.getExchanges() != null && i < triggerDataBean.getExchanges().size(); i++) {
            if (triggerDataBean.getExchanges().get(i) != null) {
                flag = false;
            }
        }
        //如果目的字段为空，则表示全是与原表字段结构相同
        if (triggerDataBean.getDestfield() == null) {
            destData.setField_value(triggerDataBean.getSourcevalue());
            destData.setField_type(triggerDataBean.getSourcetype());
            //System.out.println("destfield==null");
        }
        Set<String> key1 = destData.getField_type().keySet();
        //Set<String> key2 =destData.getField_type().keySet();
        Iterator<String> it = key1.iterator();
        while (it.hasNext()) {
            String x = it.next();
            // System.out.println("^^^^^^"+x+"  type "+destData.getField_type().get(x));
        }
            /*所需的值为配置文件上的几个字段*/
        if (triggerDataBean.getDestfield() != null) {
            for (int i = 0; i < triggerDataBean.getDestfield().size(); i++) {
                if (triggerDataBean.getExchanges().get(i) != null) {
//                    用aviator根据表达式进行转换
                    Object obj = AviatorEvaluator.execute(triggerDataBean.getExchanges().get(i), triggerDataBean.getSourcevalue());
                    field_value.put(triggerDataBean.getDestfield().get(i), obj);
                } else {
                    field_value.put(triggerDataBean.getDestfield().get(i), triggerDataBean.getSourcevalue().get(triggerDataBean.getField().get(i)));
                }
                // field_value.put(triggerDataBean.getDestfield().get(i), triggerDataBean.getSourcevalue().get(triggerDataBean.getField().get(i)));
                if (triggerDataBean.getDesttype() != null && triggerDataBean.getDesttype().get(i) != null) {
                    field_type.put(triggerDataBean.getDestfield().get(i), triggerDataBean.getDesttype().get(i));
                } else {
                    field_type.put(triggerDataBean.getDestfield().get(i), triggerDataBean.getSourcetype().get(triggerDataBean.getField().get(i)));
                }
            }
            destData.setField_value(field_value);
            destData.setField_type(field_type);
        }

        destData.setTable(triggerDataBean.getTablename());
        //  destData.
        if (triggerDataBean.getDestaction() == null) {
            destData.setAction(triggerDataBean.getAction());
        } else {
            destData.setAction(triggerDataBean.getDestaction());
        }
        IRowHeader header = new RowHeader();
        header.put("tableName", destData.getTable());
        row.setHeader(header);
        Object[] fields = destData.getField_value().keySet().toArray();
        for (int i = 0; i < destData.getField_value().size(); i++) {
            // ColumnType type = ColumnType.STRING;
            String field = fields[i].toString();
            //System.out.println("field******"+field);
           /* if (triggerDataBean.getDestfield()!=null) {
                 field = triggerDataBean.getDestfield().get(i);
            }else {
                field = triggerDataBean.getField().get(i);
            }*/
            //System.out.println("fieldtype******"+destData.getField_type().get(field));

          ColumnType type = ColumnType.valueOf(destData.getField_type().get(field).toUpperCase());
//            System.out.println("type____"+type.getName());
            IColumn column = new Column(field,destData.getField_value().get(field),type);
//            IColumn column = new Column(field, destData.getField_value().get(field));
            row.insertColumn(column);
            LoggerFactory.getRootLogger().debug("insert column:  columtype ：" + column.getType().getName());

        }

        LoggerFactory.getRootLogger().debug("insert row :  tablename ：" + row.getHeader().get("tableName") + ", action: " + row.getHeader().get("ACTION_TYPE"));

        IRowHeader rowHeader = new RowHeader();
        rowHeader.put("ACTION_TYPE", destData.getAction());
        rowHeader.put("APP_CODE",appcode);
        rowHeader.put("DEPT_CODE",deptcode);
        IRow packetrow = new Row();
        IColumn column = new Column(row.getHeader().get("tableName"),row,ColumnType.ComplexRow);
        packetrow.insertColumn(column);
        packetrow.setHeader(rowHeader);
        return packetrow;
    }


}
