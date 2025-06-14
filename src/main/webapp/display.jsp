<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/display.css">
</head>
<body>
<h2>Product Table</h2>

<input type="text" id="searchInput" placeholder="search...">
<table>
<tr>
     
     <th>ID </th>
     <th>Name </th>
     <th>Price </th>
     <th>Category </th>
     <th>Quantity </th>
     <th>Description </th>
     <th>Action</th>
</tr>
<c:forEach var="book" items="${allBooks}">
<tr>
     <td>${book.id}</td>
     <td>${book.name}</td>
     <td>${book.price}</td>
     <td>${book.category}</td>
     <td>${book.quantity}</td>
     <td>${book.description}</td>
    
     <td>
        <a href= "Update.jsp?id=${book.id}&name=${book.name}&price=${book.price}&category=${book.category}&quantity=${book.quantity}&description=${book.description}">
        <button>Update</button>
        </a>
        
         <form action="DeleteServlet" method="post">
        <input type= "hidden" name ="id" value="${book.id}">
        <button>Delete</button>
        </form>
    </td> 
    
</tr>
 </c:forEach>
 
 </table>
 
<script>
function filterTable() {
    var input, filter, table, tr, td, i, j, txtValue, found;
    input = document.getElementById("searchInput");
    filter = input.value.toUpperCase();
    table = document.querySelector("table");
    tr = table.getElementsByTagName("tr");

    for (i = 1; i < tr.length; i++) { // Start from 1 if row 0 is the header
        td = tr[i].getElementsByTagName("td");
        found = false;
        for (j = 0; j < td.length; j++) {
            if (td[j]) {
                txtValue = td[j].textContent || td[j].innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    found = true;
                    break;
                }
            }
        }
        tr[i].style.display = found ? "" : "none";
    }
}

document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("searchInput").addEventListener("input", filterTable);
});

</script>
</body>
</html>