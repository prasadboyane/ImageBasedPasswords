

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class DisplayServlet
 */
@WebServlet("/DisplayServlet1")
public class Disp extends HttpServlet {
    private static final long serialVersionUID = 1L;
    Connection connection = null;
    //login is the name of the database
    String connectionURL = "jdbc:mysql://localhost:3306/test";
     
    ResultSet rs = null;
     
    String un;
    
    PreparedStatement psmnt = null;
     
    InputStream sImage;
    

    public void init() throws ServletException {

    }

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Disp() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      
        // Check if ID is supplied to the request.
     
        try{
        	//String un="";
        	
        	String un=request.getParameter("username");
        	
        	
        		System.out.println(un+" ELSE un");
        	System.out.println("username in DispServ "+un);
        	 Class.forName("com.mysql.jdbc.Driver").newInstance();
        	    connection = DriverManager.getConnection(connectionURL, "root", "");
        	    //Student is the table name
        	    psmnt = connection.prepareStatement("select photo from contacts where username ='"+un+"'");
                String sql1= "select photo from contacts where username ='"+un+"'";
                ResultSet rs = psmnt.executeQuery(sql1);

        	    //In id "6" i have the image.
        	    psmnt.setString(1, un);
        	    if(rs.next())
        	    {
        	    byte[] bytearray = new byte[1048576];
        	    int size=0;
        	    sImage = rs.getBinaryStream(1);
        	    response.reset();
        	    response.setContentType("image/jpeg");
        	    while((size=sImage.read(bytearray))!= -1 )
        	    {
        	    	
        	    response.getOutputStream().write(bytearray,0,size);
        	    }
        	    response.flushBuffer();
        	    sImage.close();
        	    rs.close();
                }
            
        	
        	
        	
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}