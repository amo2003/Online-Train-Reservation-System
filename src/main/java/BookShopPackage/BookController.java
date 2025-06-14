package BookShopPackage;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import feedback.DBConnection;
import feedback.feedbackModel;

public class BookController {
   //Connect DB
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    
    //Insert Data Function
    public static boolean insertdata (String name, String price, String category, String quantity, String description) {
       
     boolean isSuccess = false;
     try {
      //DB CONNECTION CALL
      con=DBConnection.getConnection();
      stmt=con.createStatement();
      //SQL QUERY
      String sql= "insert into book values(0,'"+name+"','"+price+"','"+category+"','"+quantity+"','"+description+"')";
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
    public static List<BookModel> getById (String Id){
     int convertID = Integer.parseInt(Id);
     
     ArrayList <BookModel> book = new ArrayList<>();
     
     try {
     //DBConnection
      con=DBConnection.getConnection();
      stmt=con.createStatement();
      
      //Query
      String sql = "select * from book where id '"+convertID+"'";
      
      rs = stmt.executeQuery(sql);
      
      while(rs.next()) {
       int id = rs.getInt(1);
       String name =rs.getString(2);
       String price =rs.getString(3);
       String category =rs.getString(4);
       String quantity =rs.getString(5);
       String description =rs.getString(6);
       
       BookModel bk = new BookModel(id,name,price,category,quantity,description);
       book.add(bk);
      }
      
     }
     catch(Exception e) {
      e.printStackTrace();
     }
     return book;
     
    
    }
    //GetAll Data
    public static List<BookModel> getAllBook (){
     ArrayList <BookModel> books = new ArrayList<>();
     try {
      //DBConnection
       con=DBConnection.getConnection();
       stmt=con.createStatement();
       
       //Query
       String sql = "select * from book";
       
       rs = stmt.executeQuery(sql);
       
       while(rs.next()) {
        int id = rs.getInt(1);
        String name =rs.getString(2);
        String price =rs.getString(3);
        String category =rs.getString(4);
        String quantity =rs.getString(5);
        String description =rs.getString(6);
        
        BookModel bk = new BookModel(id,name,price,category,quantity,description);
        books.add(bk);
       }
       
      }
      catch(Exception e) {
       e.printStackTrace();
      }
      return books;
    }
    
    //Update Data
    public static boolean updatedata(String id,String name ,String price ,String category,String quantity,String description) {
    try {
     //DBConnection
     con=DBConnection.getConnection();
     stmt=con.createStatement();
     
     //SQL Query
     String sql = "update book set name='"+name+"',price='"+price+"',category='"+category+"',quantity='"+quantity+"',description='"+description+"'"
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
    public static boolean deletedata(String id) {
     int convID = Integer.parseInt(id);
     try {
      //DBConnection
      con=DBConnection.getConnection();
      stmt=con.createStatement();
      String sql = "delete from book where id='"+convID+"'";
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
    