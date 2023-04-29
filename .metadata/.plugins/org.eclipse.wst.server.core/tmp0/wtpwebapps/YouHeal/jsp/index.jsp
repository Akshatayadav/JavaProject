
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<div id="carouselExampleControls" class="carousel slide"data-bs-ride="carousel" >
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://images.pexels.com/photos/6129044/pexels-photo-6129044.jpeg" class="d-block w-100" alt="Wild Landscape" />
        </div>
        <div class="carousel-item">
            <img src="https://images.pexels.com/photos/5215012/pexels-photo-5215012.jpeg" class="d-block w-100" alt="Camera" />
        </div>
        <div class="carousel-item">
            <img src="https://images.pexels.com/photos/3957993/pexels-photo-3957993.jpeg" class="d-block w-100" alt="Exotic Fruits" />
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-mdb-target="#carouselExampleControls" data-mdb-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-mdb-target="#carouselExampleControls" data-mdb-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>


<hr>

<div class="container p-2">
 	<p class="text-center fs-2"> Our Team</p>
  <div class="row">
  	<div class="col-md-3"> 
  		<div class="card paint-card"> 
  		<div class="card-body text-center"> 
  		<img src="https://images.pexels.com/photos/5215009/pexels-photo-5215009.jpeg" width="250px" height="300px">
  		<p class="fw-bold fs-5"> Suman sumani</p>
  		<p class="fs-7">(CEO & CHAIRMAN)</p>
  		
  		</div>
  		</div>
  	</div>
  	
  	
  	<div class="col-md-3"> 
  		<div class="card paint-card"> 
  		<div class="card-body text-center"> 
  		<img src="https://images.pexels.com/photos/15559912/pexels-photo-15559912.jpeg" width="250px" height="300px">
  		<p class="fw-bold fs-5"> Rahul Mehta</p>
  		<p class="fs-7">(NEUROLOGIST)</p>
  		
  		</div>
  		</div>
  	</div>
  	
  	
  	<div class="col-md-3"> 
  		<div class="card paint-card"> 
  		<div class="card-body text-center"> 
  		<img src="https://images.pexels.com/photos/6749753/pexels-photo-6749753.jpeg" width="250px" height="300px">
  		<p class="fw-bold fs-5"> Ronita Banarjee</p>
  		<p class="fs-7">(OPHTHALMOLOGIST)</p>
  		
  		</div>
  		</div>
  	</div>
  	
  	
  	<div class="col-md-3"> 
  		<div class="card paint-card"> 
  		<div class="card-body text-center"> 
  		<img src="https://images.pexels.com/photos/5207118/pexels-photo-5207118.jpeg" width="250px" height="300px">
  		<p class="fw-bold fs-5"> Erica Fernandis</p>
  		<p class="fs-7">(DERMATOLOGIST)</p>
  		
  		</div>
  		</div>
  	</div>
  </div>
  </div>


</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>