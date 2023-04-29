<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,in.jo.pojo.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url("https://images.pexels.com/photos/8939505/pexels-photo-8939505.jpeg");
background-repeat:no-repeat;
background-attachment:fixed;
background-size:100% 100%;
}

</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>


<% String msg=(String)request.getAttribute("msg");
List<Product>plist=(List<Product>)session.getAttribute("plist");
if(msg!=null){%>
<p class="text-danger text-center h1 m-5"><%= msg %></p>
<%} %>
<% String utype=(String)session.getAttribute("utype");
%>
<div class="container mt-5 pt-5">
		<div class="row">
		<c:forEach var="p" items="${plist}">
		<div class="col-4  mb-5 ">
		<div class="card  " style="width: 18rem;transition: all 0.3s ease;">
		                    <img
		src="/JustOrganic/pic?productid=${p.getProductid()}"
		width="80" height="175" class="card-img-top">
		 <div class="card-header text-center" >
		<h5>${p.getProductname()}</h5>
		  </div>
		  <div class="card-body bg-dark opacity-75 text-light h6">
		   <p class="card-text"> 1Kg -&#8377;${p.getProductprice()}/- </p>
		   Qty:  <input type="text" name="quantity"placeholder=" Quantity" value="1">
		                    </div>
		<%if(utype!=null && utype.equals("admin")) {%>
		<div class="card-footer text-center bg-dark opacity-75 m-0 text-light h6 ">
		   <a href="/JustOrganic/pc?action=edit&pid=${p.getProductid()}"class="btn btn-success">update</a>
		   <a href="/JustOrganic/pc?action=delete&pid=${p.getProductid()}"class="btn btn-danger">delete</a>
		</div>
		<%} %>
		<%if(utype==null || utype.equals("customer")) {%>
		
		 <div class="card-footer text-center">
		
		      <a href="/JustOrganic/cartc?action=addtocart&pid=${p.getProductid()}"class="btn btn-primary">Add to Cart</a>
		   </div>
		   <%} %>
		</div>
		</div>
		</c:forEach>
		</div>


</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</body>
</html>