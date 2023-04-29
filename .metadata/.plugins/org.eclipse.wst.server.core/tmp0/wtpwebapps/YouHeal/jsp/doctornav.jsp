<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="in.yh.pojo.*"%>
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
<%
Doctor doctor=(Doctor)session.getAttribute("doctor");
%>
<!-- Navbar -->
<nav class="navbar navbar-expand-sm sticky-top navbar-dark bg-dark text-white  shadow">
  <!-- Container wrapper -->
  <div class="container-fluid">
    <!-- Toggle button -->
    <button
      class="navbar-toggler"
      type="button"
      data-mdb-toggle="collapse"
      data-mdb-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <i class="fas fa-bars"></i>
    </button>

    <!-- Collapsible wrapper -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <!-- Navbar brand -->
      <a class="navbar-brand mt-6 fas mt-lg-3 h2 " style="font-family:sans-serif;yy ; ;"href="#">
        <img
          src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/lotus.webp"
          height="50" width="50"
          alt="MDB Logo"
          loading="lazy"
        /> YOU HEAL
      </a>
      <!-- Right links -->
      <ul class="navbar-nav me-auto mb-2 mb-xl-0 ">
      
        <li class="nav-item">
          <b><a class="nav-link active" href="doctorindex.jsp">Home</a></b>
        </li>
        <li class="nav-item">
          <b><a class="nav-link active" href="patient.jsp">Patient</a></b>
        </li>
      </ul>
      <!-- Right links -->
    </div>
    <!-- Collapsible wrapper -->

   <div class="btn-group">
  
    <a href="#" class="nav-link dropdown-toggle mx-5" role="button" data-bs-toggle="dropdown"><%= doctor.getName()%></a>
                        <ul class="dropdown-menu">
                        	<li>
                                <a href="/YouHeal/jsp/editdoctor.jsp" class="dropdown-item">Edit Profile</a>
                            </li>
                            <li>
                                <a href="/YouHeal/jsp/changepassworddoctor.jsp" class="dropdown-item">Change Password</a>
                            </li>
                            <li>
                                <a href="/YouHeal/AdminLogin?action=logout" class="dropdown-item">Logout</a>
                            </li>
                            
                     
                        </ul>
</div>
  </div>
  <!-- Container wrapper -->
</nav>
<!-- Navbar -->
</body>
</html>