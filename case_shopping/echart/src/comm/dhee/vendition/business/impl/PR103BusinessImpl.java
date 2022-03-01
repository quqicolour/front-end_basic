package comm.dhee.vendition.business.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import comm.dhee.vendition.business.PR103Business;
import comm.dhee.vendition.common.DBUtil;
import comm.dhee.vendition.dao.PR103Dao;
import comm.dhee.vendition.dao.impl.PR103DaoImpl;

public class PR103BusinessImpl implements PR103Business {
	
	@Override
	public List<Double> shouhinkingakuSummingSelect() throws Exception {
		
		Connection conn = null;
		PR103Dao pr103Dao = null;
		List<Double> dataList = null;
		
		try {
			
			conn = DBUtil.getConnection();
			pr103Dao =  new PR103DaoImpl(conn);
			
			dataList = pr103Dao.shouhinkingakuSummingSelect();
			
			conn.commit();
		} catch (SQLException e) {
			
			conn.rollback();
			throw e;
		} finally {
			
			DBUtil.closeConnection(conn);
		}
		
		return dataList;
	}
}
