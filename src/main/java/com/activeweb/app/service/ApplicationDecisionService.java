package com.activeweb.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.activeweb.app.beans.LoanApplication;
import com.activeweb.app.dao.ApplicationDAO;

@Component
public class ApplicationDecisionService {

	@Autowired
	ApplicationDAO appDAO;
	
	public void applyLoan(LoanApplication application) {
		
		
		appDAO.persistApplication(application);
		
	}
	
}
