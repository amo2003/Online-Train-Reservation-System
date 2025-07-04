package UserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/displayAllUser")
public class displayAllUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List <UserModel> Feedbacks = UserController.getAlluser();
          request.setAttribute("Feedbacks",Feedbacks);
          
          RequestDispatcher dispatcher = request.getRequestDispatcher("displayUsers.jsp");
          dispatcher.forward(request, response);
  }
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         doGet(request,response);

        }
    

 }