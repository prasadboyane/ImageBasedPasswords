

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class DisplayServlet
 */
@WebServlet("/Pass1")
public class Pass1 extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String un=request.getParameter("username");
		String pass1=request.getParameter("password");
               // String pass=request.getParameter("password");
                
               
                System.out.println(un+"******");
                System.out.println(pass1+"**********");
                
                
                
		
		try{
			System.out.println("1");
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("2");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                System.out.println("conncectedd");
		Statement ps=con.createStatement();
//ps.setString(1,pass1);
String sql="select * from user_info where username='"+un+"' and password='"+pass1+"'";
ResultSet rs = ps.executeQuery(sql);

if (!rs.next() ) {
    System.out.println("no data");
    response.sendRedirect("Wrong.jsp");
} else
	response.sendRedirect("Home.jsp");	
		/*int i=ps.executeQuery(sql);
		if(i>0)
		
		
			
		*/
		}catch (Exception e2) {System.out.println(e2);}
		System.out.println("Wrong password!!");
		out.close();
	}

}
