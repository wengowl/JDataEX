package org.jdataex.flow.row;


/**
 * 数据集合，专门针对输出用。
 * @author TwelveFoldEr
 * @deprecated
 */
public interface IRowSetOutput extends IRowSet{

	/**
	 * 回退最后一条插入的记录。
	 * @return 回退被回退的记录。
	 */
	public abstract IRow rollback();

	/**
	 * 插入一条新的记录。
	 * @param row 插入的记录。
	 * @return 插入成功返回true，否则false。
	 */
	public abstract boolean putRow(IRow row);
}
