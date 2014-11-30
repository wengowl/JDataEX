package org.jdataex.flow.component.step.xml;

import static org.junit.Assert.assertEquals;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import org.jdataex.flow.component.step.dataaccess.RowDataAccess;
import org.jdataex.flow.row.Row;
import org.jdataex.resource.databasepool.DBManager;
import org.junit.Test;

public class TestXMLConverter {

	@Test
	public void Calibrationdate() throws Exception {
		String expectedpath = "test/org/jdataex/flow/component/step/xml/resource/民事二审.xml";
		XMLConverter converter = new XMLConverter();
		Row row = converter.toRow(new File(expectedpath));
		RowDataAccess as = new RowDataAccess(null);
		as.doProcessRow(row);
		String sql = "select * from MSES_YSQK where AJBS=22323";
		Map<String, Object> expectedMap2 = new HashMap<>();
		TestXMLConverter txc = new TestXMLConverter();
		ResultSet rs = txc.sqlQuery(sql);
		if (rs.next()) {
			expectedMap2.clear();
			expectedMap2.put("XH", rs.getString("XH"));
			expectedMap2.put("JBFY", rs.getString("JBFY"));
			expectedMap2.put("AH", rs.getString("AH"));
			expectedMap2.put("SXFLWSBH", rs.getString("SXFLWSBH"));
		}
		Map<String, Object> expectedMap1 = new HashMap<>();
		expectedMap1.put("XH", "4");
		expectedMap1.put("JBFY", "1");
		expectedMap1.put("AH", "案号");
		expectedMap1.put("SXFLWSBH", "生效法律文书编号");
		assertEquals(expectedMap2, expectedMap1);
	}

	@Test
	public void IntermediateComparison() throws Exception {
		String expectedpath = "test/org/jdataex/flow/component/step/xml/resource/民事二审.xml";
		XMLConverter converter = new XMLConverter();
		Row row = converter.toRow(new File(expectedpath));
		RowDataAccess as = new RowDataAccess(null);
		as.doProcessRow(row);
		String sql = "select * from MSES_WS where AJBS=22323";
		Map<String, Object> expectedMap2 = new HashMap<>();
		TestXMLConverter txc = new TestXMLConverter();
		ResultSet rs = txc.sqlQuery(sql);
		if (rs.next()) {
			expectedMap2.clear();
			expectedMap2.put("XH", rs.getString("XH"));
			expectedMap2.put("LB", rs.getString("LB"));
			expectedMap2.put("MC", rs.getString("MC"));
			expectedMap2.put("ZZSJ", rs.getString("ZZSJ"));
		}
		Map<String, Object> expectedMap1 = new HashMap<>();
		expectedMap1.put("XH", "4");
		expectedMap1.put("LB", "1");
		expectedMap1.put("MC", "名称");
		expectedMap1.put("ZZSJ", "2014-06-09 12:12:12.0");
		assertEquals(expectedMap2, expectedMap1);
	}

	@Test
	public void EndComparison() throws Exception {
		String expectedpath = "test/org/jdataex/flow/component/step/xml/resource/民事二审.xml";
		XMLConverter converter = new XMLConverter();
		Row row = converter.toRow(new File(expectedpath));
		RowDataAccess as = new RowDataAccess(null);
		as.doProcessRow(row);
		String sql = "select * from MSES_JDXX where AJBS=22323";
		Map<String, Object> expectedMap2 = new HashMap<>();
		TestXMLConverter txc = new TestXMLConverter();
		ResultSet rs = txc.sqlQuery(sql);
		if (rs.next()) {
			expectedMap2.clear();
			expectedMap2.put("XH", rs.getString("XH"));
			expectedMap2.put("ZJXH", rs.getString("ZJXH"));
			expectedMap2.put("WTJDNR", rs.getString("WTJDNR"));
			expectedMap2.put("JDYJJJS", rs.getString("JDYJJJS"));
		}
		Map<String, Object> expectedMap1 = new HashMap<>();
		expectedMap1.put("XH", "4");
		expectedMap1.put("ZJXH", "1");
		expectedMap1.put("WTJDNR", "委托鉴定内容");
		expectedMap1.put("JDYJJJS", "鉴定依据及技术");
		assertEquals(expectedMap2, expectedMap1);
	}

	public ResultSet sqlQuery(String sql) throws Exception {
		PreparedStatement prsts = null;
		Connection conn = null;
		ResultSet rs = null;
		DBManager dbManager = DBManager.getInstance();

		conn = dbManager.getConnection(null);
		prsts = conn.prepareStatement(sql);
		rs = prsts.executeQuery();
		conn.close();
		return rs;

	}
}
