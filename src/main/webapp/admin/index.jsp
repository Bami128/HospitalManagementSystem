<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.db.DBConnection"%>
<%@page import="com.dao.DoctorDao"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<%@include file="../Component/allCSS.jsp" %>


<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style> 


</head>
<body>
<%@include file="NavBar.jsp"%>


<c:if test="${ empty adminObj }">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>
<!-- 	used to handle cases where a user needs to be authenticated or logged in before accessing certain pages. 
	If the user is not logged in (adminObj is empty), they are redirected to the login page. -->

<div class="container p-5">
		<p class="text-center fs-3">Admin Dashboard</p>
		<c:if test="${not empty errorMsg}">
			<p class="fs-6 text-center text-danger fw-bold font-monospace">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<c:if test="${not empty succMsg}">
			<div class="fs-6 text-center text-success fw-bold font-monospace" role="alert">${succMsg}</div>
			<c:remove var="succMsg" scope="session" />
		</c:if>
		
		<%
		DoctorDao dao = new DoctorDao(DBConnection.getConn());
		%>
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center info.bg-gradient">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctors <br><%=dao.countDoctor()%>
						</p>
					</div>
				</div>
			</div>
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center info.bg-gradient">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
							Patients <br><%=dao.countUser()%>
						</p>
					</div>
				</div>
			</div>			
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
<div class="col-md-4">
		 <div class="card paint-card">
            <div class="card-body text-center info.bg-gradient">
                <i class="far fa-calendar-check fa-3x"></i><br>
                <p class="fs-4 text-center">
                    Total Appointments <br><%=dao.countAppointment()%>
                </p>
            </div>
        </div>
</div>

<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
			<div class="col-md-4 mt-2">

				<div class="card paint-card " data-bs-toggle="modal"
					data-bs-target="#exampleModal">
					<div class="card-body text-center info.bg-gradient">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Specialists <br><%=dao.countSpecialists()%>
						</p>
					</div>
				</div>

			</div>

		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Specialist</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
				
				
					<form action="/HospitalManagementSystem/AddSpecialist" method="post">

						<div class="form-group">
							<label>Enter Specialist Name</label> <input type="text"
								name="specName" class="form-control">
						</div>
						<div class="text-center mt-3">
							<button type="submit" class="btn btn-primary">Add</button>
						</div>

					</form>
					
					

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>
<!-- //////////////////////////////////////////////////////////////////////////////////////////// -->





</body>
</html>