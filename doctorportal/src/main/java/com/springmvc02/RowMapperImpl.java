package com.springmvc02;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class RowMapperImpl implements RowMapper <Doctor>{

	@Override
	public Doctor mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Doctor doctor = new Doctor();

		doctor.setDoctor_id(rs.getInt(1));
		doctor.setDoctor_name(rs.getString(2));
		doctor.setSpecialization(rs.getString(3));
		doctor.setQualification(rs.getString(4));
		doctor.setExperience(rs.getInt(5));
		doctor.setEmail(rs.getString(6));
		doctor.setPhone(rs.getString(7));
		doctor.setGender(rs.getString(8));
		doctor.setHospital_name(rs.getString(9));
		doctor.setAddress(rs.getString(10));
		doctor.setConsultation_fee(rs.getDouble(11));
		doctor.setAvailable_days(rs.getString(12));
		doctor.setAvailable_time(rs.getString(13));
		doctor.setStatus(rs.getString(14));
		
		return doctor;
	}

}
