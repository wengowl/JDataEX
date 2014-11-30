package org.jdataex.resource.databasepool;

/**
 * 关闭数据库连接池，用于程序结束
 * Created by wengxf on 2014/5/8 0008.
 */
public class ShutDownPool extends Thread {
    @Override
    public void run() {
        DBManager dbManager = DBManager.getInstance();
        dbManager.close();
    }
}
