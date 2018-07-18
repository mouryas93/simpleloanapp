package com.activeweb.app.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.activeweb.app.beans.LoanApplication;
import com.activeweb.app.service.ApplicationDecisionService;
import com.activeweb.auto.constants.AutoLoanAppConstants;

@Controller
public class ApplicationController {

	@Autowired
	ApplicationDecisionService appService;

	@RequestMapping(value = "/apply", method = RequestMethod.POST)
	public @ResponseBody Object submitApplication(@Valid @RequestBody LoanApplication application, Model model,
			BindingResult bindingResult) {

		System.out.println("Data in object..." + application);

		return appService.applyLoan(application);
	}

	// Testing pending
	@RequestMapping(value = "/formapply", method = RequestMethod.POST)
	public @ResponseBody Object submitApplicationForm(@Valid @ModelAttribute LoanApplication application, Model model,
			BindingResult bindingResult) {

		System.out.println("Data in object..." + application);

		if (bindingResult.hasErrors()) {
			return AutoLoanAppConstants.ERRORPAGE;
		}

		appService.applyLoan(application);

		model.addAttribute("application_status", "approved");

		return AutoLoanAppConstants.DECISIONPAGE;
	}

	@RequestMapping(value = "/appsCount", method = RequestMethod.GET)
	public String getAppsCount(Model model) {
		model.addAttribute("count", appService.getPendingAppsCount());
		return AutoLoanAppConstants.SIMPLELOANAPPPAGE;
	}

	// Testing pending
	@RequestMapping(value = "/application/{applicationId}", method = RequestMethod.GET)
	public String getApplication(@PathVariable Integer applicationId, Model model) {
		model.addAttribute("application", appService.getApplication(applicationId));
		return AutoLoanAppConstants.SIMPLELOANAPPPAGE;
	}

	@RequestMapping(value = "/application", method = RequestMethod.POST)
	public String deleteApplication(@ModelAttribute LoanApplication loanApplication, Model model) {
		
		appService.deleteApplication(loanApplication.getApplicationId());
		
		model.addAttribute("application_status", "SUCCESS");
		
		return AutoLoanAppConstants.DECISIONPAGE;
	}

	@RequestMapping(value = "/closurepage", method = RequestMethod.GET)
	public String deletepage(Model model) {
		model.addAttribute("loanApplication", new LoanApplication());
		return AutoLoanAppConstants.DELETEPAGE;
	}

}
