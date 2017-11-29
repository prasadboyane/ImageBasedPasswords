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
public class UserProfile {

    private String username=null;
    private String ecode=null;
    private String first_Name=null;
    private String last_Name=null;
    private String icode=null;
    private String gender=null;
    private String mobile=null;
    private String city=null;
    private String email=null;
    private String address=null;
   
    
    public void UserProfile(){
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    
    public void setFirstName(String first_Name) {
        this.first_Name = first_Name;
    }
    
    public void setLastName(String last_Name) {
        this.last_Name = last_Name;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public void setecode(String ecode) {
        this.ecode = ecode;
    }
    
    public void setmobile(String mobile) {
        this.mobile = mobile;
    }
    
    public void seticode(String icode) {
        this.icode = icode;
    }
    
    public void setgender(String gender) {
        this.gender = gender;
    }
    public void setcity(String city) {
        this.city = city;
    }
    
    public void setaddress(String address) {
        this.address = address;
    }
    
    public void setJoinDate(String mobile) {
        this.mobile = mobile;
    }
    public String getUsername() {
        return username;
    }
    
    public String getFirstName() {
        return first_Name;
    }
    public String getLastName() {
        return last_Name;
    }
    public String getEmail() {
        return email;
    }
    
    public String getcity() {
        return city;
    }
    
    public String ecode() {
        return ecode;
    }
    public String geticode() {
        return icode;
    }
    public String getmobile() {
        return mobile;
    }
    public String getgender() {
        return gender;
    }
    public String getaddress() {
        return address;
    }
    
}

