package com.activeweb.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.activeweb.app.beans.LoanApplication;
import com.activeweb.app.dao.ApplicationDAO;

@Component
public class ApplicationDecisionService {

	@Autowired
	ApplicationDAO appDAO;

	public Integer applyLoan(LoanApplication application) {
		return appDAO.persistApplicationVariation(application);
	}

	public Integer getPendingAppsCount() {
		return appDAO.retrieveApplicationCount();
	}

	public LoanApplication getApplication(Integer applicationId) {
		return appDAO.retrieveApplication(applicationId);
	}

	public boolean deleteApplication(Integer applicationId) {
		return appDAO.deleteApplication(applicationId);
	}
	
}
