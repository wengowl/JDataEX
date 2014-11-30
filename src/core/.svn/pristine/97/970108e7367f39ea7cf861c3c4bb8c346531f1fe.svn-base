package org.jdataex.flow.component.step.file.write;

import java.io.File;

import org.jdataex.flow.component.ComponentException;
import org.jdataex.flow.component.step.file.BaseFileStep;
import org.jdataex.flow.component.step.xml.XMLConverter;
import org.jdataex.flow.row.Column;
import org.jdataex.flow.row.ColumnType;
import org.jdataex.flow.row.ColumnValueFile;
import org.jdataex.flow.row.IColumnValueFile;
import org.jdataex.flow.row.IRow;
import org.jdataex.flow.row.Row;
import org.jdataex.util.FileUtil;

public class XMLWriteStep extends BaseFileStep {

	private XMLConverter converter = new XMLConverter();
	private WriteType writeType = WriteType.NEW;

	@Override
	public void processRow(IRow row) throws ComponentException {
//		converter.fromRow(row, filepath)
		
		switch (this.writeType) {
		case ADDITIONAL:
			break;
		case NEW:
			break;
		case OVERWRITTEN:
			break;
		}
	}

	private IRow prepareRow(File file) {
		IRow row = new Row();

		row.putColumn(new Column("file", prepareColumnValueFile(file),
				ColumnType.FILE));

		return row;
	}

	private IColumnValueFile prepareColumnValueFile(File file) {
		IColumnValueFile cvf = new ColumnValueFile();
		cvf.setFile(file);

		return cvf;
	}

}
