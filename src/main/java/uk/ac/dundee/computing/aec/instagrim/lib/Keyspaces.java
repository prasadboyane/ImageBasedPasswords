package uk.ac.dundee.computing.aec.instagrim.lib;

import java.util.ArrayList;
import java.util.List;
import java.text.SimpleDateFormat;  
import com.datastax.driver.core.*;

public final class Keyspaces {

    public Keyspaces() {

    }

    public static void SetUpKeySpaces(Cluster c) {
        try {
           // Add some keyspaces here
            String createkeyspace = "create keyspace if not exists banknew  WITH replication = {'class':'SimpleStrategy', 'replication_factor':1}";
            String CreatePicTable = "CREATE TABLE if not exists banknew.Pics ("
                    + " user varchar,"
                    + " picid uuid, "
                    + " interaction_time timestamp,"
                    + " title varchar,"
                    + " image blob,"
                    + " thumb blob,"
                    + " processed blob,"
                    + " imagelength int,"
                    + " thumblength int,"
                    + "  processedlength int,"
                    + " type  varchar,"
                    + " name  varchar,"
                    + " PRIMARY KEY (picid)"
                    + ")"; 
            String Createuserpiclist = "CREATE TABLE if not exists banknew.userpiclist (\n"
                    + "picid uuid,\n"
                    + "user varchar,\n"
                    + "pic_added timestamp,\n"
                    + "PRIMARY KEY (user,pic_added)\n"
                    + ") WITH CLUSTERING ORDER BY (pic_added desc);";
            String savings = "CREATE TABLE if not exists banknew.savings (\n"
                    + "      login text ,\n"
                    + "     password text,\n"
                    + "      first_name text,\n"
                    + "     last_name text,\n"
                   + "      DOB text,\n"
                   + "      address text,\n"
                   + "      email text,\n"
                   + "      phone text,\n"
                   + "      pan text,\n"
                   + "      aadhar text,\n"
                   + "      Occ text,\n"
                   + "      TOA text,\n"
                   + "      JOI text,\n"
                   + "      Accno text PRIMARY KEY,\n"
                   + "      ROI text,\n"
                   + "      DOAO text,\n"
                   + "      Bal text,\n"
                   + "  );";
            /* String Createcust = "CREATE TABLE if not exists banknew.cust ("
                    + " fname text,"
                    + " mname text,"
                    + " lname text,"
                    + " gender text,"
                    + " dob date,"
                    + " email  text PRIMARY KEY,"
                    + " adhar int,"
                    + " pan varchar,"
                    + " mob text,"
                    + " city text,"
                    + " state  text,"
                    + " pin int,"
                    + ")";  
           String Createuserpiclist = "CREATE TABLE if not exists instagrim.userpiclist (\n"
                    + "picid uuid,\n"
                    + "user varchar,\n"
                    + "pic_added timestamp,\n"
                    + "PRIMARY KEY (user,pic_added)\n"
                    + ") WITH CLUSTERING ORDER BY (pic_added desc);"; */
            String info = "CREATE TABLE if not exists banknew.info (\n"
                    + "      fname text,\n"
                    + "      mname text,\n"
                    + "      lname text,\n"
                    + "      gender text,\n"
                    + "      dob text,\n"
                    + "      email text PRIMARY KEY,\n"
                    + "      adhar text,\n"
                    + "      pan text,\n"
                    + "      mob text,\n"
                    + "      city text,\n"
                    + "      state text,\n"
                    + "      addr text,\n"
                    + "      pin int\n"
                    + "  );";  
            String CreateUserProfile = "CREATE TABLE if not exists banknew.userprofiles (\n"
                    + "      login text PRIMARY KEY,\n"
                     + "     password text,\n"
                    + "      first_name text,\n"
                    + "      last_name text,\n"
                    + "      ecode text,\n"
                    + "      icode text\n"
                    + "  );";
            String CreateCur = "CREATE TABLE if not exists banknew.current (\n"
                    + "      first_name text,\n"
                     + "     last_name text,\n"
                     + "     Oname text,\n"
                    + "      DOB text,\n"
                    + "      address text,\n"
                    + "      email text,\n"
                    + "      phone text,\n"
                    + "      pan text,\n"
                    + "      aadhar text,\n"
                    + "      Occ text,\n"
                    + "      TOB text,\n"
                    + "     shoplic text,\n"
                    + "     Too text,\n"
                    + "      Joi text,\n"
                    + "      Accno text PRIMARY KEY,\n"
                    + "      ROI text,\n"
                    + "      DOAO text,\n"
                     + "  );";
            String Withdraw = "CREATE TABLE if not exists banknew.withdraw (\n"
                    + "      Acc text ,\n"
                     + "     Bal text ,\n"
                    + "      DOW text,\n"
                    + "      Part text,\n"
                    + "      Wamt text,\n"
                    + "      TotBal text,\n"
                    + "      TranId text PRIMARY KEY,\n"
                     + "  );";
            String Deposit = "CREATE TABLE if not exists banknew.deposit (\n"
                    + "      Acc text ,\n"
                     + "     Bal text ,\n"
                    + "      DOD text,\n"
                    + "      Part text,\n"
                    + "      Damt text,\n"
                    + "      Totbal text,\n"
                    + "      TranId text PRIMARY KEY,\n"
                     + "  );";
            String CreateRequest = "CREATE TABLE if not exists banknew.request (\n"
                    + "      Acc text ,\n"
                     + "     Reqno text PRIMARY KEY,\n"
                    + "      DOR text,\n"
                    + "      TOR text,\n"
                    + "      Comm text,\n"
                     + "  );";
          
            String Transfer = "CREATE TABLE if not exists banknew.transfer (\n"
                    + "      FAcc text ,\n"
                     + "     Bal text ,\n"
                     + "     TAcc text ,\n"
                     + "      Bname text,\n"
                    + "      Icode text,\n"
                    + "      DOT text,\n"
                    + "      TOF text,\n"
                    + "     Remark text ,\n"
                    + "     Tamt text ,\n"
                    + "     TotBal text ,\n"
                    + "      TranId text PRIMARY KEY,\n"
                     + "  );";
            Session session = c.connect();
            try {
                PreparedStatement statement = session
                        .prepare(createkeyspace);
                BoundStatement boundStatement = new BoundStatement(
                        statement);
                ResultSet rs = session
                        .execute(boundStatement);
                System.out.println("created bank ");
            } catch (Exception et) {
                System.out.println("Can't create bank " + et);
            }

            //now add some column families 
     /*       System.out.println("" + CreatePicTable);

            try {
                SimpleStatement cqlQuery = new SimpleStatement(CreatePicTable);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create tweet table " + et);
            }
            System.out.println("" + Createuserpiclist);

            try {
                SimpleStatement cqlQuery = new SimpleStatement(Createuserpiclist);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create user pic list table " + et);
            } 
            System.out.println("" + info);
            try {
                SimpleStatement cqlQuery = new SimpleStatement(info);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create Address type " + et);
            } */
            System.out.println("" + savings);
            try {
                SimpleStatement cqlQuery = new SimpleStatement(savings);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create Address Profile " + et);
            } 
            System.out.println("" + info);
            try {
                SimpleStatement cqlQuery = new SimpleStatement(info);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create Address Profile " + et);
            } 
            System.out.println("" + CreateUserProfile);
            try {
                SimpleStatement cqlQuery = new SimpleStatement(CreateUserProfile);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create Address Profile " + et);
            } 
            System.out.println("" + CreateRequest);
            try {
                SimpleStatement cqlQuery = new SimpleStatement(CreateRequest);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create Address Profile " + et);
            } 
            
            try {
                SimpleStatement cqlQuery = new SimpleStatement(CreateCur);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create Address Profile " + et);
            } 
            try {
                SimpleStatement cqlQuery = new SimpleStatement(Withdraw);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create Address Profile " + et);
            } 
            try {
                SimpleStatement cqlQuery = new SimpleStatement(Deposit);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create Address Profile " + et);
            } 
            try {
                SimpleStatement cqlQuery = new SimpleStatement(Transfer);
                session.execute(cqlQuery);
            } catch (Exception et) {
                System.out.println("Can't create Address Profile " + et);
            } 
           
            session.close();

        } catch (Exception et) {
            System.out.println("Other keyspace or coulm definition error" + et);
        }

    }
}

           