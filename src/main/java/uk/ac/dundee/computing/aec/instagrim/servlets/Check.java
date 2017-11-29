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
@WebServlet("/Check1")
public class Check extends HttpServlet {
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
        String acc = request.getParameter("acc");
        String tor = request.getParameter("tor");
        String comm = request.getParameter("comm");


        try {
        	Session session = cluster.connect("banknew");
            PreparedStatement ps = session.prepare("SELECT acc,tor,comm FROM request where acc=? ALLOW FILTERING");
           
            ResultSet rs = null;

            BoundStatement boundStatement = new BoundStatement(ps);
            rs = session.execute( // this is where the query is executed
                     boundStatement.bind( // here you are binding the 'boundStatement'
                           acc  )); 
            if (rs.isExhausted()) {
            	
            	System.out.println("No data found");
            	
            } else {
                for (Row row : rs) {
                	
                	acc=row.getString("acc");
                	tor=row.getString("tor");
                	comm=row.getString("comm");

                	
                	
                	//((ServletRequest) session).setAttribute("Acc", Acc);
                //	((ServletRequest) session).setAttribute("Bal", Bal);
                //	RequestDispatcher rd=request.getRequestDispatcher("/Deposit.jsp");
            	//    rd.forward(request,response);

                    //We are assuming this always works.  Also a transaction would be good here !
            }
            
        }
         request.setAttribute("acc", acc);   
         request.setAttribute("tor", tor);  
         request.setAttribute("comm", comm);   

         
         request.getRequestDispatcher("/vrequ.jsp").forward(request, response);
         
        }
        
        catch (Exception et){
            System.out.println("Can't execute");
		
		// TODO Auto-generated method stub
	}

}
}
