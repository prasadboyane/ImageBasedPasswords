import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Login extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String un=request.getParameter("username");
		
		try{
			System.out.println("1");
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("2");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
		//PreparedStatement ps=con.prepareStatement("select f_name from user_info where username = '"+un+"'");
		//ps.setString(1,n);
		System.out.println(un);
		
		//int i=ps.executeUpdate();
		//if(i>0)
		request.setAttribute("username", un);
		System.out.print("successfully img retrieved...");
		request.getRequestDispatcher("Login_Pass.jsp").forward(request,response);
			
		}catch (Exception e2) {System.out.println(e2);}
		
		out.close();
	}

}
