<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.entity.User"%>
<%@page import="com.dao.UserDao"%>
<%@page import="com.db.DBConnection"%>
<%@page import="java.util.List"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>
<%@include file="../Component/allCSS.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style> 

</head>
<body>
<%@include file="NavBar.jsp" %>

<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Register</p>
						
						
						
						<c:if test="${not empty sucMsg}">
                            <p class="text-center text-success fs-6 fw-bold font-monospace">${sucMsg}</p>
                            <c:remove var="sucMsg" scope="session" />
                        </c:if>

                        <!-- Error Message -->
                        <c:if test="${not empty errorMsg}">
                            <p class="text-center text-danger fs-6 fw-bold font-monospace">${errorMsg}</p>
                            <c:remove var="errorMsg" scope="session" />
                        </c:if>
						
						
						
							<form action="/HospitalManagementSystem/RegisterServlet" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input required
									name="fullname" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label> <input required
									name="email" type="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>

							<button type="submit" class="btn bg-dark text-white col-md-12">Register</button>
						</form>
					</div>
				</div>
			</div>
			
			
			<div class="col-md-8">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Patients Details</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger fw-bold font-monospace">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success fw-bold font-monospace" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Email</th>
									<th scope="col">Password</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							
							
							<tbody>
								<%
								UserDao dao2 = new UserDao(DBConnection.getConn());
								List<User> user = dao2.getAllUsers();
								for (User d : user) {
								%>
								<tr>
									<td><%=d.getFullName()%></td>
									<td><%=d.getEmail()%></td>		
									<td><%=d.getPassword()%></td>					
									<td><a
										href="/HospitalManagementSystem/DeleteUser?id=<%=d.getId()%>"
										class="btn btn-sm btn-danger">Delete</a></td>
								</tr>
								<%
								}
								%>
						</tbody>
						
						
						
						
					</table>
				</div>
			</div>
		</div>
			
			
			
			
			
			
			
			
		</div>
	</div>
	<!-- /////////////////////////////////////////////////////////////////////////////////////////////// -->
				



</body>
</html>