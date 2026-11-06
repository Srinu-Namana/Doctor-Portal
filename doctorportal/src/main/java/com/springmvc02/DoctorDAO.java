package com.springmvc02;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

public class DoctorDAO {

	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {

		this.jdbcTemplate = jdbcTemplate;

	}
	
	public int insert(Doctor doctor) {

	    String sql = "INSERT INTO doctor "
	            + "(doctor_name, specialization, qualification, experience, email, phone, "
	            + "gender, hospital_name, address, consultation_fee, available_days, "
	            + "available_time, status) "
	            + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";

	    return jdbcTemplate.update(
	            sql,
	            doctor.getDoctor_name(),
	            doctor.getSpecialization(),
	            doctor.getQualification(),
	            doctor.getExperience(),
	            doctor.getEmail(),
	            doctor.getPhone(),
	            doctor.getGender(),
	            doctor.getHospital_name(),
	            doctor.getAddress(),
	            doctor.getConsultation_fee(),
	            doctor.getAvailable_days(),
	            doctor.getAvailable_time(),
	            doctor.getStatus()
	    );
	}

	public List<Doctor> getAllDoctors() {

		String sql = "select * from doctor";
		return jdbcTemplate.query(sql, new RowMapperImpl());
	}
	

public int delete(int id) {

    String sql = "DELETE FROM doctor WHERE doctor_id = ?";

    return jdbcTemplate.update(sql, id);
}



public Doctor getDoctor(Integer id) {

    String sql = "SELECT * FROM doctor WHERE doctor_id = ?";

    return jdbcTemplate.queryForObject(
            sql,
            new RowMapperImpl(),
            id
            
    );
}


public int update(Doctor doctor) {

    String sql = "UPDATE doctor SET "
            + "doctor_name=?, "
            + "specialization=?, "
            + "qualification=?, "
            + "experience=?, "
            + "email=?, "
            + "phone=?, "
            + "gender=?, "
            + "hospital_name=?, "
            + "address=?, "
            + "consultation_fee=?, "
            + "available_days=?, "
            + "available_time=?, "
            + "status=? "
            + "WHERE doctor_id=?";

    return jdbcTemplate.update(sql,
            doctor.getDoctor_name(),
            doctor.getSpecialization(),
            doctor.getQualification(),
            doctor.getExperience(),
            doctor.getEmail(),
            doctor.getPhone(),
            doctor.getGender(),
            doctor.getHospital_name(),
            doctor.getAddress(),
            doctor.getConsultation_fee(),
            doctor.getAvailable_days(),
            doctor.getAvailable_time(),
            doctor.getStatus(),
            doctor.getDoctor_id()
    );
}
	
}
