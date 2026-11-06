# Doctor Portal

A doctor management web application built with **Spring MVC** and **Spring JDBC**.
It performs CRUD operations (Create, Read, Update, Delete) on doctor records using `@Controller` classes.

## About the Project

Doctor Portal helps a hospital keep its doctor records in one place. Staff can add doctors, see everyone in a single table, correct details when something changes, and remove doctors who have left.

The project is mainly built to understand how a Spring MVC application works from end to end: the browser sends a request, a controller handles it, a DAO talks to MySQL using `JdbcTemplate`, and a JSP page shows the result.

## Features

- Add a new doctor
- View all doctors in a table
- Update a doctor using a pre-filled form
- Delete a doctor with a confirmation prompt
- Colored status badge (Available / Unavailable) for each doctor
- Friendly message when there are no records
- Responsive pages styled with Bootstrap

## Technologies Used

| Technology | Purpose |
|---|---|
| Java | Backend programming |
| Spring MVC | Request handling with `@Controller` |
| Spring JDBC | Database access using `JdbcTemplate` |
| JSP and JSTL | Web pages |
| Spring Form Tags | Binding forms to the `Doctor` object |
| Bootstrap 5 | Styling |
| MySQL | Database |
| Apache Tomcat 11 | Web server |
| Maven | Build tool |

## How It Works

1. The browser sends a request, for example `GET /edit-doctor/5`.
2. `DispatcherServlet` passes it to the matching method in `DoctorController`.
3. The controller calls `DoctorDAO`, which runs the SQL query using `JdbcTemplate`.
4. The result is added to the `Model` and the controller returns a view name such as `update_doctor`.
5. The view resolver adds the prefix `/` and the suffix `.jsp`, and the JSP page is shown.

After saving, the controller redirects to `/index` (Post-Redirect-Get), so refreshing the page never submits the form twice.

## URLs

| Operation | Method | URL |
|---|---|---|
| View all doctors | GET | `/` or `/index` |
| Add doctor form | GET | `/add-doctor` |
| Save new doctor | POST | `/add` |
| Edit doctor form | GET | `/edit-doctor/{id}` |
| Save changes | POST | `/update-doctor` |
| Delete doctor | GET | `/delete-doctor/{id}` |

Edit shows the form and Update saves it. Both are needed because the form is opened with a GET request and submitted with a POST request.

## Project Files

| File | Purpose |
|---|---|
| `Doctor.java` | Model class with one field for each database column |
| `DoctorDAO.java` | Database methods: `insert`, `getAllDoctors`, `getDoctor`, `update`, `delete` |
| `RowMapperImpl.java` | Converts each database row into a `Doctor` object |
| `DoctorController.java` | Handles all requests and returns view names |
| `dispatcher-servlet.xml` | Component scan, view resolver, data source and `JdbcTemplate` beans |
| `index.jsp` | Doctor list with Edit and Delete buttons |
| `add-doctor.jsp` | Form to add a doctor |
| `update_doctor.jsp` | Pre-filled form to update a doctor |

Java classes are in the package `com.springmvc02`. JSP files are in `src/main/webapp`.

## Database

Database: `hospital_db`, table: `doctor`

```sql
CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;

CREATE TABLE IF NOT EXISTS doctor (
    doctor_id        INT AUTO_INCREMENT PRIMARY KEY,
    doctor_name      VARCHAR(100) NOT NULL,
    specialization   VARCHAR(100),
    qualification    VARCHAR(100),
    experience       INT,
    email            VARCHAR(100),
    phone            VARCHAR(15),
    gender           VARCHAR(10),
    hospital_name    VARCHAR(100),
    address          VARCHAR(200),
    consultation_fee DOUBLE,
    available_days   VARCHAR(50),
    available_time   VARCHAR(50),
    status           VARCHAR(20)
);
```

## Prerequisites

- JDK 17 or newer
- Maven (or Eclipse with built-in Maven support)
- MySQL 8 and MySQL Workbench
- Apache Tomcat 11

## How to Run

1. Clone the project:
   ```
   git clone YOUR_REPOSITORY_URL
   ```
2. Import it into Eclipse as a Maven project.
3. Run the SQL above in MySQL Workbench.
4. In `src/main/webapp/WEB-INF/dispatcher-servlet.xml`, set your MySQL username and password in the `datasource` bean.
5. Right-click the project, choose **Run As > Run on Server**, and select Tomcat 11.
6. Open `http://localhost:8080/YOUR_PROJECT_NAME/` in your browser.

## Screenshots

Add your screenshots to a `screenshots` folder.

![Doctor List](screenshots/doctor-list.png)
![Add Doctor](screenshots/add-doctor.png)
![Update Doctor](screenshots/update-doctor.png)

## Common Problems

| Problem | Fix |
|---|---|
| `JSP file [/update_doctor.jsp] not found` | The JSP file name must match the view name returned by the controller exactly, and the file must be in `src/main/webapp`. Clean the project and restart Tomcat. |
| `Unknown database 'hospital_db'` | Run the SQL script in MySQL Workbench first. |
| `Access denied for user 'root'` | Correct the password in the `datasource` bean and restart Tomcat. |
| 404 after clicking Update Doctor | `DoctorController` must have the `POST /update-doctor` method. |
| Duplicate bean or mapping error at startup | Make sure `DoctorController` exists only once in the project. |

## What I Learned

- How the Spring MVC request flow works from browser to database and back
- Using `@Controller`, `@RequestMapping`, `@PathVariable` and `@ModelAttribute`
- Running SQL safely with `JdbcTemplate` and `RowMapper`
- Binding forms to Java objects with Spring Form tags
- The Post-Redirect-Get pattern
- Fixing common errors such as 404 for JSP files and database connection failures

## Future Enhancements

- Search and filter doctors by specialization
- Pagination for large lists
- Form validation
- Delete using POST instead of GET
- Login and role-based access
- Appointment booking
- Migration to Spring Boot and Spring Data JPA

## Author

**NAMANA LAKSHMI SAI MANIKANTA SRINU**

- GitHub: https://github.com/YOUR_USERNAME
- LinkedIn: https://www.linkedin.com/in/YOUR_PROFILE
