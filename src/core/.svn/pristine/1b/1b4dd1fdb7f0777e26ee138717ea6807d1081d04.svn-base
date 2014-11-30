package org.jdataex.flow.component.step;

import org.jdataex.core.InitializationException;
import org.jdataex.core.ReleaseException;
import org.jdataex.flow.component.ComponentException;
import org.jdataex.flow.component.IComponent;
import org.jdataex.flow.row.IRow;
import org.jdataex.flow.row.IRowSet;
import org.jdataex.flow.row.IRowSetInput;
import org.jdataex.flow.row.IRowSetOutput;

public interface IStep extends IComponent {

	public abstract void init() throws InitializationException;

	public abstract void release() throws ReleaseException;

	public abstract void processRow(IRow row) throws ComponentException;

	/**
	 * 在组件当次运行前，需要处理的事情。比如整理记录。
	 * 
	 * @throws ComponentException
	 */
	public abstract void beforeTurnOn() throws ComponentException;

	/**
	 * 在组件当次运行后，需要处理的事情。比如清理记录。
	 * 
	 * @throws ComponentException
	 */
	public abstract void afterTurnOff() throws ComponentException;

	/**
	 * 在处理数据前，需要处理的事情。比如检查资源链接是否正常。
	 * 
	 * @throws ComponentException
	 */
	public abstract void beforeBatchProcessing() throws ComponentException;

	/**
	 * 在处理数据后，需要处理的事情。比如可能需要关闭资源链接。
	 * 
	 * @throws ComponentException
	 */
	public abstract void afterBatchProcessing() throws ComponentException;

	/**
	 * 在处理当前一批数据前，需要处理的事情。比如开启事务。
	 * 
	 * @throws ComponentException
	 */
	public abstract void beginRowSet() throws ComponentException;

	/**
	 * 在处理当前一批数据成功后，需要处理的事情。比如提交事务。
	 * 
	 * @throws ComponentException
	 */
	public abstract void commitRowSet() throws ComponentException;

	/**
	 * 在处理当前一批数据失败后，需要处理的事情。比如回滚事务。
	 * 
	 * @throws ComponentException
	 */
	public abstract void rollbackRowSet() throws ComponentException;

	/**
	 * 在处理当前一条数据前，需要处理的事情。比如记录数据关键字，开始内部事务等。
	 * @param row 需要开始添加事务的数据。
	 * 
	 * @throws ComponentException
	 */
	public abstract void beginRow(IRow row) throws ComponentException;

	/**
	 * 在处理当前一条数据成功后，需要处理的事情。比如清理数据关键字记录，或者提交内部事务等。
	 * @param row 需要提交的数据。
	 * 
	 * @throws ComponentException
	 */
	public abstract void commitRow(IRow row) throws ComponentException;

	/**
	 * 在处理当前一条数据失败后，需要处理的事情。比如回滚内部事务等。
	 * @param row 需要回滚的数据。
	 * 
	 * @throws ComponentException
	 */
	public abstract void rollbackRow(IRow row) throws ComponentException;

	public abstract void putRow(IRow row) throws ComponentException;

	public abstract boolean hasNextRow() throws ComponentException;

	public abstract IRow pullRow() throws ComponentException;

	public abstract void setRowSetInput(IRowSet input);

	public abstract IRowSet getRowSetInput();

	public abstract void setRowSetOuput(IRowSet ouput);

	public abstract IRowSet getRowSetOuput();

}
