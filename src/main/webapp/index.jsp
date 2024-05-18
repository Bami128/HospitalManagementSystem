<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.db.DBConnection"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>Index Page</title>
<%@include file="Component/allCSS.jsp" %> 

<style type="text/css">

.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

</style>


</head>
<body>
<%@include file="Component/NavBar.jsp" %> 



<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Images/hospital_1.png" class="d-block w-100" alt="..." height="	900px">
    </div>
    <div class="carousel-item">
      <img src="Images/hospital_2.png" class="d-block w-100" alt="..." height="	900px">
    </div>
    <div class="carousel-item">
      <img src="Images/hospital_3.png" class="d-block w-100" alt="..." height="	900px">
    </div>
    <div class="carousel-item">
      <img src="Images/hospital_4.png" class="d-block w-100" alt="..." height="	900px">
    </div>
    <div class="carousel-item">
      <img src="Images/hospital_5.png" class="d-block w-100" alt="..." height="	900px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div class="container p-3">
		<p class="text-center fs-2 ">Key Features of our Hospital</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<h2 class="fs-5">100% Safety</h2>
								<p>Our hospital prioritizes the safety of every patient. We implement rigorous safety protocols and adhere to industry 
								standards to ensure a secure and risk-free environment. Our dedicated staff is trained to handle emergencies and prioritize 
								the well-being of our patients.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
							<h2 class="fs-5">Clean Environment</h2>
								<p >Maintaining a clean and hygienic environment is paramount to us. Our hospital follows strict cleanliness 
								standards, with regular sanitation and sterilization practices. From patient rooms to common areas, we strive to create a 
								pristine and welcoming atmosphere for everyone.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<h2 class="fs-5">Friendly Doctors</h2>
								<p>At our hospital, you'll find a team of highly skilled and compassionate doctors who prioritize patient care. 
								Our friendly doctors take the time to understand your concerns, provide clear explanations, and offer personalized treatment 
								plans. Building strong doctor-patient relationships is at the core of our approach to healthcare.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<h2 class="fs-5">Medical Research</h2>
								<p>We actively engage in medical research to stay at the forefront of healthcare advancements. Our hospital collaborates 
								with research institutions, conducts clinical trials, and invests in innovative technologies. By participating in medical research,
								we aim to contribute to the development of new treatments.</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<img alt="" src="Images/doctor.jpg">
			</div>

		</div>
	</div>
	
		<div class="container p-2">
		<p class="text-center fs-2 ">Our Team</p>
		
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="Images/doctor1.jpg" width="250px" height="350px">
						<p class="fw-bold fs-5">Dr. Cassandra Sterling</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="Images/doctor2.jpg" width="250px" height="350px">
						<p class="fw-bold fs-5">Dr. Victor Ramirez</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="Images/doctor3.jpg" width="250px" height="350px">
						<p class="fw-bold fs-5">Prof. Eleanor Harper</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="Images/doctor4.jpg" width="250px" height="350px">
						<p class="fw-bold fs-5">Dr. Marcus Chen</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

		</div>

	</div>

<%@include file="Component/footer.jsp" %>
</body>
</html>