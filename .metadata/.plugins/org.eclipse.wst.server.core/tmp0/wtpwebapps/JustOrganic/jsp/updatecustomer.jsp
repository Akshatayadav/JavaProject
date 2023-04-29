<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="in.jo.pojo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
.gradient-custom-3 {
/* fallback for old browsers */
background: #84fab0;


/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5))
}
.gradient-custom-4 {
/* fallback for old browsers */
background: #84fab0;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1))
}
</style>
</head>
<body>
<%
Customer c=(Customer)session.getAttribute("customer");
String msg=(String) request.getAttribute("msg");
if(msg!=null){
%>
<script type="text/javascript">
alert("<%=msg%>")</script>
<%} %>
<jsp:include page="header.jsp"></jsp:include>
<section class="vh-100 bg-image w-100"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');  ">
  <div class="mask d-flex align-items-center h-50 ">
    <div class="container h-75">
      <div class="row d-flex justify-content-center align-items-center h-50">
        <div class="col-10 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Update here</h2>

              <form action="/JustOrganic/cc"  method="post">
              <input type="hidden" name="action" value="updatecustomer">
              
              <div class="form-outline mb-3">
                <label class="form-label" for="form3Example1cg">Id</label>
                  <input type="text" id="form3Example1cg" name="customerid" value="<%= c.getCustomerid() %>" class="form-control form-control-lg" readonly="readonly"/>
                  
                </div>

                <div class="form-outline mb-3">
                <label class="form-label" for="form3Example1cg">Name</label>
                  <input type="text" id="form3Example1cg" name="customername" value="<%=c.getCustomername() %>" class="form-control form-control-lg" />
                  
                </div>
                <div class="form-outline mb-3">
                <label class="form-label" for="form3Example1cg">Enter Address</label>
                  <input type="text" id="form3Example1cg" name="customeradd" value="<%= c.getCustomeradd() %>" class="form-control form-control-lg" />
                  
                </div>
                <div class="form-outline mb-3">
                <label class="form-label" for="form3Example1cg">Enter Contact</label>
                  <input type="text" id="form3Example1cg" name="customercontact"  value="<%= c.getCustomercontact() %>" class="form-control form-control-lg" />
                  
                </div>
                
                <div class="form-outline mb-3">
                <label class="form-label" for="form3Example3cg">Your Email</label>
                  <input type="email" id="form3Example3cg" name="customeremail" value="<%= c.getCustomeremail() %>" class="form-control form-control-lg" />
                  
                </div>

                <div class="form-outline mb-3">
                <label class="form-label" for="form3Example4cg">Password</label>
                 <input type="password" id="form3Example4cg" name="customerpass" value="<%= c.getCustomerpass() %>" class="form-control form-control-lg" />
                  
                </div>

                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Update Details</button>
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