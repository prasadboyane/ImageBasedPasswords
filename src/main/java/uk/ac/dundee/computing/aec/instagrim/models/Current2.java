/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.models;

import com.datastax.driver.core.BoundStatement;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.Session;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import uk.ac.dundee.computing.aec.instagrim.lib.AeSimpleSHA1;
import uk.ac.dundee.computing.aec.instagrim.stores.Pic;
import uk.ac.dundee.computing.aec.instagrim.lib.Keyspaces;
import uk.ac.dundee.computing.aec.instagrim.stores.Request;



/**
 *
 * @author Administrator
 */
public class Current2 {
    Cluster cluster;
    public Current2(){
        
    }
    
    public boolean AddCust(String first_name, String last_name,String Oname,String DOB, String address,String email,String phone,String pan,String aadhar,String Occ,String TOB,String shoplic,String Too,String Joi,String Accno,String ROI,String DOAO ){
        Session session = cluster.connect("banknew");
        PreparedStatement ps = session.prepare("insert into current(first_name,last_name,Oname,DOB,address,email,phone,pan,aadhar,Occ,TOB,shoplic,Too,Joi,Accno,ROI,DOAO) Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
       
        BoundStatement boundStatement = new BoundStatement(ps);
        session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                		first_name,last_name,Oname,DOB,address,email,phone,pan, aadhar,Occ,TOB,shoplic,Too,Joi,Accno,ROI,DOAO));
        //We are assuming this always works.  Also a transaction would be good here !
        
        return true;
    }
    
    public boolean IsValidUser(String username, String Password){
        AeSimpleSHA1 sha1handler=  new AeSimpleSHA1();
        String EncodedPassword=null;
        try {
            EncodedPassword= sha1handler.SHA1(Password);
        }catch (UnsupportedEncodingException | NoSuchAlgorithmException et){
            System.out.println("Can't check your password");
            return false;
        }
        Session session = cluster.connect("banknew");
        PreparedStatement ps = session.prepare("select password from userprofiles where login =?");
        ResultSet rs = null;
        BoundStatement boundStatement = new BoundStatement(ps);
        rs = session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        username));
        if (rs.isExhausted()) {
            System.out.println("No Images returned");
            return false;
        } else {
            for (Row row : rs) {
               
                String StoredPass = row.getString("password");
                if (StoredPass.compareTo(EncodedPassword) == 0)
                    return true;
            }
        }
   
    
    return false;  
    }
       public void setCluster(Cluster cluster) {
        this.cluster = cluster;
    }

    
}
