package org.jdataex.flow.component.step.dataaccess;

import org.jdataex.core.InitializationException;
import org.jdataex.core.ReleaseException;
import org.jdataex.engine.config.ComponentItem;
import org.jdataex.flow.component.ComponentException;
import org.jdataex.flow.component.step.BaseStep;
import org.jdataex.flow.row.IRow;
import org.jdataex.util.CommonUtil;

/**
 * Created by wengxf on 2014/6/4 0004.
 */
public class RowDataAccessStep extends BaseStep{

    private RowDataAccess rowDataAccess;
    public static String ATT_NAME_POOL_NAME = "pool-name";
    
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
        this.rowDataAccess = new RowDataAccess(item.getAttribute(ATT_NAME_POOL_NAME));
    }

    @Override
    public void init() throws InitializationException {

    }

    @Override
    public void release() throws ReleaseException {

    }

    @Override
    public void processRow(IRow row) throws ComponentException {
                rowDataAccess.doProcessRow(row);
               putRow(row);
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
}
