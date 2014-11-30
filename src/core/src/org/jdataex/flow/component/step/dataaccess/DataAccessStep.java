package org.jdataex.flow.component.step.dataaccess;

import org.jdataex.core.InitializationException;
import org.jdataex.core.ReleaseException;
import org.jdataex.flow.component.ComponentException;
import org.jdataex.flow.component.step.BaseStep;
import org.jdataex.flow.row.IRow;

/**
 * 无效，由RowDataAccessStep替代
 * Created by wengxf on 2014/5/30 0030.
 */
public class DataAccessStep extends BaseStep
{
    private ComplexAutoDataAccess complexAutoDataAccess = new ComplexAutoDataAccess();

    @Override
    public void init() throws InitializationException {

    }

    @Override
    public void release() throws ReleaseException {

    }

    @Override
    public void processRow(IRow row) throws ComponentException {
        System.out.println("表名："+row.getHeader().get("tableName"));
        for (int i=0;i<row.getColumnsSize();i++)
        {
            System.out.println("字段名："+row.getColumn(i).getName());
        }
          complexAutoDataAccess.processComplexRow(row);
          putRow(row);
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

	@Override
	public void beforeTurnOn() throws ComponentException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterTurnOff() throws ComponentException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void beforeBatchProcessing() throws ComponentException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterBatchProcessing() throws ComponentException {
		// TODO Auto-generated method stub
		
	}
}
