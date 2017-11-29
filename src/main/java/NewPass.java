import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@WebServlet("/NewPass")
public class NewPass extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String un=request.getParameter("username");
                String pass=request.getParameter("password");
                String pass1=request.getParameter("password1");
               
                
		
		try{
			System.out.println("1");
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("2");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                System.out.println("conncectedd");
		PreparedStatement ps=con.prepareStatement("update contacts SET password='"+pass1+"' where username='"+un+"'");
//ps.setString(1,pass1);


		int i=ps.executeUpdate();
		if(i>0)
			
        System.out.println("4");

         //Display values
        request.setAttribute("password", pass1);
        request.setAttribute("username", un);
		response.sendRedirect("PassO.jsp");
		
			
		}catch (Exception e2) {System.out.println(e2);}
		
		out.close();
	}

}
