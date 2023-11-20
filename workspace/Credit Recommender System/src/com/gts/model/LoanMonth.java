package com.gts.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "lend_due")
public class LoanMonth {
	@Id
	private int id;
	private String lender_name;
	private String borrower_name;
	private String month;
	private String month_amount;
	private String status;
	private String o_status;
	private String pay_date;
	private String duration;
	private String penalty;
	private String month_Status;
	
	public String getMonth_Status() {
		return month_Status;
	}
	public void setMonth_Status(String month_Status) {
		this.month_Status = month_Status;
	}
	public String getPenalty() {
		return penalty;
	}
	public void setPenalty(String penalty) {
		this.penalty = penalty;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getPay_date() {
		return pay_date;
	}
	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}
	public String getO_status() {
		return o_status;
	}
	public void setO_status(String o_status) {
		this.o_status = o_status;
	}
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
	public String getBorrower_name() {
		return borrower_name;
	}
	public void setBorrower_name(String borrower_name) {
		this.borrower_name = borrower_name;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMonth_amount() {
		return month_amount;
	}
	public void setMonth_amount(String month_amount) {
		this.month_amount = month_amount;
	}
	

}
