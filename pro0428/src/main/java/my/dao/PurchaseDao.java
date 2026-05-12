package my.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import my.model.Purchase;
import my.util.JdbcUtil;

public class PurchaseDao {
	
	public void insert(Connection conn, Purchase purchase) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into purchase (userId, flowerId, amount, price, payment, purchaseDate)"
					+ " values(?,?,?,?,?,?)");
			pstmt.setString(1, purchase.getUserId());
			pstmt.setInt(2, purchase.getFlowerId());
			pstmt.setInt(3, purchase.getAmount());
			pstmt.setInt(4, purchase.getPrice());
			pstmt.setInt(5, purchase.getPayment());
			pstmt.setTimestamp(6, new Timestamp(purchase.getPurchaseDate().getTime()));
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
		
	public List<Purchase> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Purchase> purchaseList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from purchase ");			
			rs  = pstmt.executeQuery(); 
			purchaseList = new ArrayList<Purchase>();
			while (rs.next()){
				Purchase purchase = new Purchase();
				purchase.setId(rs.getInt(1));
				purchase.setUserId(rs.getString(2));
				purchase.setFlowerId(rs.getInt(3));
				purchase.setAmount(rs.getInt(4));
				purchase.setPrice(rs.getInt(5));
				purchase.setPayment(rs.getInt(6));
				purchase.setPurchaseDate(rs.getTimestamp(7));
				purchaseList.add(purchase);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return purchaseList;
	}
}




















