package org.jdataex.flow.component.step.file.monitor;

import java.io.File;

import org.jdataex.core.InitializationException;
import org.jdataex.engine.config.ComponentItem;
import org.jdataex.flow.component.ComponentException;
import org.jdataex.flow.component.step.file.BaseFileStep;
import org.jdataex.flow.row.Column;
import org.jdataex.flow.row.ColumnType;
import org.jdataex.flow.row.ColumnValueFile;
import org.jdataex.flow.row.IColumnValueFile;
import org.jdataex.flow.row.IRow;
import org.jdataex.flow.row.Row;
import org.jdataex.util.CommonUtil;
import org.jdataex.util.FileUtil;

public class MonitorFileStep extends BaseFileStep {

	public static String ATT_NAME_MONITOR_DIR = "monitor-dir";

	private File monitorDir;

	@Override
	public void initConfig(ComponentItem item) throws InitializationException {
		super.initConfig(item);

		if (CommonUtil.isBlank(item.getAttribute(ATT_NAME_MONITOR_DIR))) {
            throw new InitializationException(
                    "Attribute name of monitor-directory is null or blank.");
        }

		this.getLogger().info("{} - Monitor directory is [{}]",
				this.getGUIC().toString(),
				item.getAttribute(ATT_NAME_MONITOR_DIR));

		this.monitorDir = new File(item.getAttribute(ATT_NAME_MONITOR_DIR));
	}

	@Override
	public void processRow(IRow row) throws ComponentException {
		monitorFiles(monitorDir);
	}

	private void monitorFiles(File file) throws ComponentException {
		File[] files = file.listFiles();

		this.getLogger()
				.debug("Directory path is [{}]", file.getAbsolutePath());
		
		if (null != files && files.length != 0) {
			for (File subFile : files) {
				if (subFile.isDirectory()) {
					monitorFiles(subFile);
				} else if (subFile.isFile() && !FileUtil.isLock(subFile)) {
					this.getLogger().debug("File path is [{}] ",
							subFile.getPath());
					putRow(prepareRow(subFile));
				}
			}
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