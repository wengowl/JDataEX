package org.jdataex.flow.row;


/**
 * 组件内部Row集合相关操作。
 * 
 * @author TwelveFoldEr
 * 
 */
public interface IRowSet {

	public abstract boolean isEmpty();

	public abstract int size();
	
	/**
	 * 校验集合里面的Row是否类型一致。
	 */
	public abstract void verifyRowType();

	/**
	 * 集合里面的Row类型是否一致。
	 * @return
	 */
	public abstract boolean isSameRowType();
	
	/**
	 * 获取下一条记录。
	 * @return
	 */
	public abstract IRow nextRow();
	
	/**
	 * 是否还有下一条数据。
	 * @return 有返回true，否则返回false。
	 */
	public abstract boolean hasNextRow();
	
	/**
	 * 获取指定的序号的记录。
	 * @param index 指定序号。
	 * @return 返回指定的记录。
	 */
	public abstract IRow getRow(int index);
	
	
	/**
	 * 将获取的记录序号重置。
	 */
	public abstract void resetIndex();
	
	/**
	 * 获取序号值。
	 * @return 序号值。
	 */
	public abstract int getIndex();
	
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
