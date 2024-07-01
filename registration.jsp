<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Registration Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            background-image: url('https://www.pngmagic.com/product_images/blue-background-images-for-websites.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
        }
      .container {
            max-width: 600px;
            margin: 40px auto;
            padding: 20px;
            background-color: #337ab7;
            color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
      .form-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
        }
      .radio-button {
            margin-right: 20px;
        }
      .checkbox {
            margin-right: 20px;
        }
      .select-city {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Registration Form</h2>
        <form id="saveuser" action="saveuser" method="post">
        
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" name="name"placeholder="Enter your name" required="Name is required">
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email"placeholder="Enter your email" required="Email is required">
            </div>
            
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password"placeholder="Enter your password" required="password is required">
            </div>
            
            <div class="form-group">
                <label>Gender:</label>
                <div class="radio-button">
                    <input type="radio" id="male" name="gender" value="male">
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="gender" value="female">
                    <label for="female">Female</label>
                </div>
            </div><br>
            
            <div class="form-group">
                <label>Select Course:</label>
                <div class="checkbox">
                    <input type="checkbox" id="java" name="course" value="java">
                    <label for="java">Java</label>
                    <input type="checkbox" id="html" name="course" value="html">
                    <label for="html">HTML</label>
                     <input type="checkbox" id="css" name="course" value="css">
                    <label for="css">CSS</label>
                </div>
            </div><br>
            
            <div class="form-group">
                <label for="city">City:</label>
                <select class="select-city" id="city" name="city">
                    <option value="">Select City</option>
                    <option value="nagpur">Nagpur</option>
                    <option value="pune">Pune</option>
                    <option value="amravati">Amravati</option>
                    <option value="mumbai">Mumbai</option>
                    <option value="raipur">Raipur</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Register</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
 
    <script>
$(document).ready(function(){
	$("#saveuser").submit(function(event){
            //alert('test');
		event.preventDefault();
		ajaxPost();
	}); 
	
	function ajaxPost()
	{
		var formData = {
				 name : $("input[name='name']").val(),
				 email : $("input[name='email']").val(),
				 password : $("input[name='password']").val(),
				 gender: $("input[name='gender']:checked").val(),
				 course : $("input[name='course']:checked").val(),
				 city: $("select[name='city']").val(),		    
				}
			console.log("formdata::::"formData);
		
		//Do Post
		$.ajax({
			type : "post",
			contentType:"application/json",
			url:"http://localhost:8080/mvc2/saveuser" ,
			data:JSON.stringify(formData) , 
			datatype:"application/text",
			success:function(data)
			{
				if(data=="success")
					{
						alert("Thank You for registration!!Now you can login.");
						//console.log("redired to login page");
                    	location.assign("http://localhost:8060/mvc2/login.jsp");
					}
                                    console.log(data);
			},
		});
		
		
		//ajaxPost();
	}
 });
 
</script>

 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
