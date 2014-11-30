package org.jdataex.flow.framework;

import org.dom4j.DocumentException;
import org.jdataex.flow.component.ComponentException;
import org.jdataex.flow.component.step.MockStep;
import org.jdataex.flow.row.Column;
import org.jdataex.flow.row.IColumn;
import org.jdataex.flow.row.IColumnValueFile;
import org.jdataex.flow.row.IRow;
import org.jdataex.flow.row.Row;

public class MockFirstStep extends MockStep {

	@Override
	public void processRow(IRow row) throws ComponentException {
		IRow result = new Row();

		result.putColumn(new Column(COLNAME_CHECK_COUNT, this.getCheckCount()));

		putRow(result);

		super.processRow(row);
	}
}
