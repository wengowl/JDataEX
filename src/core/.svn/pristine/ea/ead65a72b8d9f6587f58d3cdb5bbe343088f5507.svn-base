package org.jdataex.flow.component.step.xml;

import org.dom4j.DocumentException;
import org.jdataex.flow.component.ComponentException;
import org.jdataex.flow.component.step.file.BaseFileStep;
import org.jdataex.flow.row.IColumn;
import org.jdataex.flow.row.IColumnValueFile;
import org.jdataex.flow.row.IRow;

public class XMLConverterStep extends BaseFileStep {

	private String cnFile = "file";
	private XMLConverter converter = new XMLConverter();

	@Override
	public void processRow(IRow row) throws ComponentException {
		IColumn col = row.getColumn(cnFile);
		IColumnValueFile cvf = (IColumnValueFile) col.getValue();
		
        this.getLogger().debug("File path is [{}]", cvf.getFile().getPath());
		
        try {
			putRow(converter.toRow(cvf.getFile()));
		} catch (DocumentException e) {
			throw new ComponentException("Converter error.", e);
		}
	}

}
