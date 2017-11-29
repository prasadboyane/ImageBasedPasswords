
 
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
 
@WebServlet("/DocPic")
public class DocPic extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	  
	    try {
	    	System.out.println("1");
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("2");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
	                System.out.println("conncectedd");
	                
	                String accno=request.getParameter("accno");
	              //  String username = (String)request.getAttribute("username");
	                
	                PreparedStatement ps=con.prepareStatement("select photo from upload where accno ='"+accno+"'");
	       // ps.setLong(1, Long.valueOf(request.getParameter("username")));
	        ResultSet rs = ps.executeQuery();
	        if (rs.next()) {
	            response.getOutputStream().write(rs.getBytes("photo"));
	            request.setAttribute("accno", accno);   
	            
	            request.getRequestDispatcher("/grid.jsp").forward(request, response);
	            
	        }
	        con.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
}