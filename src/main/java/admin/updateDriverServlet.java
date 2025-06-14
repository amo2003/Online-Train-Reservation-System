package admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateDriverServlet")
public class updateDriverServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  

 }

 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  String id= request.getParameter("id");
  String name= request.getParameter("name");
  String phone= request.getParameter("phone");
  String email= request.getParameter("email");
  
  boolean isTrue;
  isTrue = adminController.updatedata(id, name, phone, email);
  
  if(isTrue==true) {
   List<driverModel> Driver = adminController.getById(id);
   request.setAttribute("Driver", Driver);
   
   String alertMessage = "Data Update Successful";
   response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='displayAlldriverServlet'</script>");
  }
  else {
   RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
      dis2.forward(request, response);
  }
  
 }

}
