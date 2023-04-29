<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="in.jo.pojo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Product p=(Product)session.getAttribute("product");
%>
<jsp:include page="header.jsp"></jsp:include>
<form action="/JustOrganic/pc"  enctype="multipart/form-data"  method="post"  >
<div class="container mb-3 shadow-lg p-3 mb-5 bg-body rounded mt-5" style="width:400px">
<p class="text-primary text-center h2 m-3">Update Product here!!</p>
<input type="hidden" name="action" value="updateproduct">
 
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label mt-2">Product id</label>
    <input type="text" class="form-control" name="productid" value="<%=p.getProductid()%>"id="exampleInputEmail1" aria-describedby="emailHelp" readonly="readonly">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label mt-2">Product Name</label>
    <input type="text" class="form-control" name="productname" value="<%=p.getProductname()%>"id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="mb-1">
    <label for="exampleInputEmail1" class="form-label">Product Type</label>
  </div>
  <%if(p.getProductcategory().equalsIgnoreCase("Fruits")|| p.getProductcategory().equalsIgnoreCase("Fruit")){ %>
  <div class="form-check float-start me-5">
  <input class="form-check-input" type="radio" name="productcategory" id="flexRadioDefault1" value="Fruits" checked="checked">
  <label class="form-check-label" for="flexRadioDefault1">
    Fruit
  </label>
</div>
<div class="form-check">

  <input class="form-check-input " type="radio" name="productcategory" id="flexRadioDefault2" value="Vegetables">
  <label class="form-check-label" for="flexRadioDefault2">
    vegetable
  </label>
</div>
<%} %>
<%if(p.getProductcategory().equalsIgnoreCase("Vegetables")|| p.getProductcategory().equalsIgnoreCase("Vegetable")){ %>
  <div class="form-check float-start me-5">
  <input class="form-check-input" type="radio" name="productcategory" id="flexRadioDefault1" value="fruit" >
  <label class="form-check-label" for="flexRadioDefault1">
    Fruit
  </label>
</div>
<div class="form-check">

  <input class="form-check-input " type="radio" name="productcategory" id="flexRadioDefault2" value="vegetable" checked="checked">
  <label class="form-check-label" for="flexRadioDefault2">
    vegetable
  </label>
</div>
<%} %>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label mt-2">Product Weight</label>
    <input type="number" class="form-control" min=1 step="0.5" name="productweight" value="<%=p.getProductweight() %>" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label mt-2">Product Price</label>
    <input type="text" class="form-control" name="productprice" id="exampleInputEmail1" value="<%=p.getProductprice()%>"aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Product Image</label>
    <input type="file" class="form-control" name="productimage" id="exampleInputPassword1">
  </div>
 
  <button type="submit" class="btn btn-primary w-100">update Product</button>
  </form>
 
</body>
</html>