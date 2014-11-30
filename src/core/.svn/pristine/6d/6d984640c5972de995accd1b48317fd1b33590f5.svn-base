package org.jdataex.flow.component.step.dataaccess;


import org.jdataex.flow.component.DBOperation;
import org.jdataex.flow.row.*;
import org.jdataex.resource.databasepool.ConfigDatabasePoolBean;
import org.jdataex.resource.databasepool.ParseDSConfig;
import org.jdataex.util.logger.LoggerFactory;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;


import org.xml.sax.InputSource;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

/**
 * 缓存表相关操作
 * Created by wengxf on 2014/5/19 0019.
 */
public class MsgCacheProcess extends ComplexDataAccessProcess {

    private int maxRetryTimes = 5;

    private DBOperation dbOperation = new DBOperation();
   /**
    *
    *缓存表清理，超过重试次数的操作类型为删除的并且错误信息是改变0条记录的记录数据
    * TODO 是否还得清理其他情况的
    */
    public void clearMsgCache() {
        this.setLogger(LoggerFactory.getRootLogger());
        String sql = "DELETE FROM  MsgCacheTable"
                + " WHERE MsgRetryTimes > " + maxRetryTimes
                + " And OperationType = '" + MsgCacheBean.OPERATION_TYPE_DELETE
                + "' And MsgFailedText = '0 rows has changed'";
        dbOperation.sqlExecute(sql, null);

    }
     /**
      * 删除缓存表中对应MsgID的记录
      * */
    public void deleteMsgCache(int msgid) {
        String sql = "delete from MsgCacheTable where MsgID = " + msgid;
        LoggerFactory.getRootLogger().debug(sql);
        dbOperation.sqlExecute(sql, null);

    }
    /**
     * 更行缓存表记录，主要更新尝试的次数和错误信息以及最新尝试重新入库的时间
     * */
    public int updateMsgCache(MsgCacheBean msgCacheBean, String error) throws SQLException {
        String sql = "update MsgCacheTable set MsgRetryTimes = ? ,MsgFailedText = ?,MsgQueueAt = ? where MsgID =?";
        Object[] objects = new Object[4];
        int[] types = new int[4];
        objects[0] = msgCacheBean.getMsgRetryTimes() + 1;
        types[0] = Types.INTEGER;
        objects[1] = error;
        types[1] = Types.VARCHAR;
        objects[2] = new Timestamp(System.currentTimeMillis());
        types[2] = Types.TIMESTAMP;
        objects[3] = msgCacheBean.getMsgId();
        types[3] = Types.NUMERIC;
        return dbOperation.sqlUpdate(sql, objects, types, null);

    }
     /**
      *缓存表数据获取，这里是每次获取前十条最先插入的记录
      */
    public List<MsgCacheBean> queryMsgCache() throws SQLException {
        List<MsgCacheBean> caches = new ArrayList<MsgCacheBean>();
        String sql= new String();
        ParseDSConfig pd=new ParseDSConfig();
        //LoggerFactory.getRootLogger().info("加载连接池配置文件");
        Vector poolconfig = pd.readConfigInfo("config/dsconfig.xml");
        List<ConfigDatabasePoolBean> poolList = new ArrayList<>();
        Iterator allpoolconfig=poolconfig.iterator();
        while(allpoolconfig.hasNext())
        {
            ConfigDatabasePoolBean pool=  (ConfigDatabasePoolBean) allpoolconfig.next();
            poolList.add(pool);
           // LoggerFactory.getRootLogger().info("加载连接池:"+pool.getPoolname());

        }
//        根据数据库类型选择sql语句，缓存表的默认库为配置文件第一个库
        LoggerFactory.getRootLogger().info("DatabaseType: "+poolList.get(0).getDatabaseType());
        if(poolList.get(0).getDatabaseType().equalsIgnoreCase("sybase")) {
            sql = "set Rowcount 10 select MsgID,MsgQueueAt, MsgStatus, MsgRetryTimes, " +
                    "MsgDeliveredAt,MsgFailedText,OperationType, MsgContent from MsgCacheTable order by MsgDeliveredAt ASC set Rowcount 100";
        }
        else if (poolList.get(0).getDatabaseType().equalsIgnoreCase("oracle")){
            sql = "select MsgID,MsgQueueAt, MsgStatus, MsgRetryTimes," +
                    "MsgDeliveredAt,MsgFailedText,OperationType, MsgContent from " + "(select MsgID,MsgQueueAt, MsgStatus, MsgRetryTimes,"  +
                    " MsgDeliveredAt,MsgFailedText,OperationType, MsgContent from "+
                    "MsgCacheTable order by MsgDeliveredAt ASC) where rownum <=10" ;
        }
        ResultSet rs = dbOperation.sqlQuery(sql, null);
        while (rs.next()) {
            MsgCacheBean msgCacheBean = new MsgCacheBean();
            msgCacheBean.setDataObject(fromContent(rs.getString("MsgContent")));
            msgCacheBean.setMsgId(rs.getInt("MsgId"));
            msgCacheBean.setMsgDeliveredAt(rs.getTimestamp("MsgDeliveredAt"));
            msgCacheBean.setMsgFailedText(rs.getString("MsgFailedText"));
            msgCacheBean.setMsgQueuedAt(rs.getTimestamp("MsgQueueAt"));
            msgCacheBean.setMsgStatus(rs.getString("MsgStatus"));
            msgCacheBean.setMsgRetryTimes(rs.getInt("MsgRetryTimes"));
            msgCacheBean.setOperationType(rs.getString("OperationType"));
            caches.add(msgCacheBean);
        }
          LoggerFactory.getRootLogger().debug("List size:"+caches.size());
        return caches;
    }
     /**
      * 将字段MsgContent的值转换为Row
      * */
    public IRow fromContent(String content) {

        IRow row = new Row();
        IRowHeader rowHeader = new RowHeader();
        SAXBuilder sb = new SAXBuilder();
        StringReader stringReader = new StringReader(content);
        InputSource inputSource = new InputSource(stringReader);
        try {
            Document document = sb.build(inputSource);
            Element rowroot = document.getRootElement();
            Element header = rowroot.getChild("header");
            Element columns = rowroot.getChild("columns");
            List properties = header.getChildren();
            List columnlist = columns.getChildren();
            Iterator allproperty = properties.iterator();
            Iterator allcolumn = columnlist.iterator();
            while (allproperty.hasNext()) {
                Element property = (Element) allproperty.next();
                rowHeader.put(property.getChild("key").getText(), property.getChild("value").getText());

            }
            row.setHeader(rowHeader);
            while (allcolumn.hasNext()) {
                Element column = (Element) allcolumn.next();
                ColumnType columnType = ColumnType.valueOf(column.getChild("type").getText().toUpperCase());
                IColumn iColumn = new Column(column.getChild("name").getText(),
                        column.getChild("value").getText(), columnType);
                row.insertColumn(iColumn);
            }


        } catch (JDOMException e) {
            getLogger().error(e.getMessage(), e);
        } catch (IOException e) {
            getLogger().error(e.getMessage(), e);
        }
        return row;
    }


    public static void main(String[] args) {
        IRow row = new Row();
        IRowHeader rowHeader = new RowHeader();
        IColumn column = new Column("ID", 1, ColumnType.INT);
        row.insertColumn(column);
        rowHeader.put("tablename", "test");
        rowHeader.put("operation", "insert");
        row.setHeader(rowHeader);
        MsgCacheProcess cacheProcess = new MsgCacheProcess();
        System.out.println(cacheProcess.toContent(row));
        row = cacheProcess.fromContent(cacheProcess.toContent(row));
        System.out.println(row.getColumn(0).getName());
        System.out.println(row.getColumn(0).getType());
        System.out.println(new Timestamp(System.currentTimeMillis()));
        // ColumnType type ;;//= ColumnType.;//ColumnType.INT;
        // type.setName("String");
        // ColumnType t = type;//ColumnType.valueOf("INT");
        //System.out.println("columntyp:"+type);
    }
}
