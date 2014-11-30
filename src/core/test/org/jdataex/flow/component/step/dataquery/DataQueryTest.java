package org.jdataex.flow.component.step.dataquery;

import static org.junit.Assert.assertEquals;

import java.io.File;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.dom4j.DocumentException;
import org.jdataex.flow.component.step.dataaccess.RowDataAccess;
import org.jdataex.flow.component.step.xml.XMLConverter;
import org.jdataex.flow.row.IRow;
import org.jdataex.flow.row.Row;
import org.jdataex.resource.databasepool.DBManager;
import org.junit.BeforeClass;
import org.junit.Test;

public class DataQueryTest {
	private static Connection conn;
	private static QueryRunner queryRunner;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		conn = DBManager.getInstance().getConnection("pool");
		queryRunner = new QueryRunner(true);
	}

	@Test
	public void testGetAllSP() throws Exception {
		XMLConverter xmlConverter = new XMLConverter();
		try {
			IRow row = xmlConverter
					.toRow(new File(
							"test/org/jdataex/flow/component/step/dataquery/民事一审_delete.xml"));
			RowDataAccess rowDataAccess = new RowDataAccess(null);
			rowDataAccess.doProcessRow(row);

		} catch (DocumentException e) {
			e.printStackTrace();
		}
		assertEquals(0, queryRunner.update(conn, "select * from MSYS_SDJL"));

		IRow row1 = new Row();
		try {
			row1 = xmlConverter.toRow(new File(
					"test/org/jdataex/flow/component/step/dataquery/民事一审.xml"));
			RowDataAccess rowDataAccess = new RowDataAccess(null);
			rowDataAccess.doProcessRow(row1);

		} catch (DocumentException e) {
			e.printStackTrace();
		}

		DataQuery dataQuery = new DataQuery();
		IRow row = dataQuery.getAllSP("民事一审", 1231212423);
		assertEquals(row1.getColumnsSize() - 1, row.getColumnsSize());
		assertEquals(row1.getHeader().get("LX"), row.getHeader().get("LX"));
	}

	@Test
	public void testGetAllFSP() throws Exception {
		XMLConverter xmlConverter = new XMLConverter();
		try {
			IRow row = xmlConverter
					.toRow(new File(
							"test/org/jdataex/flow/component/step/dataquery/司法行政装备管理系统_delete.xml"));
			RowDataAccess rowDataAccess = new RowDataAccess(null);
			rowDataAccess.doProcessRow(row);

		} catch (DocumentException e) {
			e.printStackTrace();
		}

		IRow row1 = new Row();
		try {
			row1 = xmlConverter
					.toRow(new File(
							"test/org/jdataex/flow/component/step/dataquery/司法行政装备管理系统_insert.xml"));
			RowDataAccess rowDataAccess = new RowDataAccess(null);
			rowDataAccess.doProcessRow(row1);

		} catch (DocumentException e) {
			e.printStackTrace();
		}

		DataQuery dataQuery = new DataQuery();
		Map<String, Object> tj = new HashMap<>();
		tj.put("FYBM", 1);
		IRow row = dataQuery.getALLFSP("司法行政装备管理系统", tj);
		assertEquals(row1.getColumnsSize(), row.getColumnsSize());
		System.out.println(row1.getHeader().get("LX"));
		assertEquals(row1.getHeader().get("LX"), row.getHeader().get("LX"));

	}
}