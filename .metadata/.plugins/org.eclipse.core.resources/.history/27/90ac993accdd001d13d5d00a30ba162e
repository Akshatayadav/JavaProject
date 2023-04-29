<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@include file="allcss.jsp" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fas fa-clinic-medical"></i> MEDI HOME</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<c:if test="${empty userObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/Hospital_System/jsp/admin_login.jsp"><i
							class="fas fa-sign-in-alt"></i> ADMIN</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/Hospital_System/jsp/doctor_login.jsp">DOCTOR</a></li>
						
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/Hospital_System/jsp/user_appointment.jsp">APPOINTMENT</a></li>
						
						<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/Hospital_System/jsp/userlogin.jsp">User</a></li>
						
						
					
				</c:if>


				<c:if test="${not empty userObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_appointment.jsp">APPOINTMENT</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="view_appointment.jsp">VIEW APPOINTMENT</a></li>

	 				<button class="btn btn-success" type="button"
					id="dropdownMenuButton1" 	aria-expanded="false">
					<i class="fa-solid fa-circle-user"></i> ${userObj.username }
						</button>
						
						<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/Hospital_System/ull1">Change Password</a></li>
						
          
          
						<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/Hospital_System/ull1">Logout</a></li>
  
	
						
		
		
	</c:if>
			</ul>
		</div>
	</div>
</nav>