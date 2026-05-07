package my.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import my.model.Flower;
import my.util.JdbcUtil;

public class FlowerDao {
	
	public void insert(Connection conn, Flower flower) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into flower (name,origin,price,registerDate,image)"
					+ " values(?,?,?,?,?)");
			pstmt.setString(1, flower.getName());
			pstmt.setString(2, flower.getOrigin());
			pstmt.setInt(3, flower.getPrice());
			pstmt.setTimestamp(4, new Timestamp(flower.getRegisterDate().getTime()));
			pstmt.setString(5, flower.getImage());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public Flower selectById(Connection conn, int flowerId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Flower flower = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from flower where flowerId = ?");
			pstmt.setInt(1, flowerId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				flower = new Flower(); 
				flower.setFlowerId(rs.getInt(1));
				flower.setName(rs.getString(2));
				flower.setOrigin(rs.getString(3));
				flower.setPrice(rs.getInt(4));
				flower.setRegisterDate(rs.getTimestamp(5));
				flower.setImage(rs.getString(6));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return flower;
	}
	
	public List<Flower> selectLike(Connection conn, String target, String keyword) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Flower flower = null; 
		List<Flower> flowers = new ArrayList<Flower>();
		try {
			pstmt = conn.prepareStatement
			("select * from flower where " + target + " like ?");
			pstmt.setString(1, "%"+keyword+"%");
			rs = pstmt.executeQuery();
			while (rs.next()){
				flower = new Flower(); 
				flower.setFlowerId(rs.getInt(1));
				flower.setName(rs.getString(2));
				flower.setOrigin(rs.getString(3));
				flower.setPrice(rs.getInt(4));
				flower.setRegisterDate(rs.getTimestamp(5));
				flower.setImage(rs.getString(6));
				flowers.add(flower);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return flowers;
	}
	
	public int update(Connection conn, Flower flower) 
			throws SQLException {
		PreparedStatement pstmt=null;
		int result = 0;
		try {
			pstmt = conn.prepareStatement
			("update flower set nname=?,origin=?,price=?, "
					+ "   registerdate=?, Image=? where flowerId=?");
			pstmt.setString(1, flower.getName());
			pstmt.setString(2, flower.getOrigin());
			pstmt.setInt(3, flower.getPrice());
			pstmt.setTimestamp(4, new Timestamp(flower.getRegisterDate().getTime()));
			pstmt.setString(5, flower.getImage());
			pstmt.setInt(6, flower.getFlowerId());
			result = pstmt.executeUpdate();
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
		return result;
	}
	
	public int deleteById(Connection conn, int flowerId) 
			throws SQLException {
		PreparedStatement pstmt=null;
		int count = 0;
		try {
			pstmt = conn.prepareStatement
			("delete from flower where flowerId = ?");
			pstmt.setInt(1, flowerId);
			count = pstmt.executeUpdate();			
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
		return count;
	}
	
	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null; 
		ResultSet rs = null; 
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from flower");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	
	public List<Flower> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Flower> flowerList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from flower ");			
			rs  = pstmt.executeQuery(); 
			flowerList = new ArrayList<Flower>();
			while (rs.next()){
				Flower flower = new Flower();
				flower.setFlowerId(rs.getInt(1));
				flower.setName(rs.getString(2));
				flower.setOrigin(rs.getString(3));
				flower.setPrice(rs.getInt(4));
				flower.setRegisterDate(rs.getTimestamp(5));
				flower.setImage(rs.getString(6));
				flowerList.add(flower);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return flowerList;
	}
}




















