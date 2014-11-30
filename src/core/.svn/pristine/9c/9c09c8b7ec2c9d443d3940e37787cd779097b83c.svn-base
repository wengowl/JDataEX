package org.jdataex.flow.component.step.dataaccess;

import org.jdataex.flow.component.BaseComponent;
import org.jdataex.flow.component.DBOperation;
import org.jdataex.flow.row.ColumnType;
import org.jdataex.flow.row.IRow;
import org.jdataex.util.logger.LoggerFactory;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;


import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.sql.Types;


/**
 * Created by wengxf on 14-5-6.
 * 数据入库操作处理
 */
public class DataAccessProcess extends BaseComponent {
    private SqlProcess sqlProcess = new SqlProcess();
    private DBOperation dbOperation = new DBOperation();


    /**
     * 数据插入
     */
    public int insertProcess(IRow row) throws SQLException {
        int size = row.getColumnsSize();
        if (size == 0) {
            LoggerFactory.getRootLogger().info("没有字段记录！");
            return 1;
        }
        if ((row.getHeader().get("referencekey")) != null) {
            size = size - 1;
        }
        String[] names = new String[size];
        Object[] values = new Object[size];
        int[] types = new int[size];
        for (int i = 0; i < size; i++) {
            names[i] = row.getColumn(i).getName();
            values[i] = row.getColumn(i).getValue();
            types[i] = columnTypetoSQLType(row.getColumn(i).getType());
        }

        String sql = sqlProcess.insertSQL(row.getHeader().get("tablename"), names);
        int i = dbOperation.sqlUpdate(sql, values, types, row.getHeader().get("database"));
        return i;
    }

    /**
     * 数据更新
     */
    public int updateProcess(IRow row) throws SQLException {
        int size = row.getColumnsSize();
        if (size == 0) {
            LoggerFactory.getRootLogger().info("没有字段记录！");
            return 1;
        }
        String referencekey = row.getHeader().get("referencekey");
        if (referencekey != null) {
            size = size - 1;
        }
        String[] names = new String[size + 1];
        Object[] values = new Object[size + 1];

        int[] types = new int[size + 1];
        for (int i = 0; i < size; i++) {
            names[i] = row.getColumn(i).getName();
            values[i] = row.getColumn(i).getValue();
            types[i] = columnTypetoSQLType(row.getColumn(i).getType());
        }
        if (referencekey != null) {
            names[size] = referencekey;
            values[size] = row.getColumn(size).getValue(); //最后一个值为参考的字段值
            types[size] = columnTypetoSQLType(row.getColumn(referencekey).getType());
        } else {
            names[size] = names[0];
            values[size] = values[0];
            types[size] = types[0];
        }


        String sql = sqlProcess.updateSQL(row.getHeader().get("tablename"), names);
        int i = dbOperation.sqlUpdate(sql, values, types, row.getHeader().get("database"));
        return i;


    }

    /**
     * 数据删除
     */
    public int deleteProcess(IRow row) throws SQLException {
        int size = row.getColumnsSize();
        if (size == 0) {
            LoggerFactory.getRootLogger().info("没有字段记录！");
            return 1;
        }
        String referencekey = row.getHeader().get("referencekey");
        if (referencekey != null) {
            size = size - 1;
        }
        String[] names = new String[size];
        Object[] values = new Object[size];

        int[] types = new int[size];
        for (int i = 0; i < size; i++) {
            names[i] = row.getColumn(i).getName();
            values[i] = row.getColumn(i).getValue();
            types[i] = columnTypetoSQLType(row.getColumn(i).getType());
        }
//        if (referencekey != null) {
//            names[size] = referencekey;
//            values[size] = row.getColumn(referencekey).getValue();
//            types[size] = columnTypetoSQLType(row.getColumn(referencekey).getType());
//        } else {
//            names[size] = names[0];
//            values[size] = values[0];
//            types[size] = types[0];
//        }

        String sql = sqlProcess.deleteSQL(row.getHeader().get("tablename"), names);
        int i = dbOperation.sqlUpdate(sql, values, types, row.getHeader().get("database"));
        return i;

    }

    /**
     * 把类型转换为JDBC类型
     */
    //TODO 可能还缺少一些类型
    public int columnTypetoSQLType(ColumnType columnType) {
        //String type = columnType.getName();
        switch (columnType) {
            case STRING:
                return Types.VARCHAR;
            case BIGDECIMAL:
                return Types.DECIMAL;
            case BOOLEAN:
                return Types.BOOLEAN;
            case BYTE:
                return Types.TINYINT;
            case SHORT:
                return Types.SMALLINT;
            case INT:
                return Types.INTEGER;
            case LONG:
                return Types.BIGINT;
            case FLOAT:
                return Types.FLOAT;
            case BYTES:
                return Types.VARBINARY;
            case DOUBLE:
                return Types.DOUBLE;
            case DATE:
                return Types.DATE;
            case TIME:
                return Types.TIME;
            case TIMESTAMP:
                return Types.TIMESTAMP;
            case CLOB:
                return Types.CLOB;
            case BLOB:
                return Types.BLOB;
            case ARRAY:
                return Types.ARRAY;
            case STRUCT:
                return Types.STRUCT;
            case REF:
                return Types.REF;
            case URL:
                return Types.VARCHAR;
            case JAVA_OBJECT:
                return Types.JAVA_OBJECT;

        }

        return Types.JAVA_OBJECT;
    }


    /**
     * 插入到缓存表
     */
    public int insertMsgCacheProcess(IRow row, String failedtxt, String operationtype) {
        int i = 0;
        Object[] objects = new Object[7];
        int[] types = new int[7];
        //objects[0] = row.getHeader().get("tablename");      typename
        //types[0]   = columnTypetoSQLType(ColumnType.STRING);
        objects[0] = new Timestamp(System.currentTimeMillis()); //MsgQueuedAt
        types[0] = columnTypetoSQLType(ColumnType.TIMESTAMP);
        objects[1] = "NEW";                                    // MsgStatus
        types[1] = columnTypetoSQLType(ColumnType.STRING);
        objects[2] = 0;                                        //MsgRetryTimes
        types[2] = columnTypetoSQLType(ColumnType.INT);
        objects[3] = new Timestamp(System.currentTimeMillis());//MsgDeliveredAt
        types[3] = columnTypetoSQLType(ColumnType.TIMESTAMP);
        objects[4] = failedtxt;                                  // MsgFailedText
        types[4] = columnTypetoSQLType(ColumnType.STRING);
        objects[5] = operationtype;                             //OperationType
        types[5] = columnTypetoSQLType(ColumnType.STRING);
        objects[6] = this.toContent(row);                                       //  MsgContent，row的所有数据保存为一条记录
        types[6] = Types.LONGNVARCHAR;                        //对应TEXT
        String sql = "INSERT INTO MsgCacheTable"
                + "(  MsgQueueAt, MsgStatus, "
                + "MsgRetryTimes, MsgDeliveredAt, MsgFailedText, OperationType, MsgContent) "
                + "VALUES( ?, ?, ?, ?, ?, ?, ?)";
        try {
            i = dbOperation.sqlUpdate(sql, objects, types, null);//插入到默认库
        } catch (SQLException e) {
            //TODO e.printStackTrace();
            // LoggerFactory.getRootLogger().traceI18nc(ComplexDataAccessProcess.class, "SQLException", e);
            LoggerFactory.getRootLogger().error(e.getMessage(), e);
        }
        return i;
    }

    /**
     * 转换为XML格式的字符串
     */
    public String toContent(IRow row) {
        String content = new String();
        Document document = new Document();
        Element rowroot = new Element("row");
        document.addContent(rowroot);
        Element header = new Element("header");
        Element columns = new Element("columns");
        rowroot.addContent(header);
        rowroot.addContent(columns);
        for (int i = 0; i < row.getColumnsSize(); i++) {
            Element column = new Element("column");
            columns.addContent(column);
            Element name = new Element("name");
            Element value = new Element("value");
            Element type = new Element("type");
            name.setText(row.getColumn(i).getName());
            value.setText(row.getColumn(i).getValue().toString());
            type.setText(row.getColumn(i).getType().toString());
            column.addContent(name);
            column.addContent(value);
            column.addContent(type);
        }

        if (row.getHeader().containsKey("tablename")) {
            Element property = new Element("property");
            header.addContent(property);
            Element key = new Element("key");
            key.setText("tablename");
            Element value = new Element("value");
            value.setText(row.getHeader().get("tablename"));
            property.addContent(key);
            property.addContent(value);
        }
        if (row.getHeader().containsKey("referencekey")) {
            Element property = new Element("property");
            header.addContent(property);
            Element key = new Element("key");
            key.setText("referencekey");
            Element value = new Element("value");
            value.setText(row.getHeader().get("referencekey"));
            property.addContent(key);
            property.addContent(value);
        }
        if (row.getHeader().containsKey("database")) {
            Element property = new Element("property");
            header.addContent(property);
            Element key = new Element("key");
            key.setText("database");
            Element value = new Element("value");
            value.setText(row.getHeader().get("database"));
            property.addContent(key);
            property.addContent(value);
        }
        if (row.getHeader().containsKey("operation")) {
            Element property = new Element("property");
            header.addContent(property);
            Element key = new Element("key");
            key.setText("operation");
            Element value = new Element("value");
            value.setText(row.getHeader().get("operation"));
            property.addContent(key);
            property.addContent(value);
        }

        XMLOutputter outputter = new XMLOutputter();
        XMLOutputter out = new XMLOutputter();

        Format format = Format.getPrettyFormat();

        //自定义xml文档的缩进(敲了四个空格，代表四个缩进)
        //format.setIndent("    ") ;
        out.setFormat(format);
        content = outputter.outputString(document);

        return content;
    }


    /**
     * 用于一张表的数据批处理插入
     * 重复造轮子啊^^_^^
     */
    public String getSQL(IRow row) {
        String sql = new String();
        if (row.getHeader().get("operation").equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_INSERT)) {
            int size = row.getColumnsSize();
            String[] names = new String[size];
            Object[] values = new Object[size];
            int[] types = new int[size];
            for (int i = 0; i < size; i++) {
                names[i] = row.getColumn(i).getName();
                values[i] = row.getColumn(i).getValue();
                types[i] = columnTypetoSQLType(row.getColumn(i).getType());
            }

            sql = sqlProcess.insertSQL(row.getHeader().get("tablename"), names);

        }
        if (row.getHeader().get("operation").equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_UPDATE)) {
            int size = row.getColumnsSize();
            String[] names = new String[size + 1];
            Object[] values = new Object[size + 1];
            String referencekey = row.getHeader().get("referencekey");
            int[] types = new int[size + 1];
            for (int i = 0; i < size; i++) {
                names[i] = row.getColumn(i).getName();
                values[i] = row.getColumn(i).getValue();
                types[i] = columnTypetoSQLType(row.getColumn(i).getType());
            }
            if (referencekey != null) {
                names[size] = referencekey;
                values[size] = row.getColumn(referencekey).getValue();
                types[size] = columnTypetoSQLType(row.getColumn(referencekey).getType());
            } else {
                names[size] = names[0];
                values[size] = values[0];
                types[size] = types[0];
            }


            sql = sqlProcess.updateSQL(row.getHeader().get("tablename"), names);

        }
        if (row.getHeader().get("operation").equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_DELETE)) {
            int size = row.getColumnsSize();
            String[] names = new String[size + 1];
            Object[] values = new Object[size + 1];
            String referencekey = row.getHeader().get("referencekey");
            int[] types = new int[size + 1];
            for (int i = 0; i < size; i++) {
                names[i] = row.getColumn(i).getName();
                values[i] = row.getColumn(i).getValue();
                types[i] = columnTypetoSQLType(row.getColumn(i).getType());
            }

            sql = sqlProcess.deleteSQL(row.getHeader().get("tablename"), names);
        }
        return sql;

    }

    public PreparedStatement preparedStatement(PreparedStatement preparedStatement, IRow row) throws SQLException {
        // String sql = new String();
        // PreparedStatement preparedStatement=null;
        if (row.getHeader().get("operation").equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_INSERT)) {
            int size = row.getColumnsSize();
            String[] names = new String[size];
            Object[] values = new Object[size];
            int[] types = new int[size];
            for (int i = 0; i < size; i++) {
                names[i] = row.getColumn(i).getName();
                values[i] = row.getColumn(i).getValue();
                types[i] = columnTypetoSQLType(row.getColumn(i).getType());
            }

            //sql =  sqlProcess.insertSQL(row.getHeader().get("tablename"),names);
            //  preparedStatement= connection.prepareStatement(sql) ;
            for (int i = 1; i <= values.length; i++) {
                preparedStatement.setObject(i, values[i - 1], types[i - 1]);
            }
        }
        if (row.getHeader().get("operation").equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_UPDATE)) {
            int size = row.getColumnsSize();
            String[] names = new String[size + 1];
            Object[] values = new Object[size + 1];
            String referencekey = row.getHeader().get("referencekey");
            int[] types = new int[size + 1];
            for (int i = 0; i < size; i++) {
                names[i] = row.getColumn(i).getName();
                values[i] = row.getColumn(i).getValue();
                types[i] = columnTypetoSQLType(row.getColumn(i).getType());
            }
            if (referencekey != null) {
                names[size] = referencekey;
                values[size] = row.getColumn(referencekey).getValue();
                types[size] = columnTypetoSQLType(row.getColumn(referencekey).getType());
            } else {
                names[size] = names[0];
                values[size] = values[0];
                types[size] = types[0];
            }


            //  sql =  sqlProcess.updateSQL(row.getHeader().get("tablename"), names);
            //  preparedStatement= connection.prepareStatement(sql) ;
            for (int i = 1; i <= values.length; i++) {
                preparedStatement.setObject(i, values[i - 1], types[i - 1]);
            }
        }
        if (row.getHeader().get("operation").equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_DELETE)) {
            int size = row.getColumnsSize();
            String[] names = new String[size + 1];
            Object[] values = new Object[size + 1];
            String referencekey = row.getHeader().get("referencekey");
            int[] types = new int[size + 1];
            for (int i = 0; i < size; i++) {
                names[i] = row.getColumn(i).getName();
                values[i] = row.getColumn(i).getValue();
                types[i] = columnTypetoSQLType(row.getColumn(i).getType());
            }

            // sql =  sqlProcess.deleteSQL(row.getHeader().get("tablename"), names);
            // preparedStatement= connection.prepareStatement(sql) ;
            for (int i = 1; i <= values.length; i++) {
                preparedStatement.setObject(i, values[i - 1], types[i - 1]);
            }
        }
        return preparedStatement;

    }
}
