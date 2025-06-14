package BookShopPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  

 }

 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  String id= request.getParameter("id");
  String name= request.getParameter("name");
  String price= request.getParameter("price");
  String category= request.getParameter("category");
  String quantity= request.getParameter("quantity");
  String description= request.getParameter("description");
  
  boolean isTrue;
  isTrue = BookController.updatedata(id,name, price, category, quantity, description);
  
  if(isTrue==true) {
   List<BookModel> bookdetails = BookController.getById(id);
   request.setAttribute("bookdetails", bookdetails);
   
   String alertMessage = "Data Update Successful";
   response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='GetAllServlets'</script>");
  }
  else {
   RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
      dis2.forward(request, response);
  }
  
 }

}