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
import uk.ac.dundee.computing.aec.instagrim.models.Transfer1;
import uk.ac.dundee.computing.aec.instagrim.lib.Keyspaces;


/**
 *
 * @author Administrator
 */
@WebServlet(name = "Transfer", urlPatterns = {"/Transfer"})
public class Transfer extends HttpServlet {
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
      String FAcc=request.getParameter("FAcc");
      String Bal=request.getParameter("Bal");
      String TAcc=request.getParameter("TAcc");
      String Bname=request.getParameter("Bname");
      String Icode=request.getParameter("Icode");

      String DOT = request.getParameter("DOT");
        String TOF = request.getParameter("TOF");
        //int Damt = Integer.parseInt(request.getParameter("Damt"));
        String Remark =request.getParameter("Remark");
        String Tamt = request.getParameter("Tamt");
       String TotBal = request.getParameter("TotBal");
       String TranId = request.getParameter("TranId");
       
       
        Session session = cluster.connect("banknew");
        PreparedStatement ps = session.prepare("update savings set Bal='"+TotBal+"'where Accno='"+FAcc+"'");
        PreparedStatement ps1 = session.prepare("update savings set Bal='"+TotBal+"'where Accno='"+TAcc+"'");

        BoundStatement boundStatement = new BoundStatement(ps);
        session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                		));
        BoundStatement boundStatement1 = new BoundStatement(ps1);
        session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                		));
    
        Transfer1 wd=new Transfer1();
        wd.setCluster(cluster);
        wd.Transfered(FAcc,Bal,TAcc,Bname,Icode,DOT,TOF,Remark,Tamt,TotBal,TranId);
        
	response.sendRedirect("/Instagrim/Deposit.jsp");
        
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
