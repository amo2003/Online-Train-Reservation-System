package admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import BookShopPackage.DBConnection;
import UserPackage.UserModel;
import feedback.feedbackModel;

public class adminController {
    
    // Connection DB
 private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Insert Data Function
    public static boolean insertdata(String name, String gmail, String password, String phone) {
        boolean isSuccess = false;
        try {
            con = DBConnection.getConnection();
            stmt = con.createStatement();
            String sql = "INSERT INTO admin VALUES (0, '" + name + "', '" + gmail + "', '" + password + "', '" + phone + "')";
            int rs = stmt.executeUpdate(sql);
            isSuccess = rs > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }
    
    // Login Validate Function
    public static List<adminModel> loginValidate(String gmail, String password) {
        ArrayList<adminModel> admin = new ArrayList<>();
        try {
            con = DBConnection.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM admin WHERE gmail = '" + gmail + "' AND password = '" + password + "'";
            rs = stmt.executeQuery(sql); // FIXED: executeQuery instead of executeUpdate

            while (rs.next()) {
            	 int id =rs.getInt(1);
                 String name =rs.getString(2);
                 String email =rs.getString(3);
                 String pass =rs.getString(4);
                 String phone=rs.getString(5);
                 
                 adminModel u =new adminModel(id,name,email,pass,phone);
                 admin.add(u);
                 
                 
               }
               
         }catch(Exception e) {
           e.printStackTrace();
         }
         return admin;
         
       }
 
    //driver insert
    
       // Insert Data Function
       public static boolean insertdata(String name, String phone, String email) {
           boolean isSuccess = false;
           try {
               con = DBConnection.getConnection();
               stmt = con.createStatement();
               String sql = "INSERT INTO driver VALUES (0, '" + name + "', '" + phone + "', '" + email + "')";
               int rs = stmt.executeUpdate(sql);
               isSuccess = rs > 0;
           } catch (Exception e) {
               e.printStackTrace();
           }
           return isSuccess;
       }
       
     //GetById
	    public static List<driverModel> getById (String Id){
	     int convertedID = Integer.parseInt(Id);
	     
	     ArrayList <driverModel> Driver = new ArrayList<>();
	     
	     try {
	     //DBConnection
	      con=DBConnection.getConnection();
	      stmt=con.createStatement();
	      
	      //Query
	      String sql = "select * from driver where id '"+convertedID+"'";
	      
	      rs = stmt.executeQuery(sql);
	      
	      while(rs.next()) {
	    	  int id = rs.getInt(1);
		        String name =rs.getString(2);
		        String phone =rs.getString(3);
		        String email =rs.getString(4);
		       
		        driverModel D = new driverModel(id,name,phone,email);
		        Driver.add(D);
	      }
	      
	     }
	     catch(Exception e) {
	      e.printStackTrace();
	     }
	     return Driver;
	    }
	 
	 
	  //GetAll Data
	    public static List<driverModel> getAlldriver(){
	     ArrayList <driverModel> Drivers = new ArrayList<>();
	     try {
	      //DBConnection
	       con=DBConnection.getConnection();
	       stmt=con.createStatement();
	       
	       //Query
	       String sql = "select * from driver";
	       
	       rs = stmt.executeQuery(sql);
	       
	       while(rs.next()) {
	        int id = rs.getInt(1);
	        String name =rs.getString(2);
	        String phone =rs.getString(3);
	        String email =rs.getString(4);
	        
	        driverModel D = new driverModel(id,name,phone,email);
	        Drivers.add(D);
	       }
	       
	      }
	      catch(Exception e) {
	       e.printStackTrace();
	      }
	      return Drivers;
	    }
	    
	    
	    //Update driver Data
		 public static boolean updatedata(String id,String name ,String phone ,String email) {
		 try {
		  //DBConnection
		  con=DBConnection.getConnection();
		  stmt=con.createStatement();
		  
		  //SQL Query
		  String sql = "update driver set name='"+name+"',phone='"+phone+"',email='"+email+"'"
		                  +"where id='"+id+"'";
		  
		  int rs = stmt.executeUpdate(sql);
		  if(rs>0) {
		   isSuccess = true;
		  }
		  else {
		   isSuccess = false;
		  }
		  
		  
		 } 
		  catch(Exception e) {
		   e.printStackTrace();
		   
		  }
		 return isSuccess;
		 }
		 
		 
		 
		 // Delete feedback Data
		 public static boolean deletedata(String id) {
		  int convID = Integer.parseInt(id);
		  try {
		   //DBConnection
		   con=DBConnection.getConnection();
		   stmt=con.createStatement();
		   String sql = "delete from driver where id='"+convID+"'";
		 int rs = stmt.executeUpdate(sql);
		 
		 if(rs > 0) {
		  isSuccess = true;
		 }
		 else {
		  isSuccess = false;
		 }
		 
		  }
		  catch(Exception e) {
		   e.printStackTrace();
		  }
		  return isSuccess;
		  
		 }
		 
		
}