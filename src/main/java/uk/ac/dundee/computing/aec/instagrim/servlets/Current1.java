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
import uk.ac.dundee.computing.aec.instagrim.models.Current2;
import uk.ac.dundee.computing.aec.instagrim.lib.Keyspaces;


/**
 *
 * @author Administrator
 */
@WebServlet(name = "Current1", urlPatterns = {"/Current1"})
public class Current1 extends HttpServlet {
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
        
        String first_name = request.getParameter("firstname");
        String last_name = request.getParameter("lastname");
        String Oname = request.getParameter("Oname");
        String DOB = request.getParameter("DOB");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String  phone = request.getParameter("phone");
        String pan = request.getParameter("pan");
        String aadhar = request.getParameter("aadhar");
        String Occ= request.getParameter("Occ");
        String TOB= request.getParameter("TOB");
        String shoplic = request.getParameter("ShopLic");
        String Too = request.getParameter("Too");
        String Joi= request.getParameter("Joi");
        String Accno = request.getParameter("Accno");
        String ROI = request.getParameter("ROI");
        String DOAO= request.getParameter("DOAO");
        
    
      Current2 sa=new Current2 ();
        sa.setCluster(cluster);
        sa.AddCust(first_name,last_name,Oname,DOB,address,email,phone,pan, aadhar,Occ,TOB,shoplic,Too,Joi,Accno,ROI,DOAO);
        
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
