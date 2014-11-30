package org.jdataex.channel.local;

import junit.framework.Assert;

import org.jdataex.channel.IChannelInput;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class LocalChannelInputTest {
	
	private IChannelInput<String> channelInput;
	
	@Before
	public void serUp(){
		channelInput = new LocalChannelInput<String>("test1");
	}
	
	@After
	public void clear(){
		channelInput.close();
		channelInput = null;
	}

	@Test
	public void testBind() {
		try{
			channelInput.bind(null);
		}catch(Exception e ){
			Assert.assertTrue(true);
		}
		
	}

	//@Test
	public void testSetRead() {
		channelInput.setRead(false);
		testDoReadMsg();
	}

	@Test
	public void testDoReadMsg() {
		
		Thread th = new Thread(new Runnable(){

			@Override
			public void run() {
				//阻塞
				channelInput.doReadMsg(null);
				System.out.println("阻塞完毕");
			}
			
		});
		
		th.start();
		System.out.println("开始解锁");
		channelInput.close();
		System.out.println("结束解锁");
	
		while(th.isAlive()){
			try {
				Thread.sleep(200);
			} catch (InterruptedException e) {
			}
		}
		
		//
	}
	
	public static void main(String[] args){
		final LocalChannelInput<String> channelInput = new LocalChannelInput<String>("test1");
		
		Thread th = new Thread(new Runnable(){

			@Override
			public void run() {
				//阻塞
				channelInput.doReadMsg(null);
				System.out.println("阻塞完毕");
			}
		});
		
		th.start();
/*		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}*/
		System.out.println("开始解锁");
		channelInput.close();
		System.out.println("结束解锁");
		
	}

}
