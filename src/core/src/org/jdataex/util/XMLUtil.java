package org.jdataex.util;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;

public class XMLUtil {

	static SAXReader saxReader = new SAXReader();

	public static Document createDocument(File file) throws DocumentException,
			FileNotFoundException {

		return getSAXReader().read(new FileInputStream(file));
	}

	public static Document createDocument(String content)
			throws DocumentException {
		if (content == null) {
			content = "";
		}

		return getSAXReader()
				.read(new ByteArrayInputStream(content.getBytes()));
	}

	public static String getStringValue(Element e, String name) {
		AssertUtil.assertNull("Input parameter 'e' is null.", e);
		AssertUtil.assertNull("Input parameter 'name' is null.", name);

		return e.selectSingleNode(name).getStringValue();
	}

	private static SAXReader getSAXReader() {
		return saxReader;
	}

	public static String getAttributeValue(Element e, String name) {
		AssertUtil.assertNull("Input parameter 'e' is null.", e);
		AssertUtil.assertNull("Input parameter 'name' is null.", name);

		return e.attributeValue(name);
	}

	public static String getAttributeValueByAssert(Element e, String name,
			String message) {
		String result = getAttributeValue(e, name);
		AssertUtil.assertNullOrBlank(message,result);

		return result;
	}

}
