<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
</head>
<body>
<div class="container-fluid">
        
                
                <div class="collapse" id="product-view">
                <table style="border-collapse: collapse; width: 100%; border: 1px solid #ddd;">
  <thead>
    <tr style="background-color: #f0f0f0;">
     <th style="padding: 10px; border: 1px solid #ddd;">Product ID</th>
      <th style="padding: 10px; border: 1px solid #ddd;">Product Name</th>
      <th style="padding: 10px; border: 1px solid #ddd;">Discount</th>
      <th style="padding: 10px; border: 1px solid #ddd;">Price</th>
      <th style="padding: 10px; border: 1px solid #ddd;">Buy</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="list" items="${list}">
    <tr>
    <td style="padding: 10px; border: 1px solid #ddd;">${list.id}</td>
      <td style="padding: 10px; border: 1px solid #ddd;">${list.productname}</td>
      <td style="padding: 10px; border: 1px solid #ddd;">${list.discount}</td>
      <td style="padding: 10px; border: 1px solid #ddd;">${list.price}</td>
      <td style="padding: 10px; border: 1px solid #ddd;"> <a href="buy/${list.id}" >BUY</a></td>
      
    </tr>
    
    
    <tr>
    </c:forEach>
  </tbody>
</table>
</div>
                
                         </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
</body>
</html>
