
 
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class SimpleDBUtil {
	private Connection conn;
 
	public SimpleDBUtil() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
	}
 
	public Blob getBlobData(String sahadev1) throws SQLException {
		System.out.println("username:" + sahadev1);
		String sql = "select img1 from user_info where username = '" + sahadev1 + "'";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery(sql);
		if (rs.next()) {
			return rs.getBlob(1);
		}
 
		rs.close();
		ps.close();
		return null;
	}
	
	public void save(String sahadev1, InputStream inputStream) throws SQLException {
		String sql = "INSERT INTO user_info (username, img1) values (?, ?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, sahadev1);
		ps.setBlob(2, inputStream);
		
		ps.executeUpdate();
	} 
	
	public boolean checkExistance(String sahadev1) throws SQLException {
		boolean result = false;
		String sql = "select img1 from user_info where username = '" + sahadev1 + "'";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery(sql);
		if (rs.next()) {
			result = true;
		}
 
		rs.close();
		ps.close();
		return result;
	}
	
	public void close() {
		try {
			conn.close();
		} catch (Exception e) {
			//do nothing
		}
	}
}