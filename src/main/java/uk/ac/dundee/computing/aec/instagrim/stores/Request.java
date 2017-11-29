/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uk.ac.dundee.computing.aec.instagrim.stores;



/**
 *
 * @author sahadev
 */

//bean used to store user data when taken from database
public class Request {

    private int Acc=(Integer) null;
    private int Reqno =(Integer) null;
    private String DOR=null;
    private String TOA=null;
   
   
    
    public void UserProfile(){
    }
    
    public void setUsername(int ACC) {
        this.Acc =Acc;
    }
    
    public void setFirstName(int Reqno) {
        this.Reqno = Reqno;
    }
    
    public void setLastName(String DOR) {
        this.DOR = DOR;
    }
    
    public void setEmail(String TOA) {
        this.TOA = TOA;
    }
    
   
    
}

