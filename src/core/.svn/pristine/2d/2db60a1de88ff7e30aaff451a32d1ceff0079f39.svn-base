package org.jdataex.resource.databasepool;


import com.jolbox.bonecp.BoneCP;
import com.jolbox.bonecp.BoneCPConfig;
import org.jdataex.util.logger.LoggerFactory;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.*;

/**
 * Created by wengxf on 14-4-22.
 */
public class DBManager {
   // private  BasePoolConnection conn;
  //  private ConnectionPool connectionPool;
    private static DBManager inst; //连接池管理实例
    private static List<ConfigDatabasePoolBean> poolList= new ArrayList<>();
    private static Hashtable pools=new Hashtable();//连接池
    private Vector poolconfig  = new Vector();//连接池配置信息
    private static String path="config/database/dsconfig.xml";

    /**
        *关闭连接池
     */

    public  void close() {
        for (int i=0;i< poolList.size();i++) {
            ConfigDatabasePoolBean configDatabasePool = poolList.get(i);
            BoneCP connectionPool=(BoneCP) pools.get(configDatabasePool.getPoolname());
                connectionPool.shutdown();

        }
    }

    public  DBManager() {
        this.init();
        //this.inst
    }
    public static synchronized  DBManager getInstance()
    {
        if(inst==null)
        {
            inst=new DBManager();
        }
        return inst;

    }
    private void init() {
        this.loadConfig();
       LoggerFactory.getRootLogger().debug("连接池数量：  "+poolList.size());
        for (int i=0;i< poolList.size();i++) {
            ConfigDatabasePoolBean configDatabasePool = poolList.get(i);
            //初始化连接池
            BoneCP connectionPool=null;
            try {
                Class.forName(configDatabasePool.getJdbcDriver());
                BoneCPConfig config = new BoneCPConfig();
                config.setJdbcUrl(configDatabasePool.getDbUrl());
                config.setUsername(configDatabasePool.getDbUsername());
                config.setPoolName(configDatabasePool.getPoolname());
                config.setPassword(configDatabasePool.getDbPassword());
                config.setMaxConnectionsPerPartition(configDatabasePool.getMaxConnections());
                config.setMinConnectionsPerPartition(configDatabasePool.getMinConnections());
                 connectionPool = new BoneCP(config);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }

            pools.put(configDatabasePool.getPoolname(),connectionPool);
        }
    }


    public Connection getConnection(String poolname) throws Exception {
        if (inst == null)
            new DBManager();
        Connection conn = null;

             BoneCP connectionPool =  null;
            if(poolname==null){
                connectionPool =  (BoneCP) pools.get(poolList.get(0).getPoolname());
            }else {
              connectionPool = (BoneCP) pools.get(poolname);
            }
            conn = connectionPool.getConnection();
             LoggerFactory.getRootLogger().info("获取连接池 "+connectionPool.getConfig().getPoolName()+" 的连接！");
            conn.setAutoCommit(true);


        return conn;
    }


    private void loadConfig(){
        ParseDSConfig pd=new ParseDSConfig();
        LoggerFactory.getRootLogger().info("加载连接池配置文件");
         poolconfig= pd.readConfigInfo(path);
        Iterator allpoolconfig=poolconfig.iterator();
        while(allpoolconfig.hasNext())
        {
          ConfigDatabasePoolBean pool=  (ConfigDatabasePoolBean) allpoolconfig.next();
            poolList.add(pool);
            LoggerFactory.getRootLogger().info("加载连接池:"+pool.getPoolname());

        }

    }

    public static void setPath(String path) {
        DBManager.path = path;
    }

    public static void main(String[] args) {
//        String sql = "select * from login_log";
//        ResultSet rs;
//        BasePoolConnection conn = null;
//        BasePoolConnection conn2 = null;
//        BasePoolConnection conn3 = null;
//        BasePoolConnection conn4 = null;
//        BasePoolConnection conn5 = null;
//        BasePoolConnection conn6 = null;
//        BasePoolConnection conn7 = null;
//
//
//        try {
//            conn = DBManager.getConnection();
//            conn2 = DBManager.getConnection();
//            conn3 = DBManager.getConnection();
//            conn4 = DBManager.getConnection();
//
//            rs = conn.executeQuery(sql);
//
//            if (rs.next())
//              System.out.println(rs.getInt(1));
//
//        } catch (SQLException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        } finally {
//            if (conn != null) {
//                conn.close();
//            }
//        }
//
//        conn5 = DBManager.getConnection();
//        conn6 = DBManager.getConnection();
//        conn7 = DBManager.getConnection();
//
//    }


    }

}

