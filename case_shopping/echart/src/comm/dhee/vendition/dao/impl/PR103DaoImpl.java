package comm.dhee.vendition.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import comm.dhee.vendition.dao.PR103Dao;

public class PR103DaoImpl implements PR103Dao {

	private Connection conn;

	public PR103DaoImpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public List<Double> shouhinkingakuSummingSelect() throws SQLException {

		List<Double> dataList = new ArrayList<Double>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// TODO 这里的SQL语句并没有检查真实的业务数据，仅仅是例子，实训中需要改写
		String sql = "SELECT rownum, result  FROM (SELECT m00209 AS result FROM m002 ORDER BY result DESC) WHERE rownum <= 10";
		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();

		while (rs.next()) {
			dataList.add(rs.getDouble("result"));
		}

		rs.close();
		pstmt.close();
		
		return dataList;

	}

}
