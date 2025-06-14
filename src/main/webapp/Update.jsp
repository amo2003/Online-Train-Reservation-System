<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String id = request.getParameter("id");
   String name = request.getParameter("name");
   String price = request.getParameter("price");
   String category = request.getParameter("category");
   String quantity = request.getParameter("quantity");
   String description = request.getParameter("description");
%>
 
   <form action="UpdateServlet" method="post">
        <table>
        
              <tr>
                <td><label for="id">ID:</label></td>
                <td><input type="text" id="name" name="id" value="<%=id%>" readonly></td>
            </tr>
        
        
            <tr>
                <td><label for="name">Name:</label></td>
                <td><input type="text" id="name" name="name" value="<%=name%>" required></td>
            </tr>
            <tr>
                <td><label for="price">Price:</label></td>
                <td><input type="number" id="price" name="price" value="<%=price%>" required></td>
            </tr>
            <tr>
                <td><label for="category">Category:</label></td>
                <td><input type="text" id="category" name="category" value="<%=category%>" required></td>
            </tr>
            <tr>
                <td><label for="quantity">Quantity:</label></td>
                <td><input type="number" id="quantity" name="quantity" value="<%=quantity%>" required></td>
            </tr>
            <tr>
                <td><label for="description">Description:</label></td>
                <td><input id="description" name="description"  value="<%=description%>" required></input></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Submit">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>