<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="in.yh.pojo.*,in.yh.dao.*,java.util.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%
Doctor doctor=(Doctor)session.getAttribute("doctor");
if(doctor!=null){
%>
<jsp:include page="doctornav.jsp"></jsp:include>
<% } else { %>
<c:redirect url="doctorlogin.jsp"></c:redirect>
<%} %>
<div class="container p-3">
		<div class="row">

			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Patient Details</p>
						<c:if test="${not empty errmsg}">
							<p class="fs-4 text-center text-danger">${errmsg}</p>
							<c:remove var="errmsg" scope="session" />
						</c:if>
						<c:if test="${not empty msg}">
							<p class=" fs-4 text-center text-success">${msg}</p>
							<c:remove var="msg" scope="session" />
						</c:if>

						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Email</th>
									<th scope="col">Mob No</th>
									<th scope="col">Diseases</th>
									<th scope="col">Status</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								Doctor d = (Doctor) session.getAttribute("doctor");
								AppointmentDao dao = new AppointmentDao();
								List<Appointment> list = dao.getAllAppointmentByDoctorId(d.getId());
								for (Appointment a : list) {
								%>
								<tr>
									<th><%=a.getName()%></th>
									<td><%=a.getGender()%></td>
									<td><%=a.getAge()%></td>
									<td><%=a.getAppointmentdate()%></td>
									<td><%=a.getEmail()%></td>
									<td><%=a.getContact()%></td>
									<td><%=a.getDisease()%></td>
									<td><%=a.getStatus()%></td>
									<td>
										<%
										if ("Pending".equalsIgnoreCase(a.getStatus())) {
										%> 
										<a href="/YouHeal/jsp/comment.jsp?id=<%=a.getId()%>"
										class="btn btn-success btn-sm">Comment</a>
										 <%
										 } else {
										 %> 
										 <a href="#" class="btn btn-success btn-sm disabled">Comment</a> 
										 <%
										 }
										 %>
									</td>
								</tr>
								<%
								}
								%>



							</tbody>
						</table>

					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>