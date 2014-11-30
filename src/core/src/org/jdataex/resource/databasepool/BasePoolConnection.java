package org.jdataex.resource.databasepool;

import java.sql.*;

/**
 * Created by wengxf on 14-4-22.
 */

/**
 * 用于保存连接池中连接对象的类
 * <p/>
 * 此类中有两个成员，一个是数据库的连接，另一个是指示此连接是否
 * <p/>
 * 正在使用的标志。
 */
public class BasePoolConnection {


    private Connection connection = null;// 数据库连接

    private boolean busy=false; // 此连接是否正在使用的标志，默认没有正在使用

    // 构造函数，根据一个 Connection构造一个 BasePoolConnection 对象

    protected BasePoolConnection(Connection connection) {

        this.connection = connection;

    }

    public boolean execute(String sql) throws SQLException {
        return connection.createStatement().execute(sql);
    }

    public ResultSet executeQuery(String sql) throws SQLException {
        return connection.createStatement().executeQuery(sql);
    }

    public PreparedStatement prepareStatement(String sql) throws SQLException {
        return connection.prepareStatement(sql);
    }

    public int executeUpdate(String sql) throws SQLException {
        return connection.createStatement().executeUpdate(sql);
    }

    // 返回此对象中的连接

    protected Connection getConnection() {

        return connection;

    }

    // 设置此对象的，连接

    protected void setConnection(Connection connection) {

        this.connection = connection;

    }

    // 获得对象连接是否忙

    protected boolean isBusy() {

        return busy;

    }

    // 设置对象的连接状态

    protected void setBusy(boolean busy) {
        // System.out.println("set to busy:"+busy);
        this.busy = busy;

    }

    //释放连接（不关闭，状态设为空闲）
    public void release() {
        setBusy(false);
    }

    public void close() throws SQLException {
        connection.close();
    }

    public void setAutoCommit(boolean flag) throws SQLException {
        connection.setAutoCommit(flag);
    }

    public void commit() throws SQLException {
        connection.commit();
    }

    public void rollback() throws SQLException {
        connection.rollback();
    }
    public void rollback(Savepoint savepoint) throws SQLException {
        connection.rollback(savepoint);
    }
    public DatabaseMetaData getMetaData() throws SQLException {
        return connection.getMetaData();
    }
    public Savepoint setSavepoint() throws SQLException {
          return connection.setSavepoint();
    }
}
