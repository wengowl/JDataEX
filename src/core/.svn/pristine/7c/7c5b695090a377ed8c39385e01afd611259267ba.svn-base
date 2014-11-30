package org.jdataex.i18n;

import java.io.File;
import java.util.ResourceBundle;

import org.jdataex.util.FileUtil;

public class Messages {

	static Messages instance = null;

	static {
		getInstance();
	}

	public static Messages getInstance() {
		if (instance == null) {
			instance = new Messages();
		}
		return instance;
	}

	public static String getString(String baseName, String key,
			String... parameters) {
		ResourceBundle rb = ResourceBundleManager.getResourceBundle(baseName);
		return rb.getString(key);
	}
	
	public static String getMessage(Class<?> packageClass, String key,
			String... parameters) {
		File dir = FileUtil.findAbsoluteFile(packageClass, "messages");
		
		ResourceBundle rb = ResourceBundleManager.getResourceBundle(dir, "messages");
		return rb.getString(key);
	}
}
