<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,in.jo.pojo.*"%>
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
background-image:url("https://images.pexels.com/photos/8939505/pexels-photo-8939505.jpeg");
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
<jsp:include page="header.jsp"></jsp:include>
<% 
List<Customer> clist=(List<Customer>)session.getAttribute("clist");
if(!clist.isEmpty()){
%>
<% String msg=(String)request.getAttribute("msg");
if(msg!=null){
%>
<script type="text/javascript">
alert("<%=msg%>")</script>
<%} %>
	
<% } else{%>
<p class="text-primary text-center h2 m-3">Customer List is not available</p>

<%} %>

<section class="intro">
  <div class=" h-100" >
    <div class="mask d-flex align-items-center h-100">
      <div class="container">
        <div class="row justify-content-center">
          <div class="table-responsive">
          <p class="text-dark bg-warning text-center h1  m-2">Customer List</p>
              <table class="table table-dark table-lg table-hover text-white table-bordered mb-5 table-lg">
               <tr class="table-warning"> 
				<th> Customer Id</th>
				<th> Customer Name</th>
				<th> Customer Address</th>
				<th> Customer Contact</th>
				<th> Customer Email</th>
				<th> Customer Password</th>
				<th colspan=2>Operations</th>
			</tr>
			
			<c:forEach var="p" items= "${clist }">
			<tr>
				<td>${p.getCustomerid() }</td>
				<td>${p.getCustomername() }</td>
				<td>${p.getCustomeradd() }</td>
				<td>${p.getCustomercontact() }</td>
				<td>${p.getCustomeremail() }</td>
				<td>${p.getCustomerpass() }</td>
				<td><a href="/JustOrganic/cc?action=edit&cid=${p.getCustomerid() }" class="btn btn-success">update</a></td>
				<td><a href="/JustOrganic/cc?action=delete&cid=${p.getCustomerid() }" class="btn btn-danger">delete</a></td>
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