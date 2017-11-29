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
import uk.ac.dundee.computing.aec.instagrim.stores.UserProfile;



/**
 *
 * @author Administrator
 */
public class Apply1 {
    Cluster cluster;
    public Apply1(){
        
    }
    
    public boolean ApplyUser(String fname,String lname,String mname,String gender,String dob,String email,int adhar,String pan,String mob,String city,String state,String add,int pin,String passport,String adpdf,String panpdf,String sign){
        
        try {
               Session session = cluster.connect("banknew");
        PreparedStatement ps = session.prepare("insert into userprofiles (fname, lname,mname,gender,dob,email,adhar,pan,mob,city,state,add,pin,passport,adpdf,panpdf,sign) Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
       
        BoundStatement boundStatement = new BoundStatement(ps);
        session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                		fname, lname,mname,gender,dob,email,adhar,pan,mob,city,state,add,pin,passport,adpdf,panpdf,sign));
        //We are assuming this always works.  Also a transaction would be good here !
        
        return true;
        
        }catch (Exception et){
            System.out.println("Error at Apply1.java"+et);
            return false;
        }

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
