package com.gts.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "lending_history")
public class lending_history {
	@Id
	private int id;
	private String lender_name;
	private String dues;
	private String types;
	private String borrower_name;
	private String amount;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLender_name() {
		return lender_name;
	}
	public void setLender_name(String lender_name) {
		this.lender_name = lender_name;
	}
	public String getDues() {
		return dues;
	}
	public void setDues(String dues) {
		this.dues = dues;
	}
	public String getTypes() {
		return types;
	}
	public void setTypes(String types) {
		this.types = types;
	}
	public String getBorrower_name() {
		return borrower_name;
	}
	public void setBorrower_name(String borrower_name) {
		this.borrower_name = borrower_name;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	
	
	

}
