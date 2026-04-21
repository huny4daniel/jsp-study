package my.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import my.model.Member;
import my.util.JdbcUtil;

public class MemberDao {
	
	public void insert(Connection conn, Member member) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into member values(?,?,?,?,?)");
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setInt(4, member.getGrade());
			pstmt.setTimestamp(5, new Timestamp(member.getRegisterDate().getTime()));
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public Member selectById(Connection conn, String memberId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Member member = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from member where memberId = ?");
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				member = new Member(); 
				member.setMemberId(rs.getString(1));
				member.setPassword(rs.getString(2));
				member.setName(rs.getString(3));
				member.setGrade(rs.getInt(4));
				member.setRegisterDate(rs.getTimestamp(5));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return member;
	}
	
	public List<Member> selectLike(Connection conn, String target, String keyword) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Member member = null; 
		List<Member> members = new ArrayList<Member>();
		try {
			pstmt = conn.prepareStatement
			("select * from member where " +target +" like ?");
			pstmt.setString(1, "%"+keyword+"%");
			rs = pstmt.executeQuery();
			while (rs.next()){
				member = new Member(); 
				member.setMemberId(rs.getString(1));
				member.setPassword(rs.getString(2));
				member.setName(rs.getString(3));
				member.setGrade(rs.getInt(4));
				member.setRegisterDate(rs.getTimestamp(5));
				members.add(member);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return members;
	}
	
	public void update(Connection conn, Member member) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update member set password=?,name=?,grade=?, "
					+ "   registerdate=? where memberId=?");
			pstmt.setString(1, member.getPassword());
			pstmt.setString(2, member.getName());
			pstmt.setInt(3, member.getGrade());
			pstmt.setTimestamp(4, new Timestamp(member.getRegisterDate().getTime()));
			pstmt.setString(5, member.getMemberId());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void deleteById(Connection conn, String memberId) 
			throws SQLException {
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from member where memberId = ?");
			pstmt.setString(1, memberId);
			pstmt.executeUpdate();			
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null; 
		ResultSet rs = null; 
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from member");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	
	public List<Member> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Member> memberList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from member ");			
			rs  = pstmt.executeQuery(); 
			memberList = new ArrayList<Member>();
			while (rs.next()){
				Member member = new Member();
				member.setMemberId(rs.getString(1));
				member.setPassword(rs.getString(2));
				member.setName(rs.getString(3));
				member.setGrade(rs.getInt(4));
				member.setRegisterDate(rs.getTimestamp(5));
				memberList.add(member);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return memberList;
	}
}




















