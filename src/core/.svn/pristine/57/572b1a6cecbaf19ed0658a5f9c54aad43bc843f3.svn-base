package org.jdataex.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

import org.apache.commons.io.LineIterator;
import org.apache.poi.ss.formula.functions.Columns;
import org.jdataex.flow.row.Column;
import org.jdataex.flow.row.IColumn;
import org.jdataex.flow.row.IRow;
import org.jdataex.flow.row.Row;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * TODO 调整，没有上锁。可能会造成mapper解析的内容有误。根据Jackson官方说法，mapper是可以用于全局的。
 * 
 * @author TwelveFolder
 * 
 */
public class JSONUtil {
	static ObjectMapper mapper = new ObjectMapper();

	public static <T> T readValue(File file, Class<T> clazz)
			throws IOException, JsonParseException, JsonMappingException {
		return mapper.readValue(file, clazz);
	}

	public static void writeValue(File file, Object object) throws IOException,
			JsonGenerationException, JsonMappingException {
		mapper.writeValue(file, object);
	}

	public static String writeValueAsString(Object object)
			throws JsonProcessingException {
		return mapper.writeValueAsString(object);
	}

	public static <T> T readValue(String content, Class<T> clazz)
			throws IOException, JsonParseException, JsonMappingException {
		return mapper.readValue(content, clazz);
	}

	public static void printlnNameValueAndText(String message, JsonParser jp)
			throws JsonParseException, IOException {
		System.out.println(message + ":\n\tname=\"" + jp.getCurrentName()
				+ "\",value=\"" + jp.getValueAsString() + "\",text=\""
				+ jp.getText() + "\"");
	}

	public static <T> Vector<T> readValuesAsVector(LineIterator lines,
			Class<T> clazz) throws JsonParseException, JsonMappingException,
			IOException {
		Vector<T> v = new Vector<T>();

		while (lines.hasNext()) {
			v.add(mapper.readValue(lines.nextLine(), clazz));
		}

		return v;
	}
}
