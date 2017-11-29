package uk.ac.dundee.computing.aec.instagrim.servlets;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.datastax.driver.core.BoundStatement;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.Session;

import uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts;
import uk.ac.dundee.computing.aec.instagrim.stores.Pic;

/**
 * Servlet implementation class DepRet
 */
@WebServlet("/savpass")
public class Savpass extends HttpServlet {
	Cluster cluster=null;
    public void init(ServletConfig config) throws ServletException {
        // TODO Auto-generated method stub
        cluster = CassandraHosts.getCluster();
    }


	/**

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String pan = request.getParameter("pan");
        String adhar = request.getParameter("adhar");
        String email = request.getParameter("email");

        


        try {
        	Session session = cluster.connect("banknew");
            PreparedStatement ps = session.prepare("SELECT fname,lname,pan,adhar,email FROM info where fname =? ALLOW FILTERING");
           
            ResultSet rs = null;

            BoundStatement boundStatement = new BoundStatement(ps);
            rs = session.execute( // this is where the query is executed
                     boundStatement.bind( // here you are binding the 'boundStatement'
                           fname  )); 
            if (rs.isExhausted()) {
            	
            	System.out.println("No data found");
            	
            } else {
                for (Row row : rs) {
                	
                	fname=row.getString("fname");
                	lname=row.getString("lname");
                	pan=row.getString("pan");
                	adhar=row.getString("adhar");
                	email=row.getString("email");

                	
                	
                	
                	//((ServletRequest) session).setAttribute("Acc", Acc);
                //	((ServletRequest) session).setAttribute("Bal", Bal);
                //	RequestDispatcher rd=request.getRequestDispatcher("/Deposit.jsp");
            	//    rd.forward(request,response);

                    //We are assuming this always works.  Also a transaction would be good here !
            }
            
        }
         request.setAttribute("fname", fname);   
         request.setAttribute("lname", lname);   
         request.setAttribute("pan", pan);   
         request.setAttribute("adhar", adhar); 
         request.setAttribute("email", email); 

         
         request.getRequestDispatcher("/Savings1.jsp").forward(request, response);
         
        }
        
        catch (Exception et){
            System.out.println("Can't execute");
		
		// TODO Auto-generated method stub
	}

}
}
