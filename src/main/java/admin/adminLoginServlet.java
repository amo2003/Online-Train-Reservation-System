package admin;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserPackage.UserController;
import UserPackage.UserModel;

@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
  }

 
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  String gmail = request.getParameter("gmail");
  String password = request.getParameter("password");
 
  
  try {
	   List<adminModel> adminlogin = adminController.loginValidate(gmail , password);
	   if(adminlogin != null && !adminlogin.isEmpty()) {
	      
	    request.getSession().setAttribute("admin",adminlogin.get(0));
	    response.sendRedirect("adminDashboard.jsp");
	    
	   }
	   else {
	    
	    String alertMessage = "Invalid Credentials,please try again";
	    response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='adminLogin.jsp'</script>");
	    
	   }
	   
	   
	  }catch(Exception e) {
	   e.printStackTrace();
	  }
	  
	 }

	}