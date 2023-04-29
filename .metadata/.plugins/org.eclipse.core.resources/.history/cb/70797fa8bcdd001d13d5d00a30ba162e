<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@include file="allcss.jsp" %>
<body>
<%@include file="navbar.jsp" %>
<form action="/Hospital_System/al" method="post">

<div class="container mb-3 shadow-lg p-3 mb-5 bg-body rounded mt-5" style="width:400px">

<p class="text-primary text-center h2 m-3 fw-bold">Admin Login Form</p>

<c:if test="${not empty Msg }">
<p class="text-center text-success fs-3">${Msg }</p>
<c:remove var="Msg "  scope="session"/>
</c:if>

<c:if test="${not empty errmsg }">
<p class="text-center text-danger fs-3">${errmsg }</p>
<c:remove var="errmsg"  scope="session"/>
</c:if>

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label mt-2">Email address</label>
    <input type="email" class="form-control" name="email" >
  </div>
  <div class="mb-2">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" name="pass" >
  </div>
  
  <button type="submit" class="btn btn-primary w-100 mt-3 mb-3">login</button>

</div>
</form>
</body>
</html>