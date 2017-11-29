
 
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/PhotoServlet")
public class PhotoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	  
	    try {
	    	System.out.println("1");
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("2");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
	                System.out.println("conncectedd");
	                
	                String username=request.getParameter("username");
	              //  String username = (String)request.getAttribute("username");
	                
	                PreparedStatement ps=con.prepareStatement("select photo from contacts where username ='"+username+"'");
	       // ps.setLong(1, Long.valueOf(request.getParameter("username")));
	        System.out.println(username +" username in photoservlet");
	        ResultSet rs = ps.executeQuery();
	        if (rs.next()) {
	            response.getOutputStream().write(rs.getBytes("photo"));
	        }
	        con.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
}