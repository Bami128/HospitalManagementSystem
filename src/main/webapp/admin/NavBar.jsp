<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-stethoscope"></i> Hospital MS</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				<li class="nav-item"><a class="nav-link active" href="index.jsp">HOME</a></li>
				<li class="nav-item"><a class="nav-link active">|</a></li>
				<li class="nav-item"><a class="nav-link active" href="doctor.jsp">ADD DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link active">|</a></li>
				<li class="nav-item"><a class="nav-link active" href="view_doctor.jsp">VIEW DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link active">|</a></li>
				<li class="nav-item"><a class="nav-link active" href="signup.jsp">ADD PATIENT</a></li>
				<li class="nav-item"><a class="nav-link active">|</a></li>
				<li class="nav-item"><a class="nav-link active" href="all_patients.jsp">VIEW ALL PATIENTS</a></li>
				<li class="nav-item"><a class="nav-link active">|</a></li>
				<li class="nav-item"><a class="nav-link active" href="patient.jsp">VIEW PATIENT APPOINTMENTS</a></li>
				


			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="/HospitalManagementSystem/AdminLogout">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>