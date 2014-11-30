package org.jdataex.resource.databasepool;


import org.jdataex.util.logger.LoggerFactory;

import java.sql.*;
import java.util.Enumeration;
import java.util.Vector;


/**
 * @author wengxf
 *         连接池
 */
public class ConnectionPool {
    private String poolname = new String();//连接池名字
    private String jdbcDriver = "";//jdbc driver

    private String dbUrl = "";//database url

    private String dbUsername = "";//database user name

    private String dbPassword = "";//database password

    private int initConnections = 2;//初始化连接数

    private int incrConnections = 1;//连接池自动增加的大小

    private int maxConnections = 10;//最大连接数

    //private Vector<BasePoolConnection> connections = new Vector<>(maxConnections) ; //连接存放
    private Vector<BasePoolConnection> connections;

    /**
     * @param jdbcDriver
     * @param dbUrl
     * @param dbUsername
     * @param dbPassword
     */
    public ConnectionPool(String jdbcDriver, String dbUrl, String dbUsername,
                          String dbPassword, String poolname,int initConnections,int incrConnections,int maxConnections) {

        this.jdbcDriver = jdbcDriver;
        this.dbUrl = dbUrl;
        this.dbUsername = dbUsername;
        this.dbPassword = dbPassword;
        this.poolname = poolname;
        this.initConnections = initConnections;
        this.incrConnections = incrConnections;
        this.maxConnections = maxConnections;

        try {
            createPool();
        } catch (IllegalAccessException e) {

            LoggerFactory.getRootLogger().error(e.getMessage(), e);
        } catch (ClassNotFoundException e) {

            LoggerFactory.getRootLogger().error(e.getMessage(), e);
        } catch (Exception e) {

            LoggerFactory.getRootLogger().error(e.getMessage(), e);
        }

    }

    public String getPoolname() {
        return poolname;
    }

    public void setPoolname(String poolname) {
        this.poolname = poolname;
    }

    public int getConnectionsSize() {
        return connections.size();
    }

    /**
     * 返回连接池初始大小
     *
     * @return 返回连接池的初始化连接数量
     */
    public int getInitConnections() {
        return initConnections;
    }

    /**
     * 设置初始化连接数量
     */
    public void setInitConnections(int initConnections) {
        this.initConnections = initConnections;
    }

    /**
     * 获取连接池自增长连接数量
     *
     * @return 返回连接池自增长的连接数量
     */
    public int getIncrConnections() {
        return incrConnections;
    }

    /**
     * 设置连接池增长的连接数量
     */
    public void setIncrConnections(int incrConnections) {
        this.incrConnections = incrConnections;
    }

    /**
     * 获取连接池最大连接数
     *
     * @return 返回连接池的最大连接数
     */
    public int getMaxConnections() {
        return maxConnections;
    }

    /**
     * 设置连接池的最大连接数
     */
    public void setMaxConnections(int maxConnections) {
        this.maxConnections = maxConnections;
    }

/*    public Vector<BasePoolConnection> getConnections() {
        return connections;
    }

    public void setConnections(Vector<BasePoolConnection> connections) {
        this.connections = connections;
    }*/

    /**
     * 创建连接池
     */
    public synchronized void createPool() throws ClassNotFoundException, SQLException, IllegalAccessException, InstantiationException {

        if (connections != null) {
            return;
        }

        Driver driver = (Driver) (Class.forName(this.jdbcDriver)).newInstance();//实例化驱动类
        DriverManager.registerDriver(driver);//注册驱动

        //创建连接向量
        connections = new Vector<>();
        //创建连接
        createConnections(this.initConnections);
        LoggerFactory.getRootLogger().info("初始化连接池");


    }

    /**
     * 创建指定numConnections连接数的数据库连接
     */
    public void createConnections(int numConnections) throws SQLException {
        // TODO 自动生成的方法存根
        for (int i = 0; i < numConnections; i++) {
//             判断当前连接数是否已经超过最大连接数
            if (this.maxConnections > 0 && this.connections.size() >= this.maxConnections) {
                LoggerFactory.getRootLogger().warn("当前连接数：" + connections.size() + " 已超出连接池设置的最大连接数: " + maxConnections);
                break;
            }
           // System.out.println("connections.size: create b  " + connections.size());
            connections.addElement(new BasePoolConnection(newConnection()));
          //  System.out.println("connections.size: create  a " + connections.size());
        }
    }

    private Connection newConnection() throws SQLException {
        Connection conn = DriverManager.getConnection(this.dbUrl, this.dbUsername, this.dbPassword);
        // 如果这是第一次创建数据库连接，即检查数据库，获得此数据库允许支持的
      //  System.out.println("connections.size: newConnection" + connections.size());
        // 最大客户连接数目

        // connections.size()==0 表示目前没有连接己被创建

        if (connections.size() == 0) {
           // System.out.println("connections.size: ==0");
            DatabaseMetaData metaData = conn.getMetaData();

            int driverMaxConnections = metaData.getMaxConnections();

            // 数据库返回的 driverMaxConnections 若为 0 ，表示此数据库没有最大

            // 连接限制，或数据库的最大连接限制不知道

            // driverMaxConnections 为返回的一个整数，表示此数据库允许客户连接的数目

            // 如果连接池中设置的最大连接数量大于数据库允许的连接数目 , 则置连接池的最大

            // 连接数目为数据库允许的最大数目

            if (driverMaxConnections > 0 && this.maxConnections > driverMaxConnections) {

                this.maxConnections = driverMaxConnections;

            }

        }

        return conn; // 返回创建的新的数据库连接


    }

    /**
     * 通过调用 getFreeConnection() 函数返回一个可用的数据库连接 ,
     *
     * 如果当前没有可用的数据库连接，并且更多的数据库连接不能创
     *
     * 建（如连接池大小的限制），此函数等待一会再尝试获取。
     *
     * @return 返回一个可用的数据库连接对象
     */

    public synchronized BasePoolConnection getConnection() throws SQLException {

        // 确保连接池己被创建

        if (connections == null) {

            return null; // 连接池还没创建，则返回 null

        }

        BasePoolConnection conn = getFreeConnection(); // 获得一个可用的数据库连接

        // 如果目前没有可以使用的连接，即所有的连接都在使用中

        while (conn == null) {

            // 等一会再试

            wait(250);

            conn = getFreeConnection(); // 重新再试，直到获得可用的连接，如果

            // getFreeConnection() 返回的为 null

            // 则表明创建一批连接后也不可获得可用连接

        }

        return conn;// 返回获得的可用的连接

    }

    private BasePoolConnection getFreeConnection() throws SQLException {

        // 从连接池中获得一个可用的数据库连接

        BasePoolConnection conn = findFreeConnection();

        if (conn == null) {

            // 如果目前连接池中没有可用的连接
            // 创建一些连接
            LoggerFactory.getRootLogger().info("目前连接池中没有可用的连接,创建一些连接 ");
            createConnections(incrConnections);
            // 重新从池中查找是否有可用连接
            conn = findFreeConnection();

            if (conn == null) {
                // 如果创建连接后仍获得不到可用的连接，则返回 null
                return null;
            }

        }

        return conn;

    }

    private BasePoolConnection findFreeConnection() {
        for (int i = 0; i < connections.size(); i++) {
            BasePoolConnection BasePoolConnection = connections.elementAt(i);
            if (!BasePoolConnection.isBusy()) {
                // 如果此对象不忙，则获得它的数据库连接并把它设为忙
                Connection conn = BasePoolConnection.getConnection();
                BasePoolConnection.setBusy(true);
                // 测试此连接是否可用
                if (!isValid(conn)) {

                    // 如果此连接不可再用了，则创建一个新的连接，

                    // 并替换此不可用的连接对象，如果创建失败，删除该无效连接，遍历下一个不忙连接

                    try {
                        conn = newConnection();
                        BasePoolConnection.setConnection(conn);
                    } catch (SQLException e) {
                        connections.remove(i--);
                        LoggerFactory.getRootLogger().infoI18nc(ConnectionPool.class,
                                "SQLException ", e);
                        continue;
                    }
                }

                return BasePoolConnection; // 己经找到一个可用的连接，退出

            }
        }

        return null;// 返回找到到的可用连接

    }

    /**
     * 测试一个连接是否可用，如果不可用，关掉它并返回 false
     * <p/>
     * 否则可用返回 true
     *
     * @param conn 需要测试的数据库连接
     * @return 返回 true 表示此连接可用， false 表示不可用
     */

    private boolean isValid(Connection conn) {


        try {
            conn.isValid(6000);
            LoggerFactory.getRootLogger().info("数据库连接可用……………………当前连接数："+connections.size());
            return true;
        } catch (SQLException e) {
          //  e.printStackTrace();
            closeConnection(conn);
            LoggerFactory.getRootLogger().infoI18nc(ConnectionPool.class,"SQLException",e);
            return false;
        }


    }

    /**
     * 此函数返回一个数据库连接到连接池中，并把此连接置为空闲。
     * <p/>
     * 所有使用连接池获得的数据库连接均应在不使用此连接时返回它。
     *
     * @param conn 需返回到连接池中的连接对象
     */

    public void returnConnection(Connection conn) {

        // 确保连接池存在，如果连接没有创建（不存在），直接返回

        if (connections == null) {

            LoggerFactory.getRootLogger().warn(" 连接池不存在，无法返回此连接到连接池中 !");

            return;

        }

        BasePoolConnection pConn = null;

        Enumeration<BasePoolConnection> enumerate = connections.elements();

        // 遍历连接池中的所有连接，找到这个要返回的连接对象

        while (enumerate.hasMoreElements()) {

            pConn = (BasePoolConnection) enumerate.nextElement();

            // 先找到连接池中的要返回的连接对象

            if (conn == pConn.getConnection()) {

                // 找到了 , 设置此连接为空闲状态

                pConn.setBusy(false);

                break;

            }

        }

    }

    public synchronized void releaseConnections() throws SQLException {

        // 确保连接池己创新存在

        if (connections == null) {

            LoggerFactory.getRootLogger().warn(" 连接池不存在，无法释放 !");
            return;

        }

        BasePoolConnection pConn = null;

        Enumeration<BasePoolConnection> enumerate = connections.elements();

        while (enumerate.hasMoreElements()) {
            // 获得一个连接对象
            pConn = (BasePoolConnection) enumerate.nextElement();
            // 如果对象忙则等 50 秒 ,50 秒后还空闲则关闭该连接
            if (!pConn.isBusy()) {
                wait(50000); // 等 50 秒
                if (!pConn.isBusy()) {
                    closeConnection(pConn.getConnection());
                    connections.removeElement(pConn);
                }
            }
        }

    }

    /**
     * 刷新连接池中所有的连接对象
     */

    public synchronized void refreshConnections() throws SQLException {

        // 确保连接池己创新存在

        if (connections == null) {
            LoggerFactory.getRootLogger().warn(" 连接池不存在，无法刷新 !");
            return;
        }

        BasePoolConnection pConn = null;

        Enumeration<BasePoolConnection> enumerate = connections.elements();

        while (enumerate.hasMoreElements()) {

            // 获得一个连接对象

            pConn = (BasePoolConnection) enumerate.nextElement();

            // 如果对象忙则等 5 秒 ,5 秒后直接刷新

            if (pConn.isBusy()) {

                wait(5000); // 等 5 秒
            }

            // 关闭此连接，用一个新的连接代替它。

            closeConnection(pConn.getConnection());

            pConn.setConnection(newConnection());

            pConn.setBusy(false);

        }

    }

    /**
     * 关闭连接池中所有的连接，并清空连接池。
     */

    public synchronized void closeConnectionPool() throws SQLException {

        // 确保连接池存在，如果不存在，返回

        if (connections == null) {

            LoggerFactory.getRootLogger().warn(" 连接池不存在，无法关闭 !");

            return;

        }
        BasePoolConnection pConn = null;
        for (int i = 0; i < connections.size(); i++) {
            returnConnection(connections.get(i).getConnection());
        }

        Enumeration<BasePoolConnection> enumerate = connections.elements();
        int a = connections.size();
        while (enumerate.hasMoreElements()) {
            pConn = (BasePoolConnection) enumerate.nextElement();
            // 如果忙，等 5 秒

            if (pConn.isBusy()) {

                wait(5000); // 等 5 秒

            }
            // 5 秒后直接关闭它*/
            //System.out.println("________________________");
            closeConnection(pConn.getConnection());

            //System.out.println("enumerate.hasMoreElements() :" + enumerate.hasMoreElements());
        }
        connections.removeAllElements();
        // 置连接池为空
        LoggerFactory.getRootLogger().info("关闭连接池！"+this.getPoolname());
        connections = null;

    }

    /**
     * 关闭一个数据库连接
     *
     * @param conn 需要关闭的数据库连接
     */

    private void closeConnection(Connection conn) {

        try {

            conn.close();

        } catch (SQLException e) {
            LoggerFactory.getRootLogger().error(" 关闭数据库连接出错： " + e.getMessage());
          //  System.out.println(" 关闭数据库连接出错： " + e.getMessage());

        }

    }

    /**
     * 使程序等待给定的毫秒数
     *
     * @param mSeconds 给定的毫秒数
     */

    private void wait(int mSeconds) {

        try {

            Thread.sleep(mSeconds);

        } catch (InterruptedException e) {
            LoggerFactory.getRootLogger().error(e.getMessage(),e);

            //System.out.println(" 等待出错： " + e.getMessage());
        }

    }


}



