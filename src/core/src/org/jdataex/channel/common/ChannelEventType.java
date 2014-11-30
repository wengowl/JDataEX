package org.jdataex.channel.common;

public enum ChannelEventType {

	channelActive(1), ChannelBind(2), ChannelRead(3), ChannelWrite(4);

	private int eventNumber;

	private ChannelEventType(int eventNumber) {
		this.eventNumber = eventNumber;
	}

	public int getChannelEventNumber() {
		return eventNumber;
	}
}
