<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Table</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style>
  body {
            background-color: #f0f0f0;
            
            background-image: url('https://www.pngmagic.com/product_images/blue-background-images-for-websites.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
        }
.card {
  border: 1px solid #3498db; /* Blue border for the card */
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.card-header {
  background-color: #3498db; /* Blue background for the card header */
  color: #ffffff; /* White text for the card header */
  padding: 10px;
  border-bottom: 1px solid #3498db;
}

.card-body {
  padding: 20px;
}

.table-blue {
  border-collapse: collapse;
}

.table-blue thead {
  background-color: #3498db; /* Blue background for the table header */
  color: #ffffff; /* White text for the table header */
}

.table-blue thead th {
  border-bottom: 1px solid #3498db;
}

.table-blue tbody tr {
  border-bottom: 1px solid #cccccc;
}

.table-blue tbody tr:hover {
  background-color: #f5f5f5;
}

.table-blue .btn-primary {
  background-color: #3498db;
  border-color: #3498db;
}

.table-blue .btn-danger {
  background-color: #e74c3c;
  border-color: #e74c3c;
}}</style>
</head>
<body>

<div class="card">
  <div class="card-header">
    <h5 class="card-title">Student Information</h5>
  </div>
  <div class="card-body">
    <table class="table table-bordered table-hover table-blue">
      <thead>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Gender</th>
          <th>Course</th>
          <th>City</th>
          <th>Edit</th>
          <th>Delete</th>
        </tr>
      </thead>
      <tbody>
      	<c:forEach var="rm" items="${list}">
							<tr>
								<td>${rm.id}</td>
								<td>${rm.name}</td>
								<td>${rm.email}</td>
								<td>${rm.gender}</td>
								<td>${rm.course}</td>
								<td>${rm.city}</td>
								<td><a href="edit/${rm.id}"class="btn btn-primary btn-sm">Edit</a></td>
								<td><a href="delete/${rm.id }"class="btn btn-primary btn-sm">Delete</a></td>
								</tr>
								</c:forEach>						
      
      
       
        
      </tbody>
    </table>
  </div>
</div>
</body>
</html>
