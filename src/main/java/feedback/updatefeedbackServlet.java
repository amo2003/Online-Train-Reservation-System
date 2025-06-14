package feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updatefeedbackServlet")
public class updatefeedbackServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  

 }

 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  String id= request.getParameter("id");
  String name= request.getParameter("name");
  String email= request.getParameter("email");
  String rating= request.getParameter("rating");
  String feedback= request.getParameter("feedback");
  
  boolean isTrue;
  isTrue = feedbackController.updatedata(id, name, email, rating, feedback);
  
  if(isTrue==true) {
   List<feedbackModel> Feedback = feedbackController.getById(id);
   request.setAttribute("Feedback", Feedback);
   
   String alertMessage = "Data Update Successful";
   response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='displayAllfeedback'</script>");
  }
  else {
   RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
      dis2.forward(request, response);
  }
  
 }

}