import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Set_Password extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
                String username=request.getParameter("username");
                String password=request.getParameter("password1");
                System.out.println(username+ " is username in set pass serv");
		
		try{
			System.out.println("1");
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("2");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                System.out.println("conncectedd");
		PreparedStatement ps=con.prepareStatement("update contacts SET password ="+password+" where username ='"+username+"'");
		

		
		int i=ps.executeUpdate();
		//if(i>0)
	    //request.setAttribute("username", username);
	    //request.getRequestDispatcher("disp_serv").forward(request,response);
		
		response.sendRedirect("Reg_Success.jsp");	
			
		}catch (Exception e2) {System.out.println(e2);}
		
		out.close();
	}

}
