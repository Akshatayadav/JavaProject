<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,in.jo.pojo.*,in.jo.dao.* "%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  opacity:.75;
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
String msg=(String)request.getAttribute("msg");
OrderDao odao= new OrderDao();
String email=(String)session.getAttribute("uname");
List<Order> orderlist=(List<Order>)session.getAttribute("orderlist");
if(msg!=null){%>
	<p class="text-danger text-center h1 m-5"><script type="text/javascript">
alert("<%=msg%>")</script></p>
<%} %>
<%if(orderlist.isEmpty()){ %>

<p class="text-danger text-center h1 m-5"><%="Your Orderlist is Empty"%></p>
<% } else { %>

<section class="intro">
  <div class=" h-100" >
    <div class="mask d-flex align-items-center h-100">
      <div class="container">
        <div class="row justify-content-center">
          <div class="table-responsive">
          <p class=" bg-warning text-dark text-center h1  m-2">Order List</p>
              <table class="table table-dark  table-hover text-white table-bordered mb-5 table-lg">
               <tr class="table-warning"> 
				<th> Order id</th>
				<th> Order Total</th>
				<th> Order Date</th>
			
			</tr>
		
		<c:forEach var="c" items="${orderlist}">
			<tr>
			 	
			 	<td>${c.getOrderid()}</td>
			 	<td>${c.getOrdertotal()}</td>
			 	<td>${c.getOrdedate() }</td>
			 	
			</tr>




		</c:forEach>

              </table>
            
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


	<%} %>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>