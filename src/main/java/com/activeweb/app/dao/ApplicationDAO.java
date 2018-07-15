package com.activeweb.app.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.activeweb.app.beans.LoanApplication;

@Repository
public class ApplicationDAO {
	
	@Autowired
	private DataSource dataSource;

	public void persistApplication(LoanApplication application) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.execute("insert into application values(" + "'" + application.getFirstName() + "'," + "'"
				+ application.getLastName() + "'," + "'" + application.getSsn() + "'," + 1006+")");

	}

}
