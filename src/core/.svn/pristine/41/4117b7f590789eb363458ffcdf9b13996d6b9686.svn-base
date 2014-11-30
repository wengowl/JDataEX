package org.jdataex.flow.component.step;

import org.jdataex.flow.component.BaseComponent;
import org.jdataex.flow.component.ComponentException;
import org.jdataex.flow.row.IRow;
import org.jdataex.flow.row.IRowSet;
import org.jdataex.flow.row.RowSet;

public abstract class BaseStep extends BaseComponent implements IStep {

    private IRowSet rowSetOutput = new RowSet();
    private IRowSet rowSetInput = new RowSet();

    @Override
    public void putRow(IRow row) throws ComponentException {
        this.rowSetOutput.putRow(row);
    }
    
    @Override
    public boolean hasNextRow() {
        return this.rowSetInput.hasNextRow();
    }

    @Override
	public IRow pullRow() throws ComponentException {
		return this.rowSetInput.nextRow();
	}

    @Override
	public void setRowSetInput(IRowSet input){
		this.rowSetInput = input;
	}

    @Override
	public IRowSet getRowSetInput(){
		return this.rowSetInput;
	}

    @Override
	public void setRowSetOuput(IRowSet ouput){
		this.rowSetOutput = ouput;
	}

    @Override
	public IRowSet getRowSetOuput(){
		return rowSetOutput;
	}
}
