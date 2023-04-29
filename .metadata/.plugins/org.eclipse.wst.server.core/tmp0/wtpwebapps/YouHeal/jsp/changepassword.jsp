<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="in.yh.dao.*,in.yh.pojo.*,java.util.List"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/jsp/header.jsp"></jsp:include>
<% User user=(User)session.getAttribute("user");
System.out.println(user);

%>
<section class="vh-100 bg-image"
  style="background-image: url('');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Change Password</h2>
				<c:if test="${not empty msg }">
				<p class="text-center text-sucess fs-3">${msg }</p>
				<c:remove var="msg" scope="session"/>
				</c:if>
				
				<c:if test="${not empty errmsg }">
				<p class="text-center text-danger fs-3">${errmsg }</p>
				<c:remove var="errmsg" scope="session"/>
				</c:if>
              <form action="../ChangePassword" method="post">
 				<input type="hidden" name="action" value="changepassword">
                
				<div class="form-outline mb-3">
				<label class="form-label" for="form3Example1cg">Enter old Password</label>
                  <input type="password" name="oldpassword" id="form3Example1cg" class="form-control form-control-lg" />
                  
                </div>
				<div class="form-outline mb-3">
                 <label class="form-label" for="form3Example1cg">Enter new Password</label>
                  <input type="password" name="newpassword" id="form3Example1cg" class="form-control form-control-lg" />
                  
                </div>
                <input type="hidden" name="uid" value=${user.userid }>
                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-dark btn-block text-light btn-lg ">Change Password</button>
                </div>

                

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>