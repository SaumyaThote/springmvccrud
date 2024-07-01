<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update </title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .bg-image {
            background-image: url('https://t3.ftcdn.net/jpg/02/11/07/58/360_F_211075851_gSKybVNvDWgZnrIaleNsQfIz2mqPKaor.jpg'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .form-container {
            background: rgba(255, 255, 255, 0.8);
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
	 <div class="bg-image">
        <div class="form-container">
            <h2 class="text-center">Registration</h2>
            <c:forEach var="list" items="${list}">
            <form action="/mvc2/update" method="post">
                <div class="form-group">
                    <label for="id">ID</label>
                    <input type="text" class="form-control" id="id" name="id" value="${list.id}">
                </div>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name"  value="${list.name }">
                </div>
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="text" class="form-control" id="email"  name="email"  value="${list.email }">
                </div>
             
                <div class="form-group">
                  <label for="password">Password</label>
                   <input type="text" id="password"  name="password" value="${list.password}">
                </div>
                <div class="form-group">
                    <label for="gender">Gender</label>
                    <input type="radio" value="male" name="gender" id="rdmale" <c:if test="${list.gender=='male'}">checked></c:if>>Male&nbsp;
                    <input type="radio"value="female" name="gender" id="rdfemale" <c:if test="${list.gender=='female'}">checked></c:if>>Female
                </div>
                <div class="form-group">
                    <label>Courses</label><br>
                    <div class="form-check form-check-inline">
                       <input type="checkbox" value="java" id="java" name="course"
                       <c:forEach var="c" items="${list.course}">
						<c:if test="${c=='java' }">checked</c:if>
						</c:forEach>> Java&nbsp;
                       <input type="checkbox"value="html" id="html" name="course"
                       <c:forEach var="c" items="${list.course}">
		<c:if test="${c=='html' }">checked</c:if>
		</c:forEach>> HTML&nbsp;
                       <input type="checkbox" name="course"value="css" id="css"
                       <c:forEach var="c" items="${list.course}">
		<c:if test="${c=='css' }">checked</c:if>
		</c:forEach>> CSS&nbsp;
                       <input type="checkbox" value="c/c++" id="c"name="course"
                       <c:forEach var="c" items="${list.course}">
		<c:if test="${c=='c/c++' }">checked</c:if>
		</c:forEach>> C/C++&nbsp;
                       <input type="checkbox" value="python" id="pyhton" name="course"
                       <c:forEach var="c" items="${list.course}">
		<c:if test="${c=='python' }">checked</c:if>
		</c:forEach>>PYTHON&nbsp;
                </div>
                <select class="select-city" id="city" name="city">
                    <option value="selectcity"<c:if test="${ 'nagpur'}">selected</c:if>>Select City</option>
                    <option value="nagpur"<c:if test="${ 'nagpur'}">selected</c:if>>Nagpur</option>
                    <option value="pune"<c:if test="${ 'pune'}">selected</c:if>>Pune</option>
                    <option value="amravati"<c:if test="${ 'amravati'}">selected</c:if>>Amravati</option>
                    <option value="mumbai"<c:if test="${ 'mumbai'}">selected</c:if>>Mumbai</option>
                    <option value="raipur"<c:if test="${ 'raipur'}">selected</c:if>>Raipur</option>
                </select>
                <button type="submit" class="btn btn-primary btn-block">Submit</button>
            </form>
            </c:forEach>
        </div>
    </div>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
