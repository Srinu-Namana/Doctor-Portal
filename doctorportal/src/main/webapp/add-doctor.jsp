<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%> --%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Doctor</title>

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet">

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js">
</script>
</head>

<body style="background-color: #e2e2e2">

    <div class="container mt-5 d-flex justify-content-center">

        <div class="card shadow" style="width: 35rem;">

            <div class="card-body">

                <h5 class="card-title text-center mb-4">Add Doctor</h5>

                <f:form modelAttribute="doctor" action="add" method="post">

                    <div class="form-group mb-3">
                        <label>Doctor Name</label>
                        <f:input path="doctor_name" class="form-control"
                            placeholder="Enter doctor name" />
                    </div>

                    <div class="form-group mb-3">
                        <label>Specialization</label>
                        <f:input path="specialization" class="form-control"
                            placeholder="Enter specialization" />
                    </div>

                    <div class="form-group mb-3">
                        <label>Qualification</label>
                        <f:input path="qualification" class="form-control"
                            placeholder="Enter qualification" />
                    </div>

                    <div class="form-group mb-3">
                        <label>Experience (Years)</label>
                        <f:input path="experience" type="number"
                            class="form-control" placeholder="Enter experience" />
                    </div>

                    <div class="form-group mb-3">
                        <label>Email</label>
                        <f:input path="email" type="email" class="form-control"
                            placeholder="Enter email address" />
                    </div>

                    <div class="form-group mb-3">
                        <label>Phone</label>
                        <f:input path="phone" type="tel" class="form-control"
                            placeholder="Enter phone number" />
                    </div>

                    <div class="form-group mb-3">
                        <label>Gender</label>
                        <f:select path="gender" class="form-control">
                            <f:option value="">Select Gender</f:option>
                            <f:option value="Male">Male</f:option>
                            <f:option value="Female">Female</f:option>
                            <f:option value="Other">Other</f:option>
                        </f:select>
                    </div>

                    <div class="form-group mb-3">
                        <label>Hospital Name</label>
                        <f:input path="hospital_name" class="form-control"
                            placeholder="Enter hospital name" />
                    </div>

                    <div class="form-group mb-3">
                        <label>Address</label>
                        <f:input path="address" class="form-control"
                            placeholder="Enter address" />
                    </div>

                    <div class="form-group mb-3">
                        <label>Consultation Fee</label>
                        <f:input path="consultation_fee" type="number"
                            step="0.01" class="form-control"
                            placeholder="Enter consultation fee" />
                    </div>

                    <div class="form-group mb-3">
                        <label>Available Days</label>
                        <f:input path="available_days" class="form-control"
                            placeholder="Example: Monday-Friday" />
                    </div>

                    <div class="form-group mb-3">
                        <label>Available Time</label>
                        <f:input path="available_time" class="form-control"
                            placeholder="Example: 10 AM - 5 PM" />
                    </div>

                    <div class="form-group mb-3">
                        <label>Status</label>
                        <f:select path="status" class="form-control">
                            <f:option value="">Select Status</f:option>
                            <f:option value="Available">Available</f:option>
                            <f:option value="Unavailable">Unavailable</f:option>
                        </f:select>
                    </div>

                    <div class="text-center mt-4">
                        <input type="submit" value="Add Doctor"
                            class="btn btn-warning px-4">
                    </div>

                </f:form>

            </div>
        </div>
    </div>

</body>
</html>
```