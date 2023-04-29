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
Doctor d=(Doctor)session.getAttribute("doctor");
%>
<jsp:include page="/admin/header.jsp"></jsp:include>

<section class="vh-100 bg-image"
  style="background-image: url('');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Add Doctor</h2>
				<c:if test="${not empty msg }">
				<p class="text-center text-sucess fs-3">${msg }</p>
				<c:remove var="msg" scope="session"/>
				</c:if>
				
				<c:if test="${not empty errmsg }">
				<p class="text-center text-danger fs-3">${errmsg }</p>
				<c:remove var="errmsg" scope="session"/>
				</c:if>
              <form action="/YouHeal/Doctor" method="post">
 				<input type="hidden" name="action" value="updatedoctor">
 				
 				<div class="form-outline mb-3">
                 <label class="form-label" for="form3Example1cg">Id </label>
                  <input type="text" name="id" value=<%=d.getId() %> readonly="readonly" form3Example1cg" class="form-control form-control-lg" />
                  
                </div>
                <div class="form-outline mb-3">
                 <label class="form-label" for="form3Example1cg">Full Name</label>
                  <input type="text" name="name" value=<%=d.getName() %> id="form3Example1cg" class="form-control form-control-lg" />
                  
                </div>
                
                <div class="form-outline mb-3">
					<label class="form-label">DOB</label> 
					<input type="date"required name="dob" value=<%=d.getDob() %> class="form-control">
				</div>
				<div class="form-outline mb-3">
					<label class="form-label">Qualification</label> 
					<input type="text"required name="qualification" value=<%=d.getQualification() %> class="form-control">
				</div>

                
				<div class="form-outline mb-3">
					<label class="form-label">Specialist</label> 
					<select name="spec"required  value=<%=d.getSpecialization() %> class="form-control"> <option><%=d.getSpecialization() %></option>
					
					 <% SpecialistDao sdao = new SpecialistDao();
						List<Specialist> list = sdao.getAllSpecialist();
						for (Specialist s : list) {
									%>
							<option><%=s.getSpecialistName()%></option>
									<% }
					 %>
					</select>
				</div>
				<div class="form-outline mb-3">
				<label class="form-label" for="form3Example1cg">Email</label>
                  <input type="email" name="email" value=<%=d.getEmail() %> id="form3Example1cg" class="form-control form-control-lg" />
                  
                </div>
				
				<div class="form-outline mb-3">
				  <label class="form-label" for="form3Example1cg">Contact</label>
                  <input type="text" name="contact" value=<%=d.getContact() %> id="form3Example1cg" class="form-control form-control-lg" />
                  
                </div>
				<div class="form-outline mb-3">
				<label class="form-label" for="form3Example1cg">Password</label>
                  <input type="password" name="password" value=<%=d.getPassword() %> id="form3Example1cg" class="form-control form-control-lg" />
                  
                </div>
				
				

                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-dark btn-block text-light btn-lg ">Add</button>
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