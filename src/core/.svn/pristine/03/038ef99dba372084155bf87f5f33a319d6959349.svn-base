package org.jdataex.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Properties;

/**
 * 获取Propers 键值对工具类
 * @author zhourh
 * @deprecated 没看到被调用。
 */
public class PropersUtil {
	
	private static Properties columnName = null;
	
	
	/**
	 * 根据名字 获取数据库字段名
	 * @param key
	 * @return
	 */
	public static String getColumnName(String key){
		if(columnName == null){
			columnName = new Properties();
			Reader re = null;
			try {
				re = new InputStreamReader(new FileInputStream(new File(System.getProperty("user.dir") +File.separator+"src\\DataColumNameMap.props")));
				columnName.load(re);
				re.close();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		//
		Object keyValue = columnName.get(key);
		String result = keyValue==null?key:(String)keyValue;
		return result;
	}
	
	public static void main(String[] args) {
		System.out.println(PropersUtil.getColumnName("测试"));
	}
}
