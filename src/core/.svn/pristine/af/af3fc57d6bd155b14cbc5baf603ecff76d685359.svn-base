package org.jdataex.flow;

import java.io.File;

import org.jdataex.core.InitializationException;
import org.jdataex.engine.loader.ChannelFlowLoader;
import org.jdataex.engine.loader.IFlowLoader;
import org.jdataex.flow.controller.ControllerException;
import org.jdataex.flow.row.Column;
import org.jdataex.flow.row.IRow;
import org.jdataex.flow.row.IRowSet;
import org.jdataex.flow.row.Row;
import org.jdataex.flow.row.RowSet;
import org.jdataex.util.FileUtil;

public class FlowUtil {

	private static IFlowLoader loader = new ChannelFlowLoader();

	public static IFlow loadFlow(Class<?> clazz, String fileName)
			throws InitializationException {
		File file = FileUtil.findAbsoluteFile(clazz, fileName);

		return loadFlow(file);
	}

	public static IFlow loadFlow(File file) throws InitializationException {
		IFlow flow = loader.load(file);

		return flow;
	}

	public static IFlow loadFlowAndRunning(Class<?> clazz, String fileName,
			int runTimes) throws InitializationException, ControllerException {
		File file = FileUtil.findAbsoluteFile(clazz, fileName);
		IFlow flow = loadFlow(file);

		for (int i = 0; i < runTimes; i++) {
			IRowSet rowSet = createRunningRowSet();

			flow.notifyRunning(rowSet);
		}

		return flow;
	}

	public static IRowSet createRunningRowSet() {
		IRowSet rowSet = new RowSet();
		IRow row = new Row();
		row.putColumn(new Column("AttRunning", "1"));
		rowSet.putRow(row);
		return rowSet;
	}
	
	public static IFlow loadFlowAndRunning(Class<?> clazz, String fileName) throws InitializationException, ControllerException{
		return loadFlowAndRunning(clazz, fileName, 1);
	}

}
