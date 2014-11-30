package org.jdataex.i18n;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.PropertyResourceBundle;
import java.util.ResourceBundle;

import org.jdataex.util.logger.LoggerFactory;

public class ResourceBundleManager {

	private static final NullResourceBundle NULL_RESOURCE_BUNDLE = new NullResourceBundle();

	private static Map<String, ResourceBundle> bundles = new HashMap<>();

	private static Locale defaultLocale = Locale.getDefault();

	public static ResourceBundle getResourceBundle(String baseName) {
		return getResourceBundle(baseName, defaultLocale);
	}

	public static ResourceBundle getResourceBundle(String baseName,
			Locale locale) {
		String resourceBundleKey = getResourceBundleKey(baseName, locale);
		ResourceBundle resourceBundle = bundles.get(resourceBundleKey);
		if (resourceBundle == null) {
			try {
				resourceBundle = ResourceBundle.getBundle(baseName, locale);
				bundles.put(resourceBundleKey, resourceBundle);
			} catch (MissingResourceException e) {
				LoggerFactory.getRootLogger().info(
						"Missing resource." + e.getMessage());
				resourceBundle = NULL_RESOURCE_BUNDLE;
			}
		}
		return resourceBundle;
	}

	public static ResourceBundle getResourceBundle(File dir, String baseName) {
		return getResourceBundle(dir, baseName, defaultLocale);
		
	}
	public static ResourceBundle getResourceBundle(File dir, String baseName,
			Locale locale) {
		String resourceBundleKey = getResourceBundleKey(baseName, locale);
		ResourceBundle resourceBundle = bundles.get(resourceBundleKey);
		if (resourceBundle == null) {
			try {
				resourceBundle = new PropertyResourceBundle(
						new FileInputStream(new File(dir, resourceBundleKey)));
				bundles.put(resourceBundleKey, resourceBundle);
			} catch (MissingResourceException |IOException e) {
				LoggerFactory.getRootLogger().info(
						"Missing resource." + e.getMessage());
				resourceBundle = NULL_RESOURCE_BUNDLE;
			}
		}
		return resourceBundle;
	}

	private static String getResourceBundleKey(String baseName, Locale locale) {
		return baseName + "_" + locale.toString() + ".properties";
	}

	private static class NullResourceBundle extends ResourceBundle {

		public Enumeration<String> getKeys() {
			return null; // dummy
		}

		protected Object handleGetObject(String key) {
			return null; // dummy
		}

	}

}
