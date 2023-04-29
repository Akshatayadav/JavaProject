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
<%
User user=(User)session.getAttribute("user");
System.out.println(user);
%>
<jsp:include page="header.jsp"></jsp:include>

<section class="vh-100 bg-image"
  style="background-image: url('');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">User Appointment</h2>
				<c:if test="${not empty msg }">
				<p class="text-center text-sucess fs-3">${msg }</p>
				<c:remove var="msg" scope="session"/>
				</c:if>
				
				<c:if test="${not empty errmsg }">
				<p class="text-center text-danger fs-3">${errmsg }</p>
				<c:remove var="errmsg" scope="session"/>
				</c:if>
              <form action="../UserAppointment" method="post">
 				<input type="hidden" name="userid" value="${user.userid }">
                <div class="form-outline mb-3">
                 <label class="form-label" for="form3Example1cg">Full Name</label>
                  <input type="text" name="name" id="form3Example1cg" class="form-control form-control-lg" />
                  
                </div>
                
                <div class="form-outline mb-3">
                 <label class="form-label" for="form3Example1cg">Gender</label>
                  <select name="gender"required class="form-control"> 
                  <option value="male">Male</option>
                  <option value="female">Female</option>
                  </select> 
                </div>
                
                <div class="form-outline mb-3">
					<label class="form-label">Age</label> 
					<input type="number"required name="age" class="form-control">
				</div>
                
                <div class="form-outline mb-3">
					<label class="form-label">Appointment Date</label> 
					<input type="date"required name="appointmentdate" class="form-control">
				</div>
				
				<div class="form-outline mb-3">
				<label class="form-label" for="form3Example1cg">Email</label>
                  <input type="email" name="email" id="form3Example1cg" class="form-control form-control-lg" />
                  
                </div>
				
				<div class="form-outline mb-3">
				  <label class="form-label" for="form3Example1cg">Contact</label>
                  <input type="text" name="contact" id="form3Example1cg" class="form-control form-control-lg" />
                  
                </div>
                <div class="form-outline mb-3">
					<label class="form-label">Disease</label> 
					<input type="text"required name="disease" class="form-control">
				</div>

             

                <div class="form-outline mb-3">
                 <label class="form-label" for="form3Example1cg">Doctor</label>
                  <select name="doctorid"required class="form-control"> 
                  <option value="">----select----</option>
                  <%DoctorDao dao=new DoctorDao();
                 List<Doctor> dlist=dao.showDoctor();
                  for(Doctor d:dlist){
                	 System.out.println(d.getId());
                  %>
                  
                  <option value="<%=d.getId()%>"><%=d.getName() %>(<%=d.getSpecialization()%>)</option>
                  <%} %>
                  <option value="">Doctor Name</option>
                  </select> 
                </div>
                <div class="form-outline mb-3">
					<label class="form-label">Address</label> 
					<input type="text"required name="address" class="form-control">
				</div>
               
				<c:if test="${empty user }">
				<div class="d-flex justify-content-center">
				<a href="userlogin.jsp" class="btn btn -dark bg-dark text-light">Submit</a>
				</div>
				</c:if>
				
				<c:if test="${not empty user}">
				<div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-dark btn-block text-light btn-lg ">Add</button>
                </div>
				</c:if>
				
				
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