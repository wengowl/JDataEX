package org.jdataex.channel.handler;

/**
 * 实现SystemHandler接口的handler是不能被添加和删除的，默认添加在链表头
 * @author chaos
 *
 */
public interface ISystemHandler<T> extends IHandler<T>{
	
}