/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.servlets;

import com.datastax.driver.core.BoundStatement;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.Session;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts;
import uk.ac.dundee.computing.aec.instagrim.models.Deposit1;
import uk.ac.dundee.computing.aec.instagrim.lib.Keyspaces;


/**
 *
 * @author Administrator
 */
@WebServlet(name = "Deposit", urlPatterns = {"/Deposit"})
public class Deposit extends HttpServlet {
    Cluster cluster=null;
    public void init(ServletConfig config) throws ServletException {
        // TODO Auto-generated method stub
        cluster = CassandraHosts.getCluster();
    }




    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      String Acc=request.getParameter("Acc");
      //  int Bal=Integer.parseInt(request.getParameter("Bal"));
        String Bal=request.getParameter("Bal");
        String DOD = request.getParameter("DOD");
        String Part = request.getParameter("Part");
        //int Damt = Integer.parseInt(request.getParameter("Damt"));
        String Damt =request.getParameter("Damt");
       // int TotBal = Integer.parseInt(request.getParameter("TotBal"));
       String TotBal = request.getParameter("TotBal");
       String TranId = request.getParameter("TranId");
       
       
        Session session = cluster.connect("banknew");
        PreparedStatement ps = session.prepare("update savings set Bal='"+TotBal+"'where Accno='"+Acc+"'");
        
        BoundStatement boundStatement = new BoundStatement(ps);
        session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                		));
       
    
       Deposit1 wd=new Deposit1();
        wd.setCluster(cluster);
        wd.Deposited(Acc,Bal,DOD,Part,Damt,TotBal,TranId);
        
	response.sendRedirect("/Instagrim/Index2.jsp");
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
