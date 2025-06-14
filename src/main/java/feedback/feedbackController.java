package feedback;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import BookShopPackage.BookModel;

public class feedbackController {
	
	 //Connect DB
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    
	   //feedback insert
	 public static boolean insertdata (String name, String email, String rating, String feedback) {
	        
	        boolean isSuccess = false;
	        try {
	         //DB CONNECTION CALL
	         con=DBConnection.getConnection();
	         stmt=con.createStatement();
	         //SQL QUERY
	         String sql= "insert into feedback values(0,'"+name+"','"+email+"','"+rating+"','"+feedback+"')";
	         int rs = stmt.executeUpdate(sql);
	         if(rs>0) {
	          isSuccess = true;
	         }
	         else {
	          isSuccess = false;
	         }
	         }catch(Exception e) 
	        {
	          e.printStackTrace();
	         }
	        return isSuccess;
	        }
	 
	//GetById
	    public static List<feedbackModel> getById (String Id){
	     int convertedID = Integer.parseInt(Id);
	     
	     ArrayList <feedbackModel> Feedback = new ArrayList<>();
	     
	     try {
	     //DBConnection
	      con=DBConnection.getConnection();
	      stmt=con.createStatement();
	      
	      //Query
	      String sql = "select * from feedback where id '"+convertedID+"'";
	      
	      rs = stmt.executeQuery(sql);
	      
	      while(rs.next()) {
	    	  int id = rs.getInt(1);
		        String name =rs.getString(2);
		        String email =rs.getString(3);
		        String rating =rs.getString(4);
		        String feedback =rs.getString(5);
		       
	       feedbackModel Fb = new feedbackModel(id,name,email,rating,feedback);
	       Feedback.add(Fb);
	      }
	      
	     }
	     catch(Exception e) {
	      e.printStackTrace();
	     }
	     return Feedback;
	    }
	 
	 
	  //GetAll Data
	    public static List<feedbackModel> getAllfeedback(){
	     ArrayList <feedbackModel> Feedbacks = new ArrayList<>();
	     try {
	      //DBConnection
	       con=DBConnection.getConnection();
	       stmt=con.createStatement();
	       
	       //Query
	       String sql = "select * from feedback";
	       
	       rs = stmt.executeQuery(sql);
	       
	       while(rs.next()) {
	        int id = rs.getInt(1);
	        String name =rs.getString(2);
	        String email =rs.getString(3);
	        String rating =rs.getString(4);
	        String feedback =rs.getString(5);
	        
	        feedbackModel Fb = new feedbackModel(id,name,email,rating,feedback);
	        Feedbacks.add(Fb);
	       }
	       
	      }
	      catch(Exception e) {
	       e.printStackTrace();
	      }
	      return Feedbacks;
	    }
	    
	 //Update feedback Data
	 public static boolean updatedata(String id,String name ,String email ,String rating,String feedback) {
	 try {
	  //DBConnection
	  con=DBConnection.getConnection();
	  stmt=con.createStatement();
	  
	  //SQL Query
	  String sql = "update feedback set name='"+name+"',email='"+email+"',rating='"+rating+"',feedback='"+feedback+"'"
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
	   String sql = "delete from feedback where id='"+convID+"'";
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
