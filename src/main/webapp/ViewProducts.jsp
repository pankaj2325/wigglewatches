<%@page import="impl.ProductDAOImpl"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>WiggleWatches.com</title>
  
  
  
  
  
  
  <style type="text/css">



*{
  box-sizing:border-box;
  -moz-box-sizing:border-box;
}
body {
	background: url(//subtlepatterns.com/patterns/scribble_light.png);
  font-family: Calluna, Arial, sans-serif;
  min-height: 1000px;
}
#wrap{
	width: 90%;
	max-width: 1100px;
	margin: 50px auto;
}
.columns_2 figure{
   width:49%;
   margin-right:1%;
}
.columns_2 figure:nth-child(2){
	margin-right: 0;
}
.columns_3 figure{
   width:32%;
   margin-right:1%;
}
.columns_3 figure:nth-child(3){
	margin-right: 0;
}
.columns_4 figure{
   width:24%;
   margin-right:1%;
}
.columns_4 figure:nth-child(4){
	margin-right: 0;
}
.columns_5 figure{
   width:19%;
   margin-right:1%;
}
.columns_5 figure:nth-child(5){
	margin-right: 0;
}
#columns figure:hover{
	-webkit-transform: scale(1.1);
	-moz-transform:scale(1.1);
	transform: scale(1.1);

}
#columns:hover figure:not(:hover) {
	opacity: 0.4;
}
div#columns figure {
	display: inline-block;
	background: #FEFEFE;
	border: 2px solid #FAFAFA;
	box-shadow: 0 1px 2px rgba(34, 25, 25, 0.4);
	margin: 0 0px 15px;
	-webkit-column-break-inside: avoid;
	-moz-column-break-inside: avoid;
	column-break-inside: avoid;
	padding: 15px;
	padding-bottom: 5px;
	background: -webkit-linear-gradient(45deg, #FFF, #F9F9F9);
	opacity: 1;
	-webkit-transition: all .3s ease;
	-moz-transition: all .3s ease;
	-o-transition: all .3s ease;
	transition: all .3s ease;
}

div#columns figure img {
	width: 100%;
	border-bottom: 1px solid #ccc;
	padding-bottom: 15px;
	margin-bottom: 5px;
}

div#columns figure figcaption {
  font-size: .9rem;
  color: #444;
  line-height: 1.5;
  height:60px;
  font-weight:600;
  text-overflow:ellipsis;
}

a.button{
  padding:10px;
  background:salmon;
  margin:10px;
  display:block;
  text-align:center;
  color:#fff;
  transition:all 1s linear;
  text-decoration:none;
  text-shadow:1px 1px 3px rgba(0,0,0,0.3);
  border-radius:3px;
  border-bottom:3px solid #ff6536;
  box-shadow:1px 1px 3px rgba(0,0,0,0.3);
}
a.button:hover{
  background:#ff6536;
  border-bottom:3px solid salmon;
  color:#f1f2f3;
}
@media screen and (max-width: 960px) { 
  #columns figure { width: 24%; }
}
@media screen and (max-width: 767px) {
  #columns figure { width:32%;}
}
@media screen and (max-width: 600px) {
  #columns figure { width: 49%;}
}
@media screen and (max-width: 500px) {
  #columns figure { width: 100%;}
}


</style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="index.jsp">
    <img src="asset/images/images-122x122.png" alt="logo" style="width:100%; height:auto;">
  </a>
  
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="index.jsp" style="font-size:40px;">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="reg.jsp" style="font-size:40px;">Create Account</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"></a>
    </li>
  </ul>
</nav>
<%
     ProductDAO pdao = new ProductDAOImpl();

	request.setAttribute("Products", pdao.getProduct());

	
%>

</head>
<body style="margin: auto; width: 80%;">


<h1>View Products</h1>

<c:forEach var="x" items="${Products}">

				
			
	<div id="columns" class="columns_4" style="display: inline; min-width: 200px; height: 500px;">
  <figure>
  <img src="${x.getImagePath()}" style="max-width: 100px;" class="img img-thumbnail">
	<figcaption>${x.getName()}</figcaption>
    <span class="price">${x.getPrice()}</span>
    <a class="button" href="ViewSingleProduct.jsp?id=${x.getId()}">Buy Now</a>
	</figure>
	
	
	
 
  
		
</div>

			</c:forEach>
	<!-- <h1>View Products</h1> -->

	<%-- <table class="table table-striped" style="font-size: 20px; font-weight: bold;">
		<thead>

			<tr>
				<td>Id</td>
				<td>Name</td>
				<td>Description</td>
				<td>Category</td>
				<td>Price</td>
				<td>Image</td>
				
				<td>View</td>
				<c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
				<td>Update</td>
				<td>Delete</td>
					</c:if>
			</tr>


		</thead>
		<tbody> 

			<c:forEach var="x" items="${Products}">

				<tr>
					<td>${x.getId()}</td>
					<td>${x.getName()}</td>
					<td style="font-size:15px;">${x.getDescription()}</td>
					<td>${x.getCategory().getName()}</td>
					<td>${x.getPrice()}</td>
					 <td><img src="${x.getImagePath()}" style="max-width: 100px;" class="img img-thumbnail"/></td>
					
					<td><a href="ViewSingleProduct.jsp?id=${x.getId()}" class="btn btn-primary">view</a></td>
					
					<c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
					<td><a href="UpdateProduct.jsp?id=${x.getId()}" class="btn btn-success">Update</a></td>
					<td><a href="DeleteProduct?id=${x.getId()}" class="btn btn-danger">Delete</a></td>
					</c:if>
				</tr>

			</c:forEach>

		</tbody>
	</table> --%>

</body>
</html>