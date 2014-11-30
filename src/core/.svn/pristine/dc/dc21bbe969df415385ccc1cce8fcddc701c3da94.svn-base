package org.jdataex.flow.row;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class Column implements IColumn {

	@JsonIgnore
	private UUID uuid;
	private String name;
	private Object value;
	private ColumnType type;
	private Map<String, Object> properties = new HashMap<String, Object>();

	public Column(String name, Object value) {
		this(name, value, ColumnType.STRING);
	}

	public Column(String name, Object value, ColumnType type) {
		this(name, value, type, UUID.randomUUID());
	}

	public Column(String name, Object value, ColumnType type, UUID uuid) {
		this.name = name;
		this.value = value;
		this.type = type;
		this.uuid = uuid;
	}

	public Column(IColumn an) {
		this(an.getName(), an.getValue(), an.getType());
	}

	@Override
	public UUID getUUID() {
		return uuid;
	}

	@Override
	public void setUUID(UUID uuid) {
		this.uuid = uuid;
	}

	@Override
	public String getName() {
		return name;
	}

	@Override
	public void setName(String name) {
		this.name = name;
	}

	@Override
	public Object getValue() {
		return value;
	}

	@Override
	public void setValue(Object value) {
		this.value = value;
	}

	@Override
	public ColumnType getType() {
		return type;
	}

	@Override
	public void setType(ColumnType type) {
		this.type = type;
	}

	@Override
	public Object putProperty(String key, Object value) {
		checkProperties();

		return this.properties.put(key, value);
	}

	@Override
	public Object getProperty(String key) {
		checkProperties();

		return this.properties.get(key);
	}

	@Override
	public Iterable<String> getPropertyKeys() {
		checkProperties();

		return this.properties.keySet();
	}

	private void checkProperties() {
		if (this.properties == null) {
			this.properties = new HashMap<String, Object>();
		}
	}

}
