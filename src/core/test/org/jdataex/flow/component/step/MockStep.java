package org.jdataex.flow.component.step;

import org.jdataex.core.InitializationException;
import org.jdataex.core.ReleaseException;
import org.jdataex.engine.config.ComponentItem;
import org.jdataex.flow.component.ComponentException;
import org.jdataex.flow.component.step.BaseStep;
import org.jdataex.flow.row.IRow;
import org.jdataex.util.logger.LoggerFactory;

public class MockStep extends BaseStep {

	public static String COLNAME_CHECK_COUNT = "checkCount";
	private int checkCount = 0;
	private String attCheck;
	
	@Override
	public void initConfig(ComponentItem item) throws InitializationException {
		super.initConfig(item);
		
		this.attCheck = item.getAttributes().get("attCheck");
	}
	
	@Override
	public void beforeTurnOn() {
//		System.out.println("beforeTurnOn=" + checkCount);
	}

	@Override
	public void afterTurnOff() {
//		System.out.println("afterTurnOff=" + checkCount);
	}

	@Override
	public void beforeBatchProcessing() {
//		System.out.println("beforeBatchProcessing=" + checkCount);
	}

	@Override
	public void afterBatchProcessing() {
//		System.out.println("afterBatchProcessing=" + checkCount);
	}

	@Override
	public void beginRowSet() {
//		System.out.println("beginRowSet=" + checkCount);
	}

	@Override
	public void commitRowSet() {
//		System.out.println("commitRowSet=" + checkCount);
	}

	@Override
	public void beginRow(IRow row) {
//		System.out.println("beforeRow=" + checkCount);
	}

	@Override
	public void commitRow(IRow row) {
//		System.out.println("commitRow=" + checkCount);
	}

	@Override
	public void init() throws InitializationException {
		LoggerFactory.getTestLogger().info(this.getGUIC().getID() + " init");
		
	}

	@Override
	public void release() throws ReleaseException {
		LoggerFactory.getTestLogger().info(this.getGUIC().getID() + " release");
	}

	@Override
	public void processRow(IRow row) throws ComponentException {
		LoggerFactory.getTestLogger().info("{} processRow time is {}" ,this.getGUIC().getID(), ++checkCount);
	}

	@Override
	public void rollbackRowSet() throws ComponentException {
//		System.out.println("rollbackRowSet=" + checkCount);
	}

	@Override
	public void rollbackRow(IRow row) throws ComponentException {
//		System.out.println("rollbackRow=" + checkCount);
	}

	public String getAttCheck() {
		return attCheck;
	}

	public void setAttCheck(String attCheck) {
		this.attCheck = attCheck;
	}

	public int getCheckCount() {
		return checkCount;
	}

	public void setCheckCount(int checkCount) {
		this.checkCount = checkCount;
	}

}
