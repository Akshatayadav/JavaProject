<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
String msg=(String) request.getAttribute("msg");
if(msg!=null){
%>
<script type="text/javascript">
alert("<%=msg%>")</script>
<%} %>
<jsp:include page="header.jsp"></jsp:include>
<section class="vh-100 bg-image w-100"
  style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk3vOiRCbV5CCNTPN8NzWtN_HQ787DLojmAg&usqp=CAU'); background-repeat:no-repeat; background-size:cover;  ">
  <div class="mask d-flex align-items-center h-50 ">
    <div class="container h-75">
      <div class="row d-flex justify-content-center align-items-center h-50">
        <div class="col-10 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Add Product here !!!</h2>

              <form action="/JustOrganic/pc" enctype="multipart/form-data" method="post">
              <input type="hidden" name="action" value="addproduct">

                <div class="form-outline mb-3">
                <label class="form-label" for="form3Example1cg">Product Name</label>
                  <input type="text" id="form3Example1cg" name="productname" class="form-control form-control-lg" />
                </div>
                
                <div class="form-outline mb-3">
                <label class="form-label" for="form3Example1cg">Product Type</label>
                </div>
                  
               <div class="form-check  mb-3">
				  <input class="form-check-input " type="radio" name="productcategory" id="flexRadioDefault1" value="fruit">
				  <label class="form-check-label" for="flexRadioDefault1">
				    Fruit
				  </label>
				</div>
				<div class="form-check mb-3">
				
				  <input class="form-check-input " type="radio" name="productcategory" id="flexRadioDefault2" value="vegetable">
				  <label class="form-check-label" for="flexRadioDefault2">
				    Vegetable
				  </label>
				</div>
                <div class="form-outline mb-3">
                <label class="form-label" for="form3Example1cg">Product Weight</label>
                  <input type="number" id="form3Example1cg" name="productweight"  class="form-control form-control-lg min=1 step=0.5" />
                  
                </div>
                
                <div class="form-outline mb-3">
                <label class="form-label" for="form3Example3cg">Product Price </label>
                  <input type="number" id="form3Example3cg" name="productprice"  class="form-control form-control-lg" />
                  
                </div>
                
                <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Product Image</label>
				    <input type="file" class="form-control form-control-lg" name="productimage" id="exampleInputPassword1">
				</div>

            

                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Add Product</button>
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