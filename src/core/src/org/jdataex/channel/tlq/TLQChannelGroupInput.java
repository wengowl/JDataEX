package org.jdataex.channel.tlq;

import java.util.ArrayList;
import java.util.List;

import org.jdataex.channel.BaseAbstractChannelInput;
import org.jdataex.channel.IChannelGroup;
import org.jdataex.channel.IChannelInput;
import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.net.INetAddress;
import org.jdataex.util.AssertUtil;

/**
 * 属于TLQchannelinput组类,支持多线程处理,意味着对应的executor必须是TLQInputGroupExecutor
 * 内部包含多个tlqchannelInput, 一个channelInput对应一个tlqInputExecutor
 * 
 * @author chaos
 * 
 * @param <T>
 */
public class TLQChannelGroupInput<T> extends BaseAbstractChannelInput<T>
		implements IChannelInput<T>,IChannelGroup<TLQChannelInput<T>> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3428634998457349623L;

	private int tlqInputNumber = 1;

	private List<TLQChannelInput<T>> list = new ArrayList<TLQChannelInput<T>>();

	public TLQChannelGroupInput(String name, int tlqInputNumber,int type, String qcuName,
			String queueName) {
		super(name);
		AssertUtil.assertLessThanNumber("tlqInputNumber must >=1 but is "
				+ tlqInputNumber, tlqInputNumber, 1);
		this.tlqInputNumber = tlqInputNumber;
		for(int i=0;i<this.tlqInputNumber;i++){
			list.add(new TLQChannelInput<T>(name+i,type,qcuName,queueName));
		}
	}

	@Override
	public void bind(INetAddress address) {
		for(TLQChannelInput<T> input:list){
			input.bind(address);
		}
	}

	@Override
	/**
	 * 此方法对于TLQChannelGroupInput来说已经失去意义
	 * 在GroupExecutor中将直接一对一的方式绑定TLQChannelInput
	 * 调用channelInput的doReadMsg方法
	 */
	public boolean doReadMsg(IEvent<T> event) {
		return false;
	}

	@Override
	public TLQChannelInput<T> getChannel(int index) {
		return list.get(index);
	}

	@Override
	public int getSize() {
		return list.size();
	}
	
	public void close() {
		for(TLQChannelInput<T> input:list){
			input.close();
		}
	}
	
}
