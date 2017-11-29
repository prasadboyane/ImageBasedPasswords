/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.servlets;

import com.datastax.driver.core.Cluster;
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
import uk.ac.dundee.computing.aec.instagrim.models.Apply2;
import uk.ac.dundee.computing.aec.instagrim.lib.Keyspaces;


/**
 *
 * @author Administrator
 */
@WebServlet(name = "Apply1", urlPatterns = {"/Apply1"})
public class Apply1 extends HttpServlet {
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
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String mname=request.getParameter("mname");
        String gender=request.getParameter("gender");
        String dob=request.getParameter("dob");
        String email=request.getParameter("email");
        String adhar=request.getParameter("adhar");
        String pan=request.getParameter("pan");
        String mob=request.getParameter("mob");
        String city=request.getParameter("city");
        String state=request.getParameter("state");
        String addr=request.getParameter("addr");
        int pin=Integer.parseInt(request.getParameter("pin"));
        

       // String passport=request.getParameter("passport");
       // String adpdf=request.getParameter("adpdf");
      //  String panpdf=request.getParameter("panpdf");
       // String sign=request.getParameter("sign");
       
        
        Apply2 ap=new Apply2();
        ap.setCluster(cluster);
        ap.ApplyUser(fname, lname,mname,gender,dob,email,adhar,pan,mob,city,state,addr,pin);
        
        request.setAttribute("fname", fname);
        request.setAttribute("email", email);
        RequestDispatcher rd=request.getRequestDispatcher("upload.jsp");
    rd.forward(request,response);
        
    
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
