package org.jdataex.flow.component.step.dataquery;

import org.jdataex.flow.component.DBOperation;
import org.jdataex.flow.component.step.dataaccess.RowDataAccessProcess;
import org.jdataex.flow.row.*;
import org.jdataex.util.CommonUtil;
import org.jdataex.util.FileUtil;
import org.jdataex.util.logger.LoggerFactory;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;
import sun.misc.BASE64Decoder;

import java.io.*;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Types;
import java.util.*;

/**
 * 数据查询
 * Created by wengxf on 2014/5/28 0028.
 */
public class DataQuery {

    private DBOperation dbOperation = new DBOperation();
    private ReadDataConfig readDataConfig = ReadDataConfig.getInstance();
    private String[] definecolumn ={"APP_CODE","DEPT_CODE","UPDATE_TIME","REG_TIME","ID"};
    private List<String> definelist=  Arrays.asList(definecolumn);

    /**
     * 获取审判业务，相关案件类型表对应案件标识的所有记录
     * @param ajbs 案件标识
     * @param ajlx 案件类型
     */
    public IRow getAllSP(String ajlx, int ajbs) {
        List<String> tables = readDataConfig.getTablesByLX(ajlx);
        IRow row = new Row();
        IRowHeader rowHeader = new RowHeader();
        rowHeader.put("LX",ajlx);
        row.setHeader(rowHeader);
        for (int i = 0; i < tables.size(); i++) {
            RowSet rowSet1 = getRowSetSP(tables.get(i), ajbs);
            if (rowSet1.size()>1){   //若该表有多条记录，则插入RowSet
                IColumn column = new Column(tables.get(i),rowSet1,ColumnType.ComplexRowSet);
                row.insertColumn(column);
            }else if (rowSet1.size()==1){  //若该表只有一条记录，则插入Row
                IColumn column = new Column(tables.get(i),rowSet1.getRow(0),ColumnType.ComplexRow);
                row.insertColumn(column);
            }
        }
        return row;
    }

    /**
     * 获取非审判业务，相应系统相关表对应条件的所有记录
     * @param lx 系统类型
     * @param tj 条件字段名和值
     */
    public IRow getALLFSP(String lx, Map<String, Object> tj) {
        List<String> tables = readDataConfig.getTablesByLX(lx);
        Set<String> co = tj.keySet();
        Map<String,Object> col = new HashMap<>();
        Map<String,Integer> types = new HashMap<>();

        IRow row = new Row();
        IRowHeader rowHeader = new RowHeader();
        rowHeader.put("LX",lx);
        row.setHeader(rowHeader);
       // boolean flag =false;
        for (int i = 0; i < tables.size(); i++) {
             /* String sql = "select * from "+tables.get(i);
          ResultSet rs = dbOperation.sqlQuery(sql,null);
            try {
                if (rs.next()){
                    ResultSetMetaData rsm = rs.getMetaData();
                    for (int a=1;a<=rsm.getColumnCount();a++){
                         if (co.contains(rsm.getColumnName(a))){
                               col.put(rsm.getColumnName(a),tj.get(rsm.getColumnName(a)));
                         }
                    }
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }*/

            List<String> columns = readDataConfig.getColumnsByTable(tables.get(i));
            Map<String,String>  typesByTable = readDataConfig.getColumnAndTypesByTable(tables.get(i));
            col.clear();
            types.clear();
           Iterator<String> iterator=co.iterator();
            while (iterator.hasNext()){
                String colu=iterator.next();
                if (columns.contains(colu)){  //查看表是否包含条件字段，若包含则将该条件字段放入到该表的查询条件中
                    col.put(colu,tj.get(colu));
                    ColumnType type = ColumnType.valueOf(typesByTable.get(colu).toUpperCase());
                    RowDataAccessProcess t = new RowDataAccessProcess();

                    types.put(colu,t.columnTypetoSQLType(type));
                }
            }


            if (col.size()>0) {
                RowSet rowSet1 = getRowSetFSP(tables.get(i), col,types);

                if (rowSet1.size() > 1) {
                    IColumn column = new Column(tables.get(i), rowSet1, ColumnType.ComplexRowSet);
                    row.insertColumn(column);
                } else if (rowSet1.size() == 1) {
                    IColumn column = new Column(tables.get(i), rowSet1.getRow(0), ColumnType.ComplexRow);
                    row.insertColumn(column);
                }
            }

        }
        return row;
    }

    public String querySQLByColumn(String tablename, String[] columns, String referencekey) {
        String values = columns[0];
        for (int i = 1; i < columns.length; i++) {
            values = values + "," + columns[i];
        }
        String sql = "select " + values + " from " + tablename + " where " + referencekey + "=?";
        return sql;
    }

    /**
     * 根据案件标识获取表的所有记录，查询语句
     */
    public String querySQLAllByAjbs(String tablename, int ajbs) {
        String sql = "select * from " + tablename + " where AJBS = " + ajbs;
        return sql;
    }

    /**
     * 根据条件map获取表的所有记录，查询语句
     */
    public String querySQLAllByConditions(String tablename, String[] conditionkey) {
        String values = conditionkey[0] + "= ?";
        for (int i = 1; i < conditionkey.length; i++) {
            values = values + " and  " + conditionkey[i] + "=? ";
        }
        String sql = "select * from " + tablename + " where " + values;
        return sql;
    }



    /**
     * 获取非审判业务，表对应条件的所有记录
     */
    public RowSet getRowSetFSP(String tablename, Map<String, Object> conditions,Map<String,Integer> types) {
        String[] conditionkey = new String[conditions.size()];
        conditions.keySet().toArray(conditionkey);
        Object[] conditionvalue = conditions.values().toArray();
        int[] type = new int[types.size()];
        Collection<Integer> ty = types.values();
         Iterator<Integer> t=ty.iterator();
        int a=0;
        while(t.hasNext()){
           type[a] = t.next();
           a++;
        }
        String sql = querySQLAllByConditions(tablename, conditionkey);
        RowSet rowSet = new RowSet();
        ResultSet resultSet = dbOperation.sqlQuery(sql, conditionvalue,type, null);
        try {
            while (!CommonUtil.isNullValue(resultSet)&&resultSet.next()) {
                IRow row = new Row();
                IRowHeader rowHeader = new RowHeader();
                rowHeader.put("tablename", tablename);
                row.setHeader(rowHeader);
                ResultSetMetaData rsm = resultSet.getMetaData();
                for (int i = 1; i <= rsm.getColumnCount(); i++) {
                    //                    判断该值是否需要反回，默认全是需要

                    if (readDataConfig.getColumnsByTable(tablename).contains(rsm.getColumnName(i))||definelist.contains(rsm.getColumnName(i))) {
                        if (readDataConfig.getColumnsByTable(tablename).contains(rsm.getColumnName(i))&&readDataConfig.getColumnAndTypesByTable(tablename).get(rsm.getColumnName(i)).equalsIgnoreCase("date")){
                            row.putColumn(rsm.getColumnName(i),resultSet.getDate(rsm.getColumnName(i)));
                        }else if (resultSet.getMetaData().getColumnType(i)== Types.BLOB){
                            BASE64Decoder decoder = new BASE64Decoder();
//                            ByteArrayInputStream msgContent =(ByteArrayInputStream) resultSet.getBlob(i).getBinaryStream();
//                                    11g数据库不支持BinaryInputStream转换
                            InputStream msgContent = resultSet.getBlob(i).getBinaryStream();
                            //byte[] byte_data = null;//new byte[msgContent.available()];
                            String result=new String();
                            try {
                            byte[] byte_data  = decoder.decodeBuffer(msgContent);
                            msgContent.read(byte_data, 0,byte_data.length);
                            String re = new String(byte_data);
                            result = new String(re.getBytes("utf-8"));
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                           row.putColumn(rsm.getColumnName(i),result);
                            try {
                                msgContent.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }else {
                            row.putColumn(rsm.getColumnName(i), resultSet.getObject(rsm.getColumnName(i)));
                        }
                    }
                }
                rowSet.putRow(row);
            }
        } catch (SQLException e) {
            LoggerFactory.getRootLogger().error(e.getMessage(), e);
        }
        try {
            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowSet;
    }

    /**
     * 获取审判业务，表对应案件标识的所有记录
     */
    public RowSet getRowSetSP(String tablename, int ajbs) {
        String sql = querySQLAllByAjbs(tablename, ajbs);
        ResultSet resultSet = dbOperation.sqlQuery(sql, null);
        RowSet rowSet = new RowSet();
        try {
            while (resultSet.next()) {
                IRow row = new Row();
                IRowHeader rowHeader = new RowHeader();
                rowHeader.put("tablename", tablename);
                row.setHeader(rowHeader);
                ResultSetMetaData rsm = resultSet.getMetaData();
                for (int i = 1; i <= rsm.getColumnCount(); i++) {
//                    判断该值是否需要反回，默认全是需要
                    if (readDataConfig.getColumnsByTable(tablename).contains(rsm.getColumnName(i))||definelist.contains(rsm.getColumnName(i))) {
                        System.out.println(rsm.getColumnName(i)+" : "+rsm.getColumnTypeName(i));
                        if (!definelist.contains(rsm.getColumnName(i))&&readDataConfig.getColumnAndTypesByTable(tablename).get(rsm.getColumnName(i)).equalsIgnoreCase("date")){
                            row.putColumn(rsm.getColumnName(i),resultSet.getDate(rsm.getColumnName(i)));
                        }else  if (rsm.getColumnType(i)== Types.BLOB&&resultSet.getObject(rsm.getColumnName(i))!=null){
                           InputStream msgContent = resultSet.getBlob(rsm.getColumnName(i)).getBinaryStream();
//                          11g数据库不支持BinaryInputStream转换
                            BASE64Decoder decoder = new BASE64Decoder();
                            String result=new String();
                            try {
                                byte[] byte_data  = decoder.decodeBuffer(msgContent);
                                msgContent.read(byte_data, 0,byte_data.length);
                                String re = new String(byte_data);
                                result = new String(re.getBytes("utf-8"));
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                            row.putColumn(rsm.getColumnName(i),result);
                            try {
                                msgContent.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }else {
                            row.putColumn(rsm.getColumnName(i), resultSet.getObject(rsm.getColumnName(i)));
                        }
                    }
                }
                rowSet.putRow(row);
            }
        } catch (SQLException e) {
            LoggerFactory.getRootLogger().error(e.getMessage(), e);
        }
        try {
            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowSet;
    }


}
