<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.util.*,in.jo.pojo.*,in.jo.dao.*" %>
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
List<Cart> clist=(List<Cart>)session.getAttribute("clist");
if(msg!=null){%>
	<p class="text-danger text-center h1 m-5"><script type="text/javascript">
alert("<%=msg%>")</script></p>
<%} %>
<%if(clist.isEmpty()){ %>

<p class="text-danger text-center h1 m-5"><%="Your Cart is Empty"%></p>
<% } else { %>
<section class="intro">
  <div class=" h-100" >
    <div class="mask d-flex align-items-center h-100">
      <div class="container">
        <div class="row justify-content-center">
          <div class="table-responsive">
          <p class="text-dark bg-warning text-center h1  m-2">My Cart</p>
              <table class="table table-dark  table-hover text-white table-bordered mb-5 table-lg">
              <tr class="table-primary"> 
					<th> Product Image</th>
					<th> Product Name</th>
					<th> Product Category</th>
					<th> Product Weight</th>
					<th> Product Price</th>
					<th> Product Quantity</th>
					<th colspan=2>Operations</th>
				</tr>
			
				<c:forEach var="c" items="${clist }">
				<tr>
				 	<td><img width="100px" height="80px" src="/JustOrganic/pic?productid=${c.getProduct().getProductid()}"></td>
				 	<td>${c.getProduct().getProductname() }</td>
				 	<td>${c.getProduct().getProductcategory() }</td>
				 	<td>${c.getProduct().getProductweight() }</td>
				 	<td>${c.getProduct().getProductprice() }</td>
				 	<td>${c.getQuantity() }</td>
				 	<td><a href="" class="btn btn-success">Order</a></td>
					<td><a href="/JustOrganic/cartc?action=delete&pid=${c.getCartid()}" class="btn btn-danger">delete</a></td>
				</tr>
			
			
			
			
			</c:forEach>
			
				<tr>
				
				<td colspan=4>Total</td>
				<td><%=odao.getTotal(email) %>
				<td colspan=3 class="text-center"><a href="/JustOrganic/orderc?action=placeorder" class="btn btn-success">Order</a>
				</tr>
				
              </table>
            
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<table class="table table-hove table-striped">
	
	</table>
	<%} %>
</body>
</html>