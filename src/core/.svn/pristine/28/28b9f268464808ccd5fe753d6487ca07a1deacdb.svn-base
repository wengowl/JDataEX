package org.jdataex.flow.component.step.dataaccess;

import org.jdataex.flow.row.*;
import org.jdataex.util.logger.LoggerFactory;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wengxf on 14-4-30.
 * 自动入库 (处理含有一对多，一对一等表对应关系要修改外键字段)
 * 插入操作 -- 先插入主表，后插入从表；
 * 修改操作 -- 先插入主表正确的外键字段记录，后修改从表的外键, 并删除主表错误的外键字段记录；
 * 删除操作 -- 先删除从表，后删除主表。
 */
public class ComplexAutoDataAccess extends ComplexDataAccessProcess {
    private boolean flag = true;

    /**
     * 处理集合
     */
    public void processComplexRowset(IRowSet rowSet) {
        IRow row = new Row();
        while ((row = rowSet.nextRow()) != null) {
            processComplexRow(row);
        }
    }
    /*public void processRowset(RowSet rowSet) {
        IRow row = new Row();
        while ((row = rowSet.nextRow()) != null) {
            processRow(row);
        }
    }*/

    /**
     * 处理单条记录
     */

    public void processComplexRow(IRow row) {
        System.out.println("processcomplexrow:"+row.getColumnsSize());
        List<IRow> rows = new ArrayList<>();
        List<RowSet> rowsets = new ArrayList<>();
        for (int i = 0; i < row.getColumnsSize(); i++) {
            IColumn column = row.getColumn(i);
//             判断是否含有对应关系的字段
            if (column.getType().equals(ColumnType.ComplexRow)) //该字段一对一关系 getName().equals("ComplexRow")
            {
                rows.add((IRow) row.getColumn(i).getValue());  //添加到列表

                row.getColumn(i).setType((ColumnType) column.getProperty("type"));  //设置该字段真实在该表中的类型
                row.getColumn(i).setValue(column.getProperty("value"));  //设置该字段真实在该表中的值
               // LoggerFactory.getRootLogger().debug("添加字段值的表为"+ ((IRow) row.getColumn(i).getValue()).getHeader().get("tableName"));
                LoggerFactory.getRootLogger().debug("字段含有单条记录 rowadd:"+i);
            }
            if (column.getType().equals(ColumnType.ComplexRowSet)) {  //该字段一对多关系   .getName().equals("ComplexRowSet")
                rowsets.add((RowSet) row.getColumn(i).getValue());
                row.getColumn(i).setType((ColumnType) column.getProperty("type"));
                row.getColumn(i).setValue(column.getProperty("value"));
                LoggerFactory.getRootLogger().debug("字段含有多条记录 rowsetadd:"+i);
            }
        }

        String operationtype = row.getHeader().get("operation");
        LoggerFactory.getRootLogger().debug("rowsize:"+rows.size()+" rowsetsize:"+rowsets.size());
        if (rows.size() == 0 && rowsets.size() == 0) {
//            若不包含特殊字段，即单表记录，则调用另一个一对一处理
            AutoDataAccess autoDataAccess = new AutoDataAccess();
            autoDataAccess.processRow(row);

        } else {
            if (operationtype.equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_INSERT)) {

//         插入，先插主表，再插从表
                insert(row);
                for (IRow row1 : rows) {
                    insert(row1);
                }
                for (RowSet rowset : rowsets) {
                    IRow nrow = new Row();
                    while ((nrow = rowset.nextRow()) != null) {
                        insert(nrow);
                    }
                }
            }
            if (operationtype.equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_UPDATE)) {
//          更新，若没有对应关系，则直接更新操作，若有，则先插入主表，更新从表，再删除主表原有字段（此处的refrencekey，必须为外键需要更改的值）

                if (rows.size() == 0 && rowsets.size() == 0) {
                    update(row);
                } else {
                    insert(row);
                    for (IRow row1 : rows) {
                        update(row1);
                    }
                    for (RowSet rowset : rowsets) {
                        IRow nrow = new Row();
                        while ((nrow = rowset.nextRow()) != null) {
                            update(nrow);
                        }
                    }
                    deleteInupdate(row);
                }
                /*//TODO 上述操作出现一个失败，则删除新插入的数据？
                if (!flag) {
                    delete(row);
                }*/

            }
            if (operationtype.equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_DELETE)) {
                for (IRow row1 : rows) {
                    delete(row1);
                }
                for (RowSet rowset : rowsets) {
                    IRow nrow = new Row();
                    while ((nrow = rowset.nextRow()) != null) {
                        delete(nrow);
                    }
                }
                delete(row);
            }
        }
    }


   /* */

    /**
     * 处理单条记录
     *//*
    public void processRow(IRow row) {
        String operationtype = row.getHeader().get("operation");

        if (operationtype.equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_INSERT)) {
            insert(row);
        }
        if (operationtype.equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_UPDATE)) {
            update(row);
        }
        if (operationtype.equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_DELETE)) {
            delete(row);
        }
    }

    */
     /*/**
     * 批处理
     *
     * @param rowSet 中每个row的格式必须得相同
     * @return 批的处理结果
     */
    /*
    public int[] batchProcess(RowSet rowSet) {
        IRow row = new Row();
        int i[] = new int[rowSet.size()];
        DBManager dbManager = new DBManager();
        BasePoolConnection connection = dbManager.getConnection(row.getHeader().get("database"));
        try {
            connection.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        String sql = getSQL(rowSet.getRow(0));
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        while ((row = rowSet.nextRow()) != null) {
            try {
                preparedStatement = preparedStatement(preparedStatement, row);
                preparedStatement.addBatch();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        try {
            i = preparedStatement.executeBatch();
            connection.commit();
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                connection.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        } finally {
            try {
                preparedStatement.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        return i;
    }
*/
    public void insert(IRow row) {
        int i = 0;
        String failedtxt = "0条记录受到影响";
        /*try {
            i = updateProcess(row);
            System.out.println("update " + i + " rows");
        } catch (SQLException e2) {
            e2.printStackTrace();
        }*/

//        if (i == 0) {
        LoggerFactory.getRootLogger().debug("开始插入");
        try {
            i = insertProcess(row);
            LoggerFactory.getRootLogger().debug(i + "has changed");
        } catch (SQLException e1) {
            // e1.printStackTrace();
            i = 0;

            failedtxt = e1.getMessage();
            //TODO
            // LoggerFactory.getRootLogger().traceI18nc(ComplexAutoDataAccess.class, "SQLException", e1);
            LoggerFactory.getRootLogger().error(e1.getMessage(), e1);
        }
//        }
        if (i == 0) {
            flag = false;
            //入库失败插入缓存表，以备重新入库 ，暂不实现
            insertMsgCacheProcess(row, failedtxt, MsgCacheBean.OPERATION_TYPE_INSERT);
        }
    }

    public void update(IRow row) {
        int i = 0;
        String failedtxt = "0 rows has changed";
       /* try {
            i = insertProcess(row);
        } catch (SQLException e2) {
            e2.printStackTrace();
        }*/

//        if (i == 0) {
        try {
            i = updateProcess(row);
        } catch (SQLException e1) {
//                e1.printStackTrace();
            i = 0;
            failedtxt = e1.getMessage();
            //TODO
            //  LoggerFactory.getRootLogger().traceI18nc(ComplexAutoDataAccess.class, "SQLException", e1);
            LoggerFactory.getRootLogger().error(e1.getMessage(), e1);
        }
//        }
        if (i == 0) {
            flag = false;
            //入库失败插入缓存表，以备重新入库
            insertMsgCacheProcess(row, failedtxt, MsgCacheBean.OPERATION_TYPE_UPDATE);
        }
    }

    public void deleteInupdate(IRow row) {
        int i = 0;
        String failedtxt = "0条记录受到影响";
        try {
            i = deleteProcessInUpdate(row);
        } catch (SQLException e) {
            // e.printStackTrace();
            i = 0;
            failedtxt = e.getMessage();
            //TODO
            //  LoggerFactory.getRootLogger().traceI18nc(ComplexAutoDataAccess.class, "SQLException", e);
            LoggerFactory.getRootLogger().error(e.getMessage(), e);

        }

        if (i == 0) {
            flag = false;
            //入库失败插入缓存表，以备重新入库
            insertMsgCacheProcess(row, failedtxt, MsgCacheBean.OPERATION_TYPE_DELETE);
        }
    }

    public void delete(IRow row) {
        int i = 0;
        String failedtxt = "0 rows has changed";
        try {
            i = deleteProcess(row);
        } catch (SQLException e) {
            // e.printStackTrace();
            //TODO
            //LoggerFactory.getRootLogger().traceI18nc(ComplexAutoDataAccess.class, "SQLException", e);
            LoggerFactory.getRootLogger().error(e.getMessage(), e);
            i = 0;
            failedtxt = e.getMessage();

        }

        if (i == 0) {
            flag = false;
            //入库失败插入缓存表，以备重新入库
            insertMsgCacheProcess(row, failedtxt, MsgCacheBean.OPERATION_TYPE_DELETE);
        }
    }
}
