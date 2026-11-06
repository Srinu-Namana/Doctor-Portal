<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Doctor</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body style="background-color: #e2e2e2">
	<div class="container mt-5">
		<div class="card " style="width: 25rem;">
			<div class="card-body">
				<h5 class="card-title " align="center">Edit Doctor</h5>
				<f:form modelAttribute="doctor" action="update" method="post">

					<!-- Hidden Doctor ID -->
					<f:hidden path="doctor_id" />

					<div class="mb-3">
						<label class="form-label">Doctor Name</label>
						<f:input path="doctor_name" class="form-control"
							placeholder="Enter doctor name" />
					</div>

					<div class="mb-3">
						<label class="form-label">Specialization</label>
						<f:input path="specialization" class="form-control"
							placeholder="Enter specialization" />
					</div>

					<div class="mb-3">
						<label class="form-label">Qualification</label>
						<f:input path="qualification" class="form-control"
							placeholder="Enter qualification" />
					</div>

					<div class="mb-3">
						<label class="form-label">Experience (Years)</label>
						<f:input path="experience" type="number" class="form-control"
							placeholder="Enter experience" />
					</div>

					<div class="mb-3">
						<label class="form-label">Email</label>
						<f:input path="email" type="email" class="form-control"
							placeholder="Enter email" />
					</div>

					<div class="mb-3">
						<label class="form-label">Phone</label>
						<f:input path="phone" type="tel" class="form-control"
							placeholder="Enter phone number" />
					</div>

					<div class="mb-3">
						<label class="form-label">Gender</label>
						<f:select path="gender" class="form-select">
							<f:option value="">Select Gender</f:option>
							<f:option value="Male">Male</f:option>
							<f:option value="Female">Female</f:option>
							<f:option value="Other">Other</f:option>
						</f:select>
					</div>

					<div class="mb-3">
						<label class="form-label">Hospital Name</label>
						<f:input path="hospital_name" class="form-control"
							placeholder="Enter hospital name" />
					</div>

					<div class="mb-3">
						<label class="form-label">Address</label>
						<f:input path="address" class="form-control"
							placeholder="Enter address" />
					</div>

					<div class="mb-3">
						<label class="form-label">Consultation Fee</label>
						<f:input path="consultation_fee" type="number" step="0.01"
							class="form-control" placeholder="Enter consultation fee" />
					</div>

					<div class="mb-3">
						<label class="form-label">Available Days</label>
						<f:input path="available_days" class="form-control"
							placeholder="Example: Monday-Friday" />
					</div>

					<div class="mb-3">
						<label class="form-label">Available Time</label>
						<f:input path="available_time" class="form-control"
							placeholder="Example: 10 AM - 5 PM" />
					</div>

					<div class="mb-3">
						<label class="form-label">Status</label>
						<f:select path="status" class="form-select">
							<f:option value="">Select Status</f:option>
							<f:option value="Available">Available</f:option>
							<f:option value="Unavailable">Unavailable</f:option>
						</f:select>
					</div>

					<div class="text-center mt-4">

						<input type="submit" value="Update Doctor" class="btn btn-update">

						<a href="${pageContext.request.contextPath}/index"
							class="btn btn-secondary ms-2"> Cancel </a>

					</div>
				</f:form>
			</div>
		</div>
	</div>
</body>
</html>
