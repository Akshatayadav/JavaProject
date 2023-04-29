<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,in.yh.pojo.*"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
<% 
List<Doctor> dlist=(List<Doctor>)session.getAttribute("dlist");
System.out.print(dlist);
%>
<jsp:include page="/admin/header.jsp"></jsp:include>
	<section class="intro">
  <div class=" h-75" >
    <div class="mask d-flex align-items-center h-75">
      <div class="container">
        <div class="row justify-content-center">
          <div class="table-responsive">
          <p class="text-dark  text-center h1  m-5">Doctor List</p>
              <table class="table table-dark table-lg table-hover text-white table-bordered mb-5 table-lg">
               <tr class="table-warning"> 
				<th> Id</th>
				<th> Name</th>
				<th> DOB</th>
				<th> Qualification</th>
				<th> Specialization</th>
				<th> Contact</th>
				<th> Email</th>
				<th> Password</th>
				<th colspan=2>Operations</th>
			</tr>
			
			<c:forEach var="d" items= "${dlist }">
			<tr>
				<td>${d.getId() }</td>
				<td>${d.getName() }</td>
				<td>${d.getDob() }</td>
				<td>${d.getQualification() }</td>
				<td>${d.getSpecialization() }</td>
				<td>${d.getContact() }</td>
				<td>${d.getEmail() }</td>
				<td>${d.getPassword() }</td>
				<td><a href="/YouHeal/Doctor?action=edit&id=${d.getId() }" class="btn btn-success">update</a></td>
				<td><a href="/YouHeal/Doctor?action=delete&id=${d.getId() }" class="btn btn-danger">delete</a></td>
			</tr>
			</c:forEach>
	
              </table>
            
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

	
</body>
</html>