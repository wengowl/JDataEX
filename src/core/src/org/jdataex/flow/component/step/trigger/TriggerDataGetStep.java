package org.jdataex.flow.component.step.trigger;

import org.jdataex.core.InitializationException;
import org.jdataex.core.ReleaseException;
import org.jdataex.engine.config.ComponentItem;
import org.jdataex.flow.component.ComponentException;
import org.jdataex.flow.component.DBOperation;
import org.jdataex.flow.component.step.BaseStep;
import org.jdataex.flow.row.IRow;
import org.jdataex.util.CommonUtil;
import org.jdataex.util.logger.LoggerFactory;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 触发器获取组件
 * Created by wengxf on 2014/7/3 0003.
 */
public class TriggerDataGetStep extends BaseStep {

    private int msgid=0;
    private TriggerDataBean triggerDataBean ;
    private DBOperation dbOperation = new DBOperation();
    private String poolname="pool";
    private String tablename;

    public static String ATT_NAME_POOL_NAME = "pool-name";
    public static String ATT_NAME_TABLE_NAME = "table-name";


    @Override
    public void initConfig(ComponentItem item) throws InitializationException {
        super.initConfig(item);
        if (CommonUtil.isBlank(item.getAttribute(ATT_NAME_POOL_NAME))) {
            throw new InitializationException(
                    "Attribute name of pool-name is null or blank.");
        }

        this.getLogger().info("{} - Pool name is [{}]",
                this.getGUIC().toString(),
                item.getAttribute(ATT_NAME_POOL_NAME));
        this.poolname = item.getAttribute(ATT_NAME_POOL_NAME);
        this.triggerDataBean= new TriggerDataBean(poolname);
        if (CommonUtil.isBlank(item.getAttribute(ATT_NAME_TABLE_NAME))) {
            throw new InitializationException(
                    "Attribute name of table-name is null or blank.");
        }

        this.getLogger().info("{} - table name is [{}]",
                this.getGUIC().toString(),
                item.getAttribute(ATT_NAME_TABLE_NAME));
        this.tablename = item.getAttribute(ATT_NAME_TABLE_NAME);
    }
    @Override
    public void init() throws InitializationException {

    }

    @Override
    public void release() throws ReleaseException {

    }

    @Override
    public void processRow(IRow row) throws ComponentException {
        setMsgid(tablename);
        for (; ; msgid++) {
            DataHandler dataHandler = new DataHandler(triggerDataBean,poolname);
            String sqlbig = "select * from " + tablename + " where MsgId > " + msgid;
            ResultSet resultSet = dbOperation.sqlQuery(sqlbig, poolname);
            boolean flag = false;
            try {
                flag = resultSet.next();
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            if (!flag) {
                LoggerFactory.getRootLogger().info("*******no data******");
                break;

            }
            triggerDataBean = dataHandler.middleDataGet(msgid + 1, tablename);
            if (triggerDataBean != null) {
                dataHandler.souDataGet(triggerDataBean);
                IRow iRow = dataHandler.SouToDest();
                dataHandler.updateMsgid(msgid + 1, tablename);
                LoggerFactory.getRootLogger().debug("row ******tablename: " + iRow.getHeader().get("tableName"));
                LoggerFactory.getRootLogger().debug("row ******coloumnsize: " + iRow.getColumnsSize());
                 putRow(iRow);  //传递获取到的Row

            } else if (flag) {
                triggerDataBean = new TriggerDataBean(poolname);
            } else {
                LoggerFactory.getRootLogger().info("*******no data******");
                break;
            }
        }
    }

    @Override
    public void beforeTurnOn() throws ComponentException {

    }

    @Override
    public void afterTurnOff() throws ComponentException {

    }

    @Override
    public void beforeBatchProcessing() throws ComponentException {

    }

    @Override
    public void afterBatchProcessing() throws ComponentException {

    }

    @Override
    public void beginRowSet() throws ComponentException {

    }

    @Override
    public void commitRowSet() throws ComponentException {

    }

    @Override
    public void rollbackRowSet() throws ComponentException {

    }

    @Override
    public void beginRow(IRow row) throws ComponentException {

    }

    @Override
    public void commitRow(IRow row) throws ComponentException {

    }

    @Override
    public void rollbackRow(IRow row) throws ComponentException {

    }
    public void setMsgid(String loc) {
        String sql = "select * from Tr_Msgids";
        DBOperation dbOperation = new DBOperation();
        ResultSet resultSet = dbOperation.sqlQuery(sql, poolname);

        try {
            while (resultSet.next()) {
                msgid = resultSet.getInt(loc);
            }
        } catch (SQLException e) {
            //TODO  e.printStackTrace();
            //  LoggerFactory.getRootLogger().traceI18nc(DataHandlerThread.class,"SQLException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(), e);
        }
    }

}