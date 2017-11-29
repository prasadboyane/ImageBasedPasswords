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
import uk.ac.dundee.computing.aec.instagrim.models.Sav;
import uk.ac.dundee.computing.aec.instagrim.lib.Keyspaces;


/**
 *
 * @author Administrator
 */
@WebServlet(name = "Savings", urlPatterns = {"/Savings"})
public class Savings extends HttpServlet {
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
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String first_name = request.getParameter("firstname");
        String last_name = request.getParameter("lastname");
        String DOB = request.getParameter("DOB");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String  phone = request.getParameter("phone");
        String pan = request.getParameter("pan");
        String aadhar = request.getParameter("aadhar");
        String Occ= request.getParameter("Occ");
        String Too = request.getParameter("TOA");
        String Joi= request.getParameter("JOI");
        String Accno = request.getParameter("Accno");
        String ROI = request.getParameter("ROI");
        String DOAO= request.getParameter("DOAO");
        String Bal= request.getParameter("Bal");
    
        Sav us=new Sav();
        us.setCluster(cluster);
        us.RegisterUser(username, password,first_name,last_name,DOB,address,email,phone,pan, aadhar,Occ,Too,Joi,Accno,ROI,DOAO,Bal);
        request.setAttribute("Accno", Accno);   
        request.getRequestDispatcher("/upload_sav.jsp").forward(request, response);

        
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
