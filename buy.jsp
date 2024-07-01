<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Product</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

</head>
<body>
 <c:forEach var="list" items="${list}">
<form action="purchase" method="post">
<div class="form-group">
    <label for="product">Product Id:</label>
    <input type="number" class="form-control" id="id" name="id"readonly value="${list.id}">
  </div>
  <div class="form-group">
    <label for="product">Product:</label>
    <input type="text" class="form-control" id="productname" name="productname"readonly value="${list.productname}">
  </div>
  <div class="form-group">
    <label for="quantity">Quantity:</label>
    <input type="text" class="form-control" name="quantity"id="quantity" min="1" required>
  </div>
  <div class="form-group">
    <label for="price">Price:</label>
    <input type="text" class="form-control" id="price" name="price"readonly value="${list.price}">
  </div>
  <div class="form-group">
    <label for="discount">Discount (%):</label>
    <input type="text" class="form-control" id="discount" name="discount"min="0" max="100" value="${list.discount}">
  </div>
  <div class="form-group">
    <label for="final-price">Final Price:</label>
    <input type="text" class="form-control" name="finalprice"id="final-price" readonly>
  </div>
  <button type="submit" class="btn btn-primary">Buy</button>
</form>
</c:forEach>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script>
  $(document).ready(function() {
    $('#quantity, #discount').on('input', function() {
      var quantity = parseInt($('#quantity').val());
      var price = parseInt($('#price').val());
      var discount = parseInt($('#discount').val());
      var finalPrice = (price * quantity) - ((price * quantity) * (discount / 100));
      $('#final-price').val(finalPrice.toFixed(2));
    });
  });
</script>

</body>
</html>
