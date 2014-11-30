package org.jdataex.flow.component.step.dataaccess;

import org.jdataex.flow.row.IRow;
import org.jdataex.flow.row.Row;
import org.jdataex.flow.row.RowSet;
import org.jdataex.resource.databasepool.BasePoolConnection;
import org.jdataex.resource.databasepool.DBManager;
import org.jdataex.util.logger.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by wengxf on 14-4-30.
 * 自动入库(此处未对表的映射关系进行检测处理，只争对单一表记录)
 */
public class AutoDataAccess extends DataAccessProcess {
    /**
     * 处理集合
     */
    public void processRowset(RowSet rowSet) {
        IRow row = new Row();
        while ((row = rowSet.nextRow()) != null) {
            processRow(row);
        }
    }

    /**
     * 处理单条记录
     */
    public void processRow(IRow row) {
        String oprationtype = row.getHeader().get("operation");
        if (oprationtype.equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_INSERT)) {
            insert(row);
        }
        if (oprationtype.equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_UPDATE)) {
            update(row);
        }
        if (oprationtype.equalsIgnoreCase(MsgCacheBean.OPERATION_TYPE_DELETE)) {
            delete(row);
        }
    }

    /**
     * 批处理
     *
     * @param rowSet 中每个row的格式必须得相同
     * @return 批的处理结果
     */
    public int[] batchProcess(RowSet rowSet) {
        IRow row = new Row();
        int i[] = new int[rowSet.size()];
        DBManager dbManager = new DBManager();
        Connection connection = null;
        try {
            connection = dbManager.getConnection(row.getHeader().get("database"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            connection.setAutoCommit(false);
        } catch (SQLException e) {
            //TODO
            // LoggerFactory.getRootLogger().traceI18nc(AutoDataAccess.class, "SQLException", e);
            getLogger().error(e.getMessage(), e);
            // e.printStackTrace();
        }

        String sql = getSQL(rowSet.getRow(0));
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(sql);
        } catch (SQLException e) {
            //TODO
            //    LoggerFactory.getRootLogger().traceI18nc(AutoDataAccess.class, "SQLException", e);
            getLogger().error(e.getMessage(), e);
            // e.printStackTrace();
        }
        while ((row = rowSet.nextRow()) != null) {
            try {
                preparedStatement = preparedStatement(preparedStatement, row);
                preparedStatement.addBatch();
            } catch (SQLException e) {
                //TODO
                //  e.printStackTrace();
                //  LoggerFactory.getRootLogger().traceI18nc(AutoDataAccess.class, "SQLException", e);
                LoggerFactory.getRootLogger().error(e.getMessage(), e);
            }
        }
        try {
            i = preparedStatement.executeBatch();
            connection.commit();
        } catch (SQLException e) {
            //TODO
            //  e.printStackTrace();
            // LoggerFactory.getRootLogger().traceI18nc(AutoDataAccess.class, "SQLException", e);
            LoggerFactory.getRootLogger().error(e.getMessage(), e);
            try {
                connection.rollback();
            } catch (SQLException e1) {
                //TODO
                //  LoggerFactory.getRootLogger().traceI18nc(AutoDataAccess.class, "SQLException", e);
                LoggerFactory.getRootLogger().error(e.getMessage(), e);
                // e1.printStackTrace();
            }
        } finally {
            try {
                preparedStatement.close();
                connection.close();
            } catch (SQLException e) {
                //TODO
                // LoggerFactory.getRootLogger().traceI18nc(AutoDataAccess.class, "SQLException", e);
                LoggerFactory.getRootLogger().error(e.getMessage(), e);
                //e.printStackTrace();
            }

        }
        return i;
    }

    public void insert(IRow row) {
        int i = 0;
        String failedtxt = "0条记录受到影响";
        try {
            i = updateProcess(row);
            System.out.println("update " + i + " rows");
        } catch (SQLException e2) {
            //TODO
            //LoggerFactory.getRootLogger().traceI18nc(AutoDataAccess.class, "SQLException", e2);
            LoggerFactory.getRootLogger().error(e2.getMessage(), e2);
            //  e2.printStackTrace();
        }

        if (i == 0) {
            System.out.println("开始插入");
            try {
                i = insertProcess(row);
                LoggerFactory.getRootLogger().debug(i + "has changed");
            } catch (SQLException e1) {
                //TODO
                // e1.printStackTrace();
                // LoggerFactory.getRootLogger().traceI18nc(AutoDataAccess.class, "SQLException", e1);
                i = 0;
                failedtxt = e1.getMessage();
                LoggerFactory.getRootLogger().error(e1.getMessage(), e1);

            }
        }
        if (i == 0) {
            //入库失败插入缓存表，以备重新入库
            insertMsgCacheProcess(row, failedtxt, MsgCacheBean.OPERATION_TYPE_INUP);
        }
    }

    public void update(IRow row) {
        int i = 0;
        String failedtxt = "0条记录受到影响";
        try {
            i = updateProcess(row);
        } catch (SQLException e2) {
            //TODO
            //  LoggerFactory.getRootLogger().traceI18nc(AutoDataAccess.class, "SQLException", e2);
            failedtxt = e2.getMessage();
            LoggerFactory.getRootLogger().error(e2.getMessage(), e2);
            // e2.printStackTrace();
        }

        if (i == 0) {
            try {
                i = insertProcess(row);
            } catch (SQLException e1) {
//                e1.printStackTrace();
                i = 0;
                //TODO
                //  LoggerFactory.getRootLogger().traceI18nc(AutoDataAccess.class, "SQLException", e1);
                LoggerFactory.getRootLogger().error(e1.getMessage(), e1);

            }
        }
        if (i == 0) {
            //入库失败插入缓存表，以备重新入库
            insertMsgCacheProcess(row, failedtxt, MsgCacheBean.OPERATION_TYPE_UPIN);
        }
    }

    public void delete(IRow row) {
        int i = 0;
        String failedtxt = "0 rows has changed";
        try {
            i = deleteProcess(row);
        } catch (SQLException e) {
            // e.printStackTrace();
            i = 0;
            LoggerFactory.getRootLogger().error(e.getMessage(), e);

            failedtxt = e.getMessage();

        }

        if (i == 0) {
            //入库失败插入缓存表，以备重新入库
            insertMsgCacheProcess(row, failedtxt, MsgCacheBean.OPERATION_TYPE_DELETE);
        }
    }
}
