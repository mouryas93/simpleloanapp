package com.activeweb.app.rowmappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.activeweb.app.beans.LoanApplication;

public class LoanApplicationRowMapper implements RowMapper<LoanApplication> {

	@Override
	public LoanApplication mapRow(ResultSet rs, int rowNum) throws SQLException {

		LoanApplication application = new LoanApplication();
		application.setApplicationId(rs.getInt("applicationid"));
		application.setFirstName(rs.getString("firstName"));
		application.setLastName(rs.getString("lastName"));
		application.setCity(rs.getString("address"));

		return application;

	}

}
