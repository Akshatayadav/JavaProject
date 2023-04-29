<html>

<head>
<title> Hospital</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>


</head>



</html>


<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
<%@include file="allcss.jsp" %>
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"> <i class="fa-solid fa-house-chimney-medical"></i> MEDI HOME</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
       
        <li class="nav-item"> 
          <a class="nav-link active" aria-current="page" href="home.jsp">  HOME</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor_login.jsp">DOCTOR</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">PATIENT</a>
        </li>
   <li  class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">Admin</a>
                        <ul class="dropdown-menu">
                             <li>
                                <a href="/Hospital_System/adl" class="dropdown-item">Logout</a>
                            </li>
                            
                     
                        </ul>
                    </li>
       
      
      </ul>
      
    </div>
    
    
  </div>
</nav>
</body>