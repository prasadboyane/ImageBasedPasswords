package uk.ac.dundee.computing.aec.instagrim.servlets;
 
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/uploaddoc")
@MultipartConfig(maxFileSize = 161772155)    // upload file's size up to 16MB
public class FileUploadDBServlet3 extends HttpServlet {
     
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/test";
    private String dbUser = "root";
    private String dbPass = "";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
        String accno = request.getParameter("accno");
        /* String email = request.getParameter("email");
        String age = request.getParameter("age");
        String dob=request.getParameter("dob");
        String gender=request.getParameter("gender");
        String add=request.getParameter("address");
        String city=request.getParameter("city");
        String email=request.getParameter("email");
        String mob=request.getParameter("mobile");
        String username=request.getParameter("username");
        */
         
        InputStream inputStream = null; // input stream of the upload file
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");

        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();

        }
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = "INSERT INTO upload (accno, photo) values ( ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, accno);
            System.out.println("username in upload serv "+ accno);
            /*  statement.setString(2, email);
           statement.setString(4, age);
            statement.setString(5, dob);
            statement.setString(6, gender);
            statement.setString(7, add);
            statement.setString(8, city);
            statement.setString(9, email);
            statement.setString(10, mob);
            statement.setString(11, username);
            */
            
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(2, inputStream);
                
            }
           
 
            // sends the statement to the database server
            int row = statement.executeUpdate();
            
            System.out.println("File uploaded and saved into database");
            if (row > 0) {
                message = "File uploaded and saved into database";
               
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("accno", accno);
            request.setAttribute("Message", message);
    	    request.getRequestDispatcher("upload_sav2.jsp").forward(request,response);
    	    System.out.println("data send to set pass");
            // forwards to the message page
    	    //response.sendRedirect("Set_Pass.jsp");
    	    System.out.println("complete");
           // getServletContext().getRequestDispatcher("/Set_Pass.jsp").forward(request, response);
            
            
        }
    }
}