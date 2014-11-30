package org.jdataex.flow.framework;

import org.jdataex.flow.component.ComponentException;
import org.jdataex.flow.component.step.MockStep;
import org.jdataex.flow.row.IColumn;
import org.jdataex.flow.row.IRow;
import org.jdataex.util.logger.LoggerFactory;

public class MockSecondStep extends MockStep {

	@Override
	public void processRow(IRow row) throws ComponentException {

		if (row != null) {
//			IColumn col = row.getColumn(MockFirstStep.COLNAME_CHECK_COUNT);
//			LoggerFactory.getTestLogger().info("CheckValue=" + col.getValue());

			super.processRow(row);
		}
	}
}
