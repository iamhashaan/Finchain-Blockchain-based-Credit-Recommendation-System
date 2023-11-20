package com.gts.dao;

import java.util.List;

import com.gts.model.Borrower_Income;
import com.gts.model.ClientModel;
import com.gts.model.DocumentModel;
import com.gts.model.Due_Month;
import com.gts.model.Feedback;
import com.gts.model.Lender_Policy;
import com.gts.model.LoanMonth;
import com.gts.model.Month;
import com.gts.model.PersonalModel;
import com.gts.model.Request;
import com.gts.model.lending_history;

public interface ClientDao {
	public boolean save(ClientModel client);

	public String login(String username, String password);

	public List<ClientModel> getList();

	public List<ClientModel> getList(String username);

	public boolean save(PersonalModel model);

	public List<PersonalModel> getListt();

	public boolean saveDoc(DocumentModel doc);

	public List<DocumentModel> getDoc();

	public List<DocumentModel> getDoc(String username);

	public boolean save(Borrower_Income income);

	public List<Borrower_Income> getIncome();

	public List<PersonalModel> getListt(String username, String type);

	public List<DocumentModel> getDoc(String username, String type);

	public boolean save(Lender_Policy policy);

	public List<Lender_Policy> getPolicy();

	public List<Lender_Policy> getPolicy(String username, String type);
	
	public List<Lender_Policy> getPolicyy(String username, String type);

	public boolean save(Request policy);

	public List<Request> getRequest();

	public List<Request> getRequest(String username);

	public List<Request> getHistroy(String username);

	public boolean update(String username, String status, String name, String type);

	public boolean updatePolicy(String username, String status, String type);

	public boolean updateStatus(String username, String status);

	public boolean updateStatus1(String username, String status);

	public boolean updateStatusMoney(String username, String status);

	public boolean saveMonth(Due_Month month);

	public List<Due_Month> getMonth(String lender_name, String dues, String types, String amount);

	public boolean saveLoan(LoanMonth loan);

	public List<LoanMonth> getLoanMonth();

	public List<LoanMonth> getLoanMonth(String month, String borrower_name);

	public boolean save(Month month);

	public List<Month> getLoan_Due(String lender, String borrower, String types, String amount, String due);

	public boolean updatePayment(String lender_name, String borrower_name, String month_Status, String pay_date,
			String month, String status);
	
	public boolean updatePayment(String lender_name, String borrower_name, String month_Status, String pay_date,
			String month, String status,String penalty,String month_amount);
	public List<Lender_Policy> getLender(String lender_name,String type);
	public boolean saveFeedback(Feedback feed);
	public List<Feedback> getfFeedbacks(String borrower_name);
	
	public boolean saveHistory(lending_history history);
	public List<lending_history> getHistory(String lender_name);
	
	
	public List<Month> getLoan_Dues(String lender, String borrower, String status, String amount, String due);

	

}
