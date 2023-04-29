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
html,
body,
.intro {
  height: 100%;
}

.gradient-custom-2 {
  /* fallback for old browsers */
  background: #6a11cb;

  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(to top, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));

  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(to top, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))
}

table td,
table th {
  text-overflow: ellipsis;
  white-space: nowrap;
  overflow: hidden;
  opacity:.65;
}
body{
background-image:url("");
background-repeat:no-repeat;
background-attachment:fixed;
background-size:100% 100%;
}



tbody td {
  font-weight: 500;
  color: rgba(255,255,255,250);
}
</style>
</head>
<body>
<jsp:include page="/admin/header.jsp"></jsp:include>

<% 
List<Appointment> alist=(List<Appointment>)session.getAttribute("alist");
DoctorDao dao=new DoctorDao();

System.out.print(alist);
%>

	<section class="intro">
  <div class=" h-75" >
    <div class="mask d-flex align-items-center h-75">
      <div class="container">
        <div class="row justify-content-center">
          <div class="table-responsive">
          <p class="text-dark  text-center h1  m-5">Patient List</p>
              <table class="table table-dark table-lg table-hover text-white table-bordered mb-5 table-lg">
               <tr class="table-warning"> 
				<th scope="col">Full Name</th>
				<th scope="col">Gender</th>
				<th scope="col">Age</th>
				<th scope="col">Appointment</th>
				<th scope="col">Email</th>
				<th scope="col">Mob No</th>
				<th scope="col">Diseases</th>
				<th scope="col">Doctor Name</th>
				<th scope="col">Address</th>
				<th scope="col">Status</th>
			</tr>
			
			<% for (Appointment a : alist) {%>
			<tr>
				
				<%System.out.println(dao.searchDoctorById(1).getName()); %>
				<td><%= a.getName() %></td>
				<td><%=a.getGender() %> </td>
				<td><%= a.getAge()%></td>
				<td><%= a.getAppointmentdate()%> </td>
				<td><%= a.getEmail()%> </td>
				<td><%= a.getContact()%> </td>
				<td><%= a.getDisease()%> </td>
				<td><%= dao.searchDoctorById(a.getDoctorid()).getName()%></td>
				<td><%= a.getAddress()%> </td>
				<td><%= a.getStatus()%> </td>
				
				
			</tr>
			<%} %>
	
              </table>
            
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

	
</body>
</html>