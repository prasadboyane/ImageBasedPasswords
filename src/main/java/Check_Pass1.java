import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;




public class Check_Pass1 extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String un=request.getParameter("username");
		String pass1=request.getParameter("password1");
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
String sql="select * from contacts where username='"+un+"' and password='"+pass1+"'";
ResultSet rs = ps.executeQuery(sql);

if (!rs.next() ) {
    System.out.println("no data");
    response.sendRedirect("Wrong.jsp");
} else
	
	request.setAttribute("username", un);
	request.getRequestDispatcher("cust_login.jsp").forward(request,response);
	//response.sendRedirect("Home.jsp");	
		/*int i=ps.executeQuery(sql);
		if(i>0)
		
		
			
		*/
		}catch (Exception e2) {System.out.println(e2);}
		System.out.println("Correct password!!");
		out.close();
	}

}
