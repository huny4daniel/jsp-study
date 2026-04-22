package my.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import my.model.Movie;
import my.util.JdbcUtil;

public class MovieDao {
	
	public void insert(Connection conn, Movie movie) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into movie (title,maker,kind,price,poster)"
					+ " values(?,?,?,?,?)");
			pstmt.setString(1, movie.getTitle());
			pstmt.setString(2, movie.getMaker());
			pstmt.setString(3, movie.getKind());
			pstmt.setInt(4, movie.getPrice());
			pstmt.setString(5, movie.getPoster());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public Movie selectById(Connection conn, int movieId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Movie movie = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from movie where movieId = ?");
			pstmt.setInt(1, movieId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				movie = new Movie();
				movie.setMovieId(rs.getInt(1));
				movie.setTitle(rs.getString(2));
				movie.setMaker(rs.getString(3));
				movie.setKind(rs.getString(4));
				movie.setPrice(rs.getInt(5));
				movie.setOpenDate(rs.getTimestamp(6));
				movie.setPoster(rs.getString(7));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return movie;
	}
	
	public List<Movie> selectLike(Connection conn, String target, String keyword) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Movie movie = null; 
		List<Movie> movies = new ArrayList<Movie>();
		try {
			pstmt = conn.prepareStatement
			("select * from movie where " +target +" like ?");
			pstmt.setString(1, "%"+keyword+"%");
			rs = pstmt.executeQuery();
			while (rs.next()){
				movie = new Movie();
				movie.setMovieId(rs.getInt(1));
				movie.setTitle(rs.getString(2));
				movie.setMaker(rs.getString(3));
				movie.setKind(rs.getString(4));
				movie.setPrice(rs.getInt(5));
				movie.setOpenDate(rs.getTimestamp(6));
				movie.setPoster(rs.getString(7));
				movies.add(movie);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return movies;
	}
	
	public void update(Connection conn, Movie movie) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update movie set title=?,maker=?,kind=?,price=? where movieId=?");
			pstmt.setString(1, movie.getTitle());
			pstmt.setString(2, movie.getMaker());
			pstmt.setString(3, movie.getKind());
			pstmt.setInt(4, movie.getPrice());
			pstmt.setInt(5, movie.getMovieId());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void deleteById(Connection conn, int movieId)
			throws SQLException {
		PreparedStatement pstmt=null;
		try {
			pstmt = conn.prepareStatement
			("delete from movie where movieId = ?");
			pstmt.setInt(1, movieId);
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
			rs = stmt.executeQuery("select count(*) from movie");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	
	public List<Movie> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Movie> movieList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from movie ");			
			rs  = pstmt.executeQuery(); 
			movieList = new ArrayList<Movie>();
			while (rs.next()){
				Movie movie = new Movie();
				movie.setMovieId(rs.getInt(1));
				movie.setTitle(rs.getString(2));
				movie.setMaker(rs.getString(3));
				movie.setKind(rs.getString(4));
				movie.setPrice(rs.getInt(5));
				movie.setOpenDate(rs.getTimestamp(6));
				movie.setPoster(rs.getString(7));
				movieList.add(movie);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return movieList;
	}
}




















