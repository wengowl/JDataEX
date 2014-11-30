package org.jdataex.flow.row;

import java.util.LinkedList;
import java.util.List;

import org.jdataex.util.JSONUtil;

import com.fasterxml.jackson.core.JsonProcessingException;

/**
 * 不允许多线程调用。否则会出错。
 * 
 * @author TwelveFoldEr
 * 
 */
public class RowSet implements IRowSet {

	private int index = 0;
	private List<IRow> rows = new LinkedList<>();

	/**
	 * Row是否都是一个类型的，待定参数。
	 */
	private boolean isSameRowType = true;

	@Override
	public boolean putRow(IRow row) {
		return rows.add(row);
	}

	@Override
	public IRow nextRow() {
		if (index < rows.size()) {
			return rows.get(index++);
		} else {
			return null;
		}
	}

	@Override
	public int size() {
		return rows.size();
	}

	@Override
	public boolean isEmpty() {
		return rows.isEmpty();
	}

	@Override
	public void resetIndex() {
		index = 0;
	}

	@Override
	public IRow rollback() {
		return rows.remove(rows.size());
	}

	@Override
	public boolean equals(Object o) {
		return rows.equals(o);
	}

	@Override
	public int hashCode() {
		return rows.hashCode();
	}

	@Override
	public void verifyRowType() {
		// TODO 添加校验数据类型。
		throw new RuntimeException("Not implement");
	}

	@Override
	public boolean isSameRowType() {
		return this.isSameRowType;
	}

	@Override
	public boolean hasNextRow() {
		return this.index < this.rows.size() ? true : false;
	}

	@Override
	public IRow getRow(int index) {
		return this.rows.get(index);
	}

	@Override
	public int getIndex() {
		return this.index;
	}
	
	@Override
	public String toString() {
		try {
			return JSONUtil.writeValueAsString(this);
		} catch (JsonProcessingException e) {
		}
		
		return super.toString();
	}

	public List<IRow> getRows() {
		return rows;
	}

	public void setRows(List<IRow> rows) {
		this.rows = rows;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public void setSameRowType(boolean isSameRowType) {
		this.isSameRowType = isSameRowType;
	}
}
