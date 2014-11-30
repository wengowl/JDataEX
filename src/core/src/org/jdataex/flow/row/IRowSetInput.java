package org.jdataex.flow.row;

/**
 * 数据集合，专门针对输入用。
 * 
 * @author TwelveFoldEr
 * @deprecated
 */
public interface IRowSetInput extends IRowSet {

	/**
	 * 获取下一条记录。
	 * 
	 * @return
	 */
	public abstract IRow nextRow();

	/**
	 * 是否还有下一条数据。
	 * 
	 * @return 有返回true，否则返回false。
	 */
	public abstract boolean hasNextRow();

	/**
	 * 获取指定的序号的记录。
	 * 
	 * @param index
	 *            指定序号。
	 * @return 返回指定的记录。
	 */
	public abstract IRow getRow(int index);

	/**
	 * 将获取的记录序号重置。
	 */
	public abstract void resetIndex();

	/**
	 * 获取序号值。
	 * 
	 * @return 序号值。
	 */
	public abstract int getIndex();
}
