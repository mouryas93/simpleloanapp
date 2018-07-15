package com.activeweb.app.beans;

import java.math.BigDecimal;
import java.util.List;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class LoanApplication {

	@NotNull(message="FirstName should be between 5 to 10 characters")
	@Size(min = 5, max = 10)
	private String firstName;
	@NotNull
	private String lastName;
	private String ssn;
	private String address;
	private String city;
	private Integer zipcode;
	private String cartype;
	private BigDecimal loanAmount;
	private BigDecimal downPayment;
	private List<String> carNames;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Integer getZipcode() {
		return zipcode;
	}

	public void setZipcode(Integer zipcode) {
		this.zipcode = zipcode;
	}

	public String getCartype() {
		return cartype;
	}

	public void setCartype(String cartype) {
		this.cartype = cartype;
	}

	public BigDecimal getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(BigDecimal loanAmount) {
		this.loanAmount = loanAmount;
	}

	

	public List<String> getCarNames() {
		return carNames;
	}

	public void setCarNames(List<String> carNames) {
		this.carNames = carNames;
	}

	@Override
	public String toString() {
		return "LoanApplication [firstName=" + firstName + ", lastName=" + lastName + ", ssn=" + ssn + ", address="
				+ address + ", city=" + city + ", zipcode=" + zipcode + ", cartype=" + cartype + ", loanAmount="
				+ loanAmount + ", carNames=" + carNames + "]";
	}

	public BigDecimal getDownPayment() {
		return downPayment;
	}

	public void setDownPayment(BigDecimal downPayment) {
		this.downPayment = downPayment;
	}

}
