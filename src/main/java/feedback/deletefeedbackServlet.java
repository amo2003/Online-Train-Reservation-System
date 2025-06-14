package feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deletefeedbackServlet")
public class deletefeedbackServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;
    
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
  
 }

 
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  String id = request.getParameter("id");
  boolean isTrue;
  isTrue = feedbackController.deletedata(id);
  if(isTrue == true) {
   String alertMessage = "Data Delete Successful";
   response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='displayAllfeedback';</script>");
   
  }
  else {
   List<feedbackModel> Feedbacks =feedbackController.getById(id);
   request.setAttribute("Feedbacks",Feedbacks);
   
   RequestDispatcher dispatcher =request.getRequestDispatcher("wrong.jsp");
   dispatcher.forward(request,response);
   
  }
 }

 }