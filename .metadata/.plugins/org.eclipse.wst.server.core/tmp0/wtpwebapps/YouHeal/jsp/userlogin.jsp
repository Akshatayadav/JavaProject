<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section class="vh-75 gradient-custom-2" >
  <div class="container py-5 h-75">
    <div class="row d-flex justify-content-center align-items-center h-75">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="https://images.pexels.com/photos/4266948/pexels-photo-4266948.jpeg"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                <form action="/YouHeal/AdminLogin" method="post"/>
                <input type="hidden" name="action" value="userlogin">

                  <div class="d-flex align-items-center justify-content-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-1" style="color: #ff6219;"></i>
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/lotus.webp"
                    style="width: 100px;" alt="logo">
                    <span class="h2 fw-bold mb-0">YouHeal</span>
                  </div>

                  <h5 class="fw-normal text-center h3 mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>
				  <c:if test="${not empty errmsg }">
					<p class="text-center text-danger fs-5">${errmsg }</p>
					<c:remove var="errmsg" scope="session"/>
				</c:if>
                  <div class="form-outline mb-4">
                    <input type="email" id="form2Example17" name="email" placeholder="Email" autocomplete="false" class="form-control form-control-lg" />
                    
                  </div>

                  <div class="form-outline mb-4">
                    <input type="password" id="form2Example27" name="password" placeholder="password" autocomplete="false" class="form-control form-control-lg" />
                    
                  </div>
					<div class="text-center pt-1 mb-5 pb-1">
                    <button type="submit" class="btn btn-dark btn-lg btn-block fa-lg  mb-3" type="button">Login</button>
                   </div>
                 

                  <a class="small mt-2 text-muted" href="#!">Forgot password?</a>
                  <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="/YouHeal/jsp/register.jsp"
                      style="color: #393f81;">Register here</a></p>
                  
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>