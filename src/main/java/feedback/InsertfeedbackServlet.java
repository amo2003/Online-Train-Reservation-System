package feedback;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertfeedbackServlet")
public class InsertfeedbackServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
         
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String name= request.getParameter("name");
      String email= request.getParameter("email");
      String rating= request.getParameter("rating");
      String feedback= request.getParameter("feedback");
      
      
      boolean isTrue;
      
      isTrue = feedbackController.insertdata(name, email, rating, feedback);
      
      if(isTrue==true) {
       String alertMessage = "Data Insert Successful";
       response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='displayAllfeedback'</script>");
      }
      else {
       RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
          dis2.forward(request, response);
      }
      
  }

}