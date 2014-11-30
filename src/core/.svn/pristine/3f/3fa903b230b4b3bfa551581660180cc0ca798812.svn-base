package org.jdataex.util;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URL;
import java.net.UnknownHostException;

import org.jdataex.util.logger.LoggerFactory;

//TODO doc
public class NetUtil {

	public static void main(String[] args) {
//		String url = "http://127.0.0.1:8080/InstituteQis9012/services/CommonService";
		String url = "150.100.1.150";

		LoggerFactory.getRootLogger().info(url + " telnet result = "
				+ NetUtil.isConnectable("150.100.1.150", 10261,5000));

	}

	/**
	 * 测试是否能访问。逻辑需要调整。增强判断。
	 * 
	 * @param ip
	 * @param timeout
	 * @return
	 * @throws UnknownHostException
	 * @throws IOException
	 */
	public static boolean isReachable(String ip, int timeout)
			throws UnknownHostException, IOException {
		AssertUtil.assertNull("IP is null.", ip);
		return InetAddress.getByName(ip.trim()).isReachable(timeout);
	}

	public static boolean isUrlConnectable(String url, int timeout) {
		if (null == url || !isUrl(url)) {
			return false;
		}

		try {
			URL aurl = new URL(url);
			String ip = aurl.getHost();
			int port = aurl.getPort();
			if(port == -1){
				return isReachable(ip, timeout);
			}
			
			return isConnectable(ip, port, timeout);
		} catch (IOException e) {
		}
		
		return false;
	}
	/**
	 * 
	 * @param ip
	 *            指定的IP。
	 * @param port
	 *            指定的端口。
	 * @param timeout
	 *            超时时间。
	 * @return 连接成功返回true，连接失败返回false。
	 * @throws UnknownHostException IP或者端口无效。
	 */
	public static boolean isConnectable(String ip, String port, int timeout)
			throws UnknownHostException {
		if (!isPort(port)) {
			throw new UnknownHostException("Port is null or not valided.");
		}

		return isConnectable(ip, Integer.valueOf(port.trim()).intValue(),
				timeout);
	}
	
	/**
	 * 测试指定IP和端口是否可以连接。
	 * 
	 * @param ip
	 *            指定的IP。
	 * @param port
	 *            指定的端口。
	 * @param timeout
	 *            超时时间。
	 * @return 连接成功返回true，连接失败返回false。
	 */
	public static boolean isConnectable(String ip, int port, int timeout) {
		AssertUtil.assertNull("IP is null.", ip);

		Socket server = null;
		try {
			server = new Socket();
			server.connect(new InetSocketAddress(ip.trim(), port), timeout);
			return server.isConnected();
		} catch (IOException e) {
			// 无法通信。
			return false;
		} finally {
			if (server != null)
				try {
					server.close();
				} catch (IOException e) {
				}
		}
	}

	/**
	 * 判断端口的正则表达式。
	 */
	public static String portRegex = "^[1-9][0-9]{0,3}$|^[1-5][0-9]{0,4}$|^6[0-5]{2}[0-3][0-5]$";
	public static boolean isPort(String port) {
		if (port != null && port.trim().matches("portRegex")) {
			int portInt = Integer.valueOf(port.trim()).intValue();
			if (portInt > 0 && portInt <= 0xFFFF)
				return true;
		}

		return false;
	}

	/**
	 * 判断URL有效的正则表达式，有问题。
	 */
	public static String urlRegex = "^((https|http|ftp|rtsp|mms)?://)"
			+ "?(([0-9a-z_!~*'().&=+$%-]+: )?[0-9a-z_!~*'().&=+$%-]+@)?" // ftp的user@
			+ "(([0-9]{1,3}\\\\.){3}[0-9]{1,3}" // IP形式的URL- 199.194.52.184
			+ "|" // 允许IP和DOMAIN（域名）
			+ "([0-9a-z_!~*'()-]+\\\\.)*" // 域名- www.
			+ "([0-9a-z][0-9a-z-]{0,61})?[0-9a-z]\\\\." // 二级域名
			+ "[a-z]{2,6})" // first level domain- .com or .museum
			+ "(:[0-9]{1,4})?" // 端口- :80
			+ "((/?)|" // a slash isn't required if there is no file name
			+ "(/[0-9a-z_!~*'().;?:@&=+$,%#-]+)+/?)$";

	/**
	 * 判断URL是否是有效的URL地址，但JAVA不够严谨。
	 * 
	 * @param url 需要判断的URL。
	 * @return 是返回true，不是返回false。
	 */
	public static boolean isUrl(String url) {
		try {
			new URL(url);
			return true;
		} catch (MalformedURLException e) {
		}

		return false;
	}
	
	public static boolean isUrlContainPort(String url) {
		try {
			URL aurl = new URL(url);
			if(aurl.getPort() == -1){
				return false;
			}
			return true;
		} catch (MalformedURLException e) {
		}

		return false;
	}

	public static String getLocalHostAddress() throws UnknownHostException {
		return InetAddress.getLocalHost().getHostAddress();
	}

}
