package org.jdataex.flow.component.step.trigger;


import org.jdataex.flow.component.DBOperation;
import org.jdataex.util.logger.LoggerFactory;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by wengxf on 14-4-23.
 * Sybase Trigger sql
 */
public class TriggerSqlHandler_sybase {

    public void triggerCreateOrReplaceSql(String tablename, String triggername, String action, String middletable, String[] primarykey) {
        //  action = Integer.parseInt(action)+"";
        String msgparam = "MsgParam1";
        String newprimarykeyparam = "inserted." + primarykey[0];
        String oldprimarykeyparam = "deleted." + primarykey[0];
        String primarykeyparam ="convert(varchar(255),"+ primarykey[0]+")";
        DBOperation dbOperation = new DBOperation();
        for (int i = 1; i < primarykey.length; i++) {
            msgparam = msgparam + ",MsgParam" + (i+1);
            oldprimarykeyparam = oldprimarykeyparam + ",deleted." + primarykey[i];
            primarykeyparam = primarykeyparam + ", " + "convert(varchar(255),"+ primarykey[1]+")";
        }
        if (action.equals("1.0") || action.equals("0.0") || action.equals("4.0")) {
            //String  sql = "create  Trigger " + triggername + "_insert" + "  on " + tablename + " for insert as begin  insert into " + middletable + " (MsgServiceName, MsgSourceTableName,MsgAction," + msgparam + ") values(" + triggername + "," + tablename +
            //          "  ,insert," + newprimarykeyparam + ")  end;";
            // String  sql1 = "insert into Tr_Trigger ( MsgServiceName , MsgTableName , MsgTriggerName , MsgMiddleName ) values( \"" + triggername + "\", \"" + tablename + "\", \"" + triggername + "_insert\", \""+middletable+"\" )";
            String sql = "create trigger " + triggername + "_insert " + "  on " + tablename + " for insert as if not exists(select * from deleted) and exists(select * from inserted)  begin insert into " + middletable + " (MsgServiceName, MsgSourceTableName,MsgAction,MsgInsertAt," + msgparam + ")"
                    + " select" + triggername + " , " + tablename + ", insert, " +"getdate(),"+ primarykeyparam + " from inserted  end";
            String sql1 = "insert into Tr_Trigger ( MsgServiceName , MsgTableName , MsgTriggerName , MsgMiddleName ) values( ?,?,?,? )";
            String[] param = new String[4];
            param[0] = triggername;
            param[1] = tablename;
            param[2] = triggername + "_insert";
            param[3] = middletable;
            LoggerFactory.getRootLogger().debug("创建触发器：" + sql);
            LoggerFactory.getRootLogger().debug("插入触发器表：" + sql1);
            dbOperation.sqlExecute(sql,null);
            dbOperation.sqlStringUpdate(sql1, param,null);
            //dbOperation.sqlExecute(sql1);
        }
        if (action.equals("2.0") || action.equals("0.0") || action.equals("4.0")) {
            // String sql = "create Trigger " + triggername + "_update   on " + tablename + "  for  update as begin  insert into " + middletable + " (MsgServiceName, MsgSourceTableName,MsgAction," + msgparam + ")values( " + triggername + "," + tablename +
            //        "  ,update," + newprimarykeyparam + ")  end;";
            //  String sql1 = "insert into Tr_Trigger ( MsgServiceName , MsgTableName , MsgTriggerName , MsgMiddleName ) values( \"" + triggername + "\", \"" + tablename + "\", \"" + triggername + "_update\", \""+middletable+"\" )";
            String sql = "create trigger " + triggername + "_update " + "  on " + tablename + " for update as if  exists(select * from deleted) and exists(select * from inserted)  begin insert into " + middletable + " (MsgServiceName, MsgSourceTableName,MsgAction,MsgInsertAt," + msgparam + ")"
                    + " select " + triggername + " , " + tablename + ", update , " +"getdate(),"+ primarykeyparam + " from inserted  end";
            String sql1 = "insert into Tr_Trigger ( MsgServiceName , MsgTableName , MsgTriggerName , MsgMiddleName ) values( ?,?,?,? )";
            String[] param = new String[4];
            param[0] = triggername;
            param[1] = tablename;
            param[2] = triggername + "_update";
            param[3] = middletable;
            LoggerFactory.getRootLogger().debug("创建触发器："+sql);
            LoggerFactory.getRootLogger().debug("插入触发器表："+sql1);
            //dbOperation.sqlExecute(sql1);
            dbOperation.sqlStringUpdate(sql1, param,null);
            dbOperation.sqlExecute(sql,null);
        }
        if (action.equals("3.0") || action.equals("0.0")) {
            // String sql = "create  Trigger " + triggername + "_delete   on " + tablename + " for delete as begin  insert into " + middletable + " (MsgServiceName, MsgSourceTableName,MsgAction," + msgparam + ")values(" + triggername + "," + tablename +
            //        "  ,delete," + oldprimarykeyparam + ")  end;";
            // String sql1 = "insert into Tr_Trigger ( MsgServiceName , MsgTableName , MsgTriggerName , MsgMiddleName ) values( \"" + triggername + "\", \"" + tablename +" \", \"" + triggername + "_delete\", \""+middletable+"\" )";
            String sql = "create trigger " + triggername + "_delete " + "  on " + tablename + " for delete as if  exists(select * from deleted) and not exists(select * from inserted)  begin insert into " + middletable + " (MsgServiceName, MsgSourceTableName,MsgAction,MsgInsertAt," + msgparam + ")"
                    + " select " + triggername + " , " + tablename + ", delete , " +"getdate(),"+ primarykeyparam + " from deleted  end";
            String sql1 = "insert into Tr_Trigger ( MsgServiceName , MsgTableName , MsgTriggerName , MsgMiddleName ) values( ?,?,?,? )";
            String[] param = new String[4];
            param[0] = triggername;
            param[1] = tablename;
            param[2] = triggername + "_delete";
            param[3] = middletable;
            LoggerFactory.getRootLogger().debug("创建触发器："+sql);
            LoggerFactory.getRootLogger().debug("插入触发器表："+sql1);
            // dbOperation.sqlExecute(sql1);
            dbOperation.sqlStringUpdate(sql1, param,null);
            dbOperation.sqlExecute(sql,null);
        }


    }


    public void triggerDeleteSql(String triggername, String tablename) {
        String sql = "drop trigger " + triggername + "on" + tablename;
        DBOperation dbOperation = new DBOperation();
        dbOperation.sqlExecute(sql,null);
    }

    public void updateTrigger(String tablename, String triggername, String action, String[] primarykey) {
        String sql = "select * from Tr_Trigger where service =  \'" + triggername + "\'";
        DBOperation dbOperation = new DBOperation();
        ResultSet rs = dbOperation.sqlQuery(sql,null);
        String middletablename = new String();
        try {
            while (rs.next()) {
                triggerDeleteSql(rs.getString("MsgTriggerName"), rs.getString("MsgTableName"));
                middletablename = rs.getString("MsgMiddleName");
            }
            triggerCreateOrReplaceSql(tablename, triggername, action, middletablename, primarykey);
            rs.close();
        } catch (SQLException e) {
            //TODO e.printStackTrace();
           // LoggerFactory.getRootLogger().traceI18nc(TriggerSqlHandler.class,"SQLException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        }


    }

}
