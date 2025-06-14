package UserPackage;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import BookShopPackage.BookModel;
import BookShopPackage.DBConnection;
import feedback.feedbackModel;

public class UserController {
   //Connect DB
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    
  //Insert Data Function
    public static boolean insertdata (String name, String gmail, String password, String phone) {
       
     boolean isSuccess = false;
     try {
      //DB CONNECTION CALL
      con=DBConnection.getConnection();
      stmt=con.createStatement();
      //SQL QUERY
      String sql= "insert into user values(0,'"+name+"','"+gmail+"','"+password+"','"+phone+"')";
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
    
    //login validate
    public static List<UserModel> loginValidate (String gmail, String password){
      
      ArrayList<UserModel> user = new ArrayList<>();
      try {
            //DB CONNECTION CALL
            con=DBConnection.getConnection();
            stmt=con.createStatement();
            
            String sql ="select * from user where gmail='" +gmail+"' and password= '"+password+"'";
            
            rs = stmt.executeQuery(sql);
            
            if(rs.next()) {
              int id =rs.getInt(1);
              String name =rs.getString(2);
              String email =rs.getString(3);
              String pass =rs.getString(4);
              String phone=rs.getString(5);
              
              UserModel u =new UserModel(id,name,email,pass,phone);
              user.add(u);
              
              
            }
            
      }catch(Exception e) {
        e.printStackTrace();
      }
      return user;
      
    }

 //GetById
    
    public static List<UserModel> getById (String Id){
     int convertedID = Integer.parseInt(Id);
     
     ArrayList <UserModel> user = new ArrayList<>();
     
     try {
     //DBConnection
      con=DBConnection.getConnection();
      stmt=con.createStatement();
      
      //Query
      String sql = "select * from user where id '"+convertedID+"'";
      
      rs = stmt.executeQuery(sql);
      
      while(rs.next()) {
      int id = rs.getInt(1);
      String name = rs.getString(2);
      String gmail = rs.getString(3);
      String password= rs.getString(4);
      String phone = rs.getString(5);
   
       
       
       UserModel u = new UserModel(id,name,gmail,password,phone);
       user.add(u);
      }
      
     }
     catch(Exception e) {
      e.printStackTrace();
     }
     return user;
     
    
    }
    
    
    //GetAll Data
    public static List<UserModel> getAlluser(){
     ArrayList <UserModel> Feedbacks = new ArrayList<>();
     try {
      //DBConnection
       con=DBConnection.getConnection();
       stmt=con.createStatement();
       
       //Query
       String sql = "select * from user";
       
       rs = stmt.executeQuery(sql);
       
       while(rs.next()) {
        int id = rs.getInt(1);
        String name =rs.getString(2);
        String email =rs.getString(3);
        String password =rs.getString(4);
        String phone =rs.getString(5);
        
        UserModel u = new UserModel(id,name,email,password,phone);
        Feedbacks.add(u);
       }
       
      }
      catch(Exception e) {
       e.printStackTrace();
      }
      return Feedbacks;
    }
    
    
      
    //User Profile Update
    
    public static boolean updateprofile(String id,String name ,String gmail ,String password,String phone) {
     try {
      //DBConnection
      con=DBConnection.getConnection();
      stmt=con.createStatement();
      
      //SQL Query
      String sql = "update user set name='"+name+"',gmail='"+gmail+"',password='"+password+"',phone='"+phone+"'"
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
    
    
    // Delete Data
    public static boolean deleteAccount(String id) {
     int convID = Integer.parseInt(id);
     try {
      //DBConnection
      con=DBConnection.getConnection();
      stmt=con.createStatement();
      String sql = "delete from user where id='"+convID+"'";
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