package org.jdataex.core.card;

import java.util.UUID;

/**
 * 全局唯一身份证卡，Globally Unique Identifier Card。<br> 
 * 通过则个身份证，所有的数据、组件、Handler等，都可确定唯一标示。
 * 
 * @author TwelveFoldEr
 * 
 */
public class GUIC {

	/**
	 * 全局的
	 */
	private UUID uuid;

	/**
	 * 内部小范围的。比如流程级别的。
	 */
	private String id;

	/**
	 * 名称
	 */
	private String name;

	public GUIC() {
		this(UUID.randomUUID(), UUID.randomUUID().toString(), UUID.randomUUID()
				.toString());
	}

	public GUIC(String id) {
		this(UUID.randomUUID(), id, id);
	}

	public GUIC(UUID uuid, String id, String name) {
		this.uuid = uuid;
		this.id = id;
		this.name = name;
	}

	public GUIC(String id, String name) {
		this(UUID.randomUUID(), id, name);
	}

	public GUIC(UUID randomUUID) {
		this.uuid = UUID.randomUUID();
		this.id = uuid.toString();
		this.name = uuid.toString();
	}

	public UUID getUUID() {
		return uuid;
	}

	public void setUUID(UUID uuid) {
		this.uuid = uuid;
	}

	public String getID() {
		return id;
	}

	public void setID(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return this.uuid.toString() + "#" + this.id + "#" + this.name;
	}
}