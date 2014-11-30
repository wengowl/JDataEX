package org.jdataex.flow.component;

import org.jdataex.resource.databasepool.DBManager;
import org.jdataex.util.JDBCUtil;
import org.jdataex.util.logger.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wengxf on 14-4-24.
 * 数据库常用操作封装
 */
public class DBOperation {
    /**
     * 执行SQL语句，占位符方式
     *
     * @param sql   sql语句
     * @param type 值的jdbc类型
     * @param poolname 连接池名
     * @param param 值集
     * @return 影响的行数
     */
    public int sqlUpdate(String sql, Object[] param, int[] type,String poolname) throws SQLException {
        int rows = 0;
        DBManager dbManager = DBManager.getInstance();
        Connection conn = null;
        try {
            conn = dbManager.getConnection(poolname);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            PreparedStatement prsts = conn.prepareStatement(sql);
            //System.out.println("_________" + param.length + "____" + sql);
            for (int i = 1; i <= param.length; i++) {
                prsts.setObject(i, param[i - 1], type[i - 1]);
            }

            rows = prsts.executeUpdate();
            prsts.close();
        }
        finally{
            conn.close();
        }


        return rows;
    }
    /**
     * 执行SQL语句，占位符方式，不指定类型
     *
     * @param sql   sql语句
     * @param poolname 连接池名
     * @param param 值集
     * @return 影响的行数
     */
    public int sqlUpdate(String sql, Object[] param,String poolname) throws SQLException {
        int rows = 0;
        DBManager dbManager = DBManager.getInstance();
        Connection conn = null;
        try {
            conn = dbManager.getConnection(poolname);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
           PreparedStatement prsts = conn.prepareStatement(sql);
           //System.out.println("_________" + param.length + "____" + sql);
           for (int i = 1; i <= param.length; i++) {
               prsts.setObject(i, param[i - 1]);
           }


           rows = prsts.executeUpdate();
           prsts.close();
       }finally {

        conn.close();
       }


        return rows;
    }
    /**
     * 执行SQL语句，占位符方式，默认类型String
     *
     * @param sql   sql语句
     * @param poolname 连接池名
     * @param param 值集
     * @return 影响的行数
     */
    public int sqlStringUpdate(String sql, String[] param,String poolname) {
        int rows = 0;
        DBManager dbManager = DBManager.getInstance();
        Connection conn = null;
        try {
            conn = dbManager.getConnection(poolname);
        } catch (Exception e) {
            e.printStackTrace();
        }
        PreparedStatement prsts = null;
        try {
            prsts = conn.prepareStatement(sql);
            for (int i = 1; i <= param.length; i++) {
                prsts.setString(i, param[i - 1]);
            }
            rows = prsts.executeUpdate();
            prsts.close();
        } catch (SQLException e) {
            //TODO e.printStackTrace();
            //LoggerFactory.getRootLogger().traceI18nc(DBOperation.class,"SQLException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        } finally {

            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }


        }
        return rows;
    }
    /**
     * 执行SQL语句
     *
     * @param sql   sql语句
     * @param poolname 连接池名
     *
     * @return 执行结果
     */
    public boolean sqlExecute(String sql,String poolname) {
        DBManager dbManager = DBManager.getInstance();
        Connection conn = null;
        try {
            conn = dbManager.getConnection(poolname);
        } catch (Exception e) {
            e.printStackTrace();
        }
        boolean flag = true;
        try {
            flag = conn.createStatement().execute(sql);
        } catch (SQLException e) {
           //TODO  e.printStackTrace();
           // LoggerFactory.getRootLogger().traceI18nc(DBOperation.class,"SQLException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        } finally {
           try{ conn.close();
           }
           catch (SQLException e){
               LoggerFactory.getRootLogger().error(e.getMessage(),e);
           }
        }

        return flag;
    }

    /**
     * 执行查询SQL语句
     *
     * @param sql   sql语句
     * @param param 值集
     * @param types  值类型集
     * @return 结果集
     */
    /*public List sqlQuery(String sql, Object[] param, int[] type,String poolname) {
        ResultSet rs = null;
        List list = null;
        DBManager dbManager = DBManager.getInstance();
        Connection conn = null;
        try {
            conn = dbManager.getConnection(poolname);
        } catch (Exception e) {
            e.printStackTrace();
        }
        PreparedStatement prsts = null;
        try {
            prsts = conn.prepareStatement(sql);
            for (int i = 1; i <= param.length; i++) {
                prsts.setObject(i, param[i - 1], type[i - 1]);
            }
            rs = prsts.executeQuery();

            list = new ArrayList();
            ResultSetMetaData rsm = rs.getMetaData();
            Map map = null;
            while (rs.next()) {
                map = new HashMap();
                for (int i = 1; i <= rsm.getColumnCount(); i++) {
                    map.put(rsm.getColumnName(i), rs.getObject(rsm.getColumnName(i)));
                }
                list.add(map);
            }
        } catch (SQLException e) {
            //TODO e.printStackTrace();
           // LoggerFactory.getRootLogger().traceI18nc(DBOperation.class,"SQLException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        } finally {
           	JDBCUtil.closeQueit(rs);

            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }*/
    public ResultSet sqlQuery(String sql, Object[] param,int[] types,String poolname) {
        ResultSet rs = null;
        List list = null;
        DBManager dbManager = DBManager.getInstance();
        Connection conn = null;
        try {
            conn = dbManager.getConnection(poolname);
        } catch (Exception e) {
            e.printStackTrace();
        }
        PreparedStatement prsts = null;
        try {
            prsts = conn.prepareStatement(sql);
            for (int i = 1; i <= param.length; i++) {
                prsts.setObject(i, param[i - 1],types[i-1]);
            }
            rs = prsts.executeQuery();


        } catch (SQLException e) {
            //TODO e.printStackTrace();
            // LoggerFactory.getRootLogger().traceI18nc(DBOperation.class,"SQLException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        } finally {

            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return rs;
    }
    /**
     * 执行查询SQL语句
     *
     * @param sql   sql语句
     * @param param 值集
     *
     * @return 结果集
     */
    public ResultSet sqlQuery(String sql, Object[] param,String poolname) {
        ResultSet rs = null;
        List list = null;
        DBManager dbManager = DBManager.getInstance();
        Connection conn = null;
        try {
            conn = dbManager.getConnection(poolname);
        } catch (Exception e) {
            e.printStackTrace();
        }
        PreparedStatement prsts = null;
        try {
            prsts = conn.prepareStatement(sql);
            for (int i = 1; i <= param.length; i++) {
                prsts.setObject(i, param[i - 1]);
            }
            rs = prsts.executeQuery();


        } catch (SQLException e) {
            //TODO e.printStackTrace();
            // LoggerFactory.getRootLogger().traceI18nc(DBOperation.class,"SQLException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        } finally {

            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return rs;
    }
    /**
     * 执行查询SQL语句
     *
     * @param sql   sql语句
     * @param poolname 连接池名
     *
     * @return 结果集
     */
    public ResultSet sqlQuery(String sql,String poolname) {
        LoggerFactory.getRootLogger().debug(sql);
        DBManager dbManager =DBManager.getInstance();
        Connection conn = null;
        try {
            conn = dbManager.getConnection(poolname);
        } catch (Exception e) {
            e.printStackTrace();
        }
        ResultSet rs = null;
        try {
            rs = conn.createStatement().executeQuery(sql);
        } catch (SQLException e) {
           //TODO e.printStackTrace();
          //  LoggerFactory.getRootLogger().traceI18nc(DBOperation.class,"SQLException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return rs;
    }
    /**
     * 获取表主键
     *
     * @param table   表名
     * @param poolname 连接池名
     *
     * @return 结果集
     */
    public String[] getTablePK(String table,String poolname) {
        DBManager dbManager = DBManager.getInstance();
        Connection conn = null;
        try {
            conn = dbManager.getConnection(poolname);
        } catch (Exception e) {
            e.printStackTrace();
        }
        ResultSet resultSet = null;
        String[] result = null;
        String tempPK = new String();
        try {
            DatabaseMetaData dbmd = conn.getMetaData();
            resultSet = dbmd.getPrimaryKeys(null, null, table);
            while (resultSet.next()) {
                tempPK = resultSet.getString("COLUMN_NAME") + ",";
            }

        } catch (SQLException e) {
           //TODO  e.printStackTrace();
           // LoggerFactory.getRootLogger().traceI18nc(DBOperation.class,"SQLException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        result = tempPK.split(",");
        if (tempPK.length() < 1)
            result = null;

        return result;
    }


}