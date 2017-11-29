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
@WebServlet("/state")
public class State extends HttpServlet {
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
        String bal = request.getParameter("bal");
        String damt = request.getParameter("damt");
        String dod = request.getParameter("dod");
        String part = request.getParameter("part");
        String totbal = request.getParameter("totbal");
        String tranid = request.getParameter("tranid"); 


        try {
        	Session session = cluster.connect("banknew");
            PreparedStatement ps = session.prepare("SELECT * FROM deposit where acc = ? ALLOW FILTERING");
           
            ResultSet rs = null;

            BoundStatement boundStatement = new BoundStatement(ps);
            rs = session.execute( // this is where the query is executed
                     boundStatement.bind( // here you are binding the 'boundStatement'
                           acc )); 
            if (rs.isExhausted()) {
            	
            	System.out.println("No data found");
            	
            } else {
                for (Row row : rs) {
                	
                	acc=row.getString("acc");
                	bal=row.getString("bal");
                	damt=row.getString("damt");
                	dod=row.getString("dod");
                	part=row.getString("part");
                	totbal=row.getString("totbal");
                	tranid=row.getString("tranid");
                	
                	
                	//((ServletRequest) session).setAttribute("Acc", Acc);
                //	((ServletRequest) session).setAttribute("Bal", Bal);
                //	RequestDispatcher rd=request.getRequestDispatcher("/Deposit.jsp");
            	//    rd.forward(request,response);

                    //We are assuming this always works.  Also a transaction would be good here !
            }
            
        }
         request.setAttribute("acc", acc);   
         request.setAttribute("bal", bal); 
         request.setAttribute("damt", damt);   
         request.setAttribute("dod", dod);  
         request.setAttribute("part", part);   
         request.setAttribute("totbal", totbal); 
         request.setAttribute("tranid", tranid);   

         
         request.getRequestDispatcher("/stat_v.jsp").forward(request, response);
         
        }
        
        catch (Exception et){
            System.out.println("Can't execute");
		
		// TODO Auto-generated method stub
	}

}
}
