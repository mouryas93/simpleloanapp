package com.activeweb.app.controllers;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.activeweb.app.beans.LoanApplication;
import com.activeweb.app.service.ApplicationDecisionService;

@Controller
public class ApplicationController {
	
	@Autowired
	ApplicationDecisionService appService;

	@RequestMapping(value = "/apply", method = RequestMethod.POST)
	public @ResponseBody Object submitApplication(@RequestBody @Valid LoanApplication application, Model model,
			BindingResult bindingResult) {

		System.out.println("Data in object..." + application);

		Map<String, String> errros = new HashMap<String, String>();
		
		/*if (application.getFirstName().length() > 10) {
			ObjectError error = new ObjectError("firstname", "exceeded 10 chars");
			bindingResult.addError(error);
		}
		
		if(bindingResult.hasErrors()) {
			errros.put("error", "First name length exceeded");
		}
		
		System.out.println(""+bindingResult.getErrorCount());*/
		
		appService.applyLoan(application);

		return errros;
	}		
}	
