package org.jdataex.channel.common;

/**
 * 用于存储channel框架所有的默认值
 * @author chaos
 *
 */
public final class DefaultValues {
	
	
	public final static int DEFAULT_THREAD_SIZE = 1;
	
	public final static int DEFAULT_CHANNEL_OUTPUT_RECONNECT_TIMES = 3;
	
	public final static int DEFAULT_CHANNEL_OUTPUT_RECONNECT_INTERVAL = 2000;
	
	public final static String NULL_STRING = "";
	
	/**
	 * event string properties 参数分隔符
	 */
	public final static String EVENT_DEFAULT_SEPARATOR = ";";
	
	/**
	 * event string properties 参数等号符
	 */
	public final static String EVENT_DEFAULT_SIGN = "=";
	
	
	//nio socket 参数
	
	public final static int DEFAULT_BYTEBUFFER_CAPACITY = 65000;
	
	/**
	 * 传输string类型的消息
	 */
	public final static int NIO_STR = 100;
	
	/**
	 * 传输object类型的消息
	 */
	public final static int NIO_OBJ = 200;
	
	/**
	 * 传输文件类型的消息,消息类容必须为文件路径
	 */
	public final static int NIO_FILE = 300;
	
	/**
	 * NIO消息头类型位宽
	 */
	public final static int NIO_HEADER_TYPE_LEN = 3;
	
	/**
	 * nio消息头消息具体长度位宽
	 */
	public final static int NIO_HEADER_MSG_LEN = 9;
	
	public final static int TLQ_MSG = 1;
	
	public final static int TLQ_FILE = 2;
	
	public final static String TLQ_FILE_SIGN = "file";
	
	/**
	 * 默认的qcu名称
	 */
	public final static String DEFAULT_QCU_NAME = "qcu1";
	
	/**
	 * tlqchannelOutput默认的发送队列名称
	 */
	public final static String DEFAULT_SEND_QUEUE_NAME = "sq";
	
	/**
	 * tlqchannelInput默认的接收队列名称
	 */
	public final static String DEFAULT_RECEIVE_QUEUE_NAME = "lq";
	
	public final static int NO_MSG_IN_QUEUE = 2603;
	
	/**
	 * tlqchannelInput和output的系统通信队列,用于发心跳消息等...
	 */
	public final static String DEFAULT_TLQ_EVENT_QUEUE_NAME = "channelevent";
	
	public final static String DEFAULT_TLQ_SEND_CONN_NAME = "conn1";
	
	public final static int DEFAULT_TLQ_WAIT_INTERVAL = 5;
	
	public enum TLQError{
		TL_SYS_SOCKET_CREATE(52),TL_SYS_SOCKET_INIT(53),TL_SYS_SOCKET_CONNECT(54),TL_SYS_SOCKET_BIND(55)
		,TL_SYS_SOCKET_ACCEPT(56),TL_SYS_SOCKET_LISTEN(75);
	
		int number;
		
		private TLQError(int number){
			this.number = number;
		}
		
		public int getNumber(){
			return this.number;
		}
	}
	
	public static boolean isHaveErrorNumber(int number){
		for(TLQError error:TLQError.values()){
			if(error.getNumber()==number) return true;
		}
		return false;
	}

}
