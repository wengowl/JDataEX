package org.jdataex.flow.row;

import java.util.UUID;

public interface IColumn {

	public abstract void setType(ColumnType type);

	public abstract ColumnType getType();

	public abstract void setValue(Object value);

	public abstract Object getValue();

	public abstract void setName(String name);

	public abstract String getName();

	public abstract void setUUID(UUID uuid);

	public abstract UUID getUUID();

	public abstract Object getProperty(String key);

	public abstract Object putProperty(String key, Object value);

	public abstract Iterable<String> getPropertyKeys();

}
