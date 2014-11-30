package org.jdataex.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtil {

	
	public static void closeQueit(ResultSet rs){
		if(rs != null){
			try {
				rs.close();
			} catch (SQLException e) {
			}
		}
	}

    public static void closeQuiet(Connection con){
        if (con!=null){
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
