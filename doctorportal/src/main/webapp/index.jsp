
<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" 
		 isELIgnored="false"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Management System</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	background: linear-gradient(135deg, #e0f2fe, #f0fdfa);
	min-height: 100vh;
	font-family: Arial, sans-serif;
}

.header {
	background: white;
	padding: 25px;
	border-radius: 15px;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
}

.table-container {
	background: white;
	padding: 25px;
	border-radius: 15px;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
}

.portal-title {
	color: #0d6efd;
	font-weight: bold;
}

.table thead th {
	background-color: #0d6efd;
	color: white;
	white-space: nowrap;
	font-size: 13px;
}

.table tbody td {
	vertical-align: middle;
	white-space: nowrap;
	font-size: 13px;
}

.footer {
	color: #6c757d;
}
</style>

</head>

<body>

	<div class="container-fluid px-4 py-5">

		<!-- Header -->
		<div class="header mb-4">

			<div
				class="d-flex justify-content-between align-items-center flex-wrap gap-3">

				<div>
					<h2 class="portal-title mb-2">
						<i class="bi bi-hospital"></i> Doctor Portal
					</h2>

					<p class="text-muted mb-0">Doctor Management System</p>
				</div>

				<a href="${pageContext.request.contextPath}/add-doctor"
					class="btn btn-primary rounded-pill px-4"> <i
					class="bi bi-plus-circle"></i> Add New Doctor

				</a>

			</div>

		</div>


		<!-- Doctor Details Table -->
		<div class="table-container">

			<h4 class="fw-bold mb-4">
				<i class="bi bi-people-fill text-primary"></i> Doctor Details
			</h4>

			<div class="table-responsive">

				<table
					class="table table-hover table-bordered text-center align-middle">

					<thead>
						<tr>
							<th>Doctor ID</th>
							<th>Doctor Name</th>
							<th>Specialization</th>
							<th>Qualification</th>
							<th>Experience</th>
							<th>Email</th>
							<th>Phone</th>
							<th>Gender</th>
							<th>Hospital Name</th>
							<th>Address</th>
							<th>Consultation Fee</th>
							<th>Available Days</th>
							<th>Available Time</th>
							<th>Status</th>
							<th>Action</th>
						</tr>
					</thead>

					<tbody>

						<c:forEach var="doc" items="${list}">

							<tr>

								<td><c:out value="${doc.doctor_id}" /></td>
								<td class="fw-bold"><c:out value="${doc.doctor_name}" /></td>
								<td><c:out value="${doc.specialization}" /></td>
								<td><c:out value="${doc.qualification}" /></td>
								<td><c:out value="${doc.experience}" /> Years</td>
								<td><c:out value="${doc.email}" /></td>
								<td><c:out value="${doc.phone}" /></td>
								<td><c:out value="${doc.gender}" /></td>
								<td><c:out value="${doc.hospital_name}" /></td>
								<td><c:out value="${doc.address}" /></td>
								<td>₹ <c:out value="${doc.consultation_fee}" /></td>
								<td><c:out value="${doc.available_days}" /></td>
								<td><c:out value="${doc.available_time}" /></td>
								<td><c:choose>

										<c:when test="${doc.status eq 'Available'}">
											<span class="badge bg-success rounded-pill px-3 py-2">
												<i class="bi bi-check-circle"></i> Available
											</span>
										</c:when>

										<c:when test="${doc.status eq 'Unavailable'}">
											<span class="badge bg-danger rounded-pill px-3 py-2">
												<i class="bi bi-x-circle"></i> Unavailable
											</span>
										</c:when>

										<c:otherwise>
											<span class="badge bg-secondary"> Unknown </span>
										</c:otherwise>

									</c:choose></td>

								<!-- Action Buttons -->
								<td>
									<div class="d-flex justify-content-center gap-2">

										<!-- Edit Button -->
										<a
											href="${pageContext.request.contextPath}/edit-doctor/${doc.doctor_id}"
											class="btn btn-outline-primary btn-sm rounded-pill"> <i
											class="bi bi-pencil-square"></i> Edit
										</a>

										<!-- Delete Button -->
										<a
											href="${pageContext.request.contextPath}/delete-doctor/${doc.doctor_id}"
											class="btn btn-outline-danger btn-sm rounded-pill"
											onclick="return confirm('Are you sure you want to delete this doctor?')">

											<i class="bi bi-trash3"></i> Delete
										</a>

									</div>
								</td>

							</tr>

						</c:forEach>


						<!-- Empty Records -->
						<c:if test="${empty list}">

							<tr>
								<td colspan="15" class="py-5 text-center"><i
									class="bi bi-clipboard-x fs-1 text-secondary"></i>

									<h5 class="mt-3 fw-bold text-secondary">No Doctor Records
										Found</h5>

									<p class="text-muted">Start by adding your first doctor.</p> <a
									href="${pageContext.request.contextPath}/add-doctor"
									class="btn btn-primary rounded-pill px-4"> <i
										class="bi bi-plus-circle"></i> Add New Doctor

								</a></td>
							</tr>

						</c:if>

					</tbody>

				</table>

			</div>

		</div>


		<!-- Footer -->
		<div class="text-center mt-4 footer">

			<i class="bi bi-hospital"></i> Doctor Management System | All Rights
			Reserved

		</div>

	</div>

</body>
</html>
