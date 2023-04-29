<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"
    %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>
<%@include file="allcss.jsp" %>
<body>


<body  background="/Hospital_System/images/a.jpg"
   style=" background-size: cover; 
   background-repeat:no-repeat;"
 >
 <%@include file="navbar.jsp" %>
<form action="/Hospital_System/ur"  method="post"  >

<div class="container mb-3 shadow-lg p-3 mb-5 bg-body rounded mt-5" style="width:400px" c >
<p class="text-primary text-center h2 m-3">Register here!!</p>

<c:if test="${not empty msg }">
<p class="text-center text-success fs-3">${msg }</p>
<c:remove var="msg "  scope="session"/>
</c:if>

<c:if test="${not empty errmsg }">
<p class="text-center text-success fs-3">${errmsg }</p>
<c:remove var="errmsg"  scope="session"/>
</c:if>

  <div class="mb-3"> 
    <label for="exampleInputEmail1" class="form-label mt-2">User Name</label>
    <input type="text" class="form-control" name="uname" >
  </div>
  
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label mt-2">User Email</label>
    <input type="email" class="form-control"  name="uemail" >
  </div>
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label mt-2">Customer Password</label>
    <input type="password" class="form-control" name="upass"  >
  </div>
  
  <button type="submit"  class="btn btn-primary w-100">Register</button>
 </div> 
 </form>


</body>
</html>