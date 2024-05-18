<%@page import="com.entity.User"%>
<%@page import="com.dao.UserDao"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnection"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../Component/allCSS.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="NavBar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">


			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">All Patients</p>
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
</body>
</html>