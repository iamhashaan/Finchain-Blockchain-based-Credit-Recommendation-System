package com.gts.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gts.dao.ClientDao;
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

@Service
@Transactional
public class ClientServiceImpl implements ClientService {
	ClientDao dao;

	@Autowired
	public void setClient(ClientDao dao) {
		this.dao = dao;
	}

	@Override
	public boolean save(ClientModel client) {
		return dao.save(client);
	}

	@Override
	public String login(String username, String password) {

		return dao.login(username, password);
	}

	@Override
	public List<ClientModel> getList() {

		return dao.getList();
	}

	@Transactional
	@Override
	public boolean save(PersonalModel model) {

		return dao.save(model);
	}

	@Transactional
	@Override
	public boolean saveDoc(DocumentModel doc) {

		return dao.saveDoc(doc);
	}

	@Override
	public List<DocumentModel> getDoc() {
		return dao.getDoc();
	}

	@Override
	public List<ClientModel> getList(String username) {

		return dao.getList(username);
	}

	@Override
	public List<DocumentModel> getDoc(String username) {

		return dao.getDoc(username);
	}

	@Override
	public boolean save(Borrower_Income income) {

		return dao.save(income);
	}

	@Override
	public List<Borrower_Income> getIncome() {
		// TODO Auto-generated method stub
		return dao.getIncome();
	}

	@Override
	public List<PersonalModel> getListt(String username, String type) {
		// TODO Auto-generated method stub
		return dao.getListt(username, type);
	}

	@Override
	public List<DocumentModel> getDoc(String username, String type) {
		// TODO Auto-generated method stub
		return dao.getDoc(username, type);
	}

	@Override
	public boolean save(Lender_Policy policy) {
		// TODO Auto-generated method stub
		return dao.save(policy);
	}

	@Override
	public List<Lender_Policy> getPolicy() {
		// TODO Auto-generated method stub
		return dao.getPolicy();
	}

	@Override
	public List<Lender_Policy> getPolicy(String username, String type) {
		// TODO Auto-generated method stub
		return dao.getPolicy(username, type);
	}

	@Override
	public boolean save(Request policy) {
		// TODO Auto-generated method stub
		return dao.save(policy);
	}

	@Override
	public List<Request> getRequest() {
		// TODO Auto-generated method stub
		return dao.getRequest();
	}

	@Override
	public List<Request> getRequest(String username) {
		// TODO Auto-generated method stub
		return dao.getRequest(username);
	}

	@Override
	public boolean update(String username, String status, String name, String type) {

		return dao.update(username, status, name, type);
	}

	@Override
	public List<Request> getHistroy(String username) {
		// TODO Auto-generated method stub
		return dao.getHistroy(username);
	}

	@Override
	public boolean delete(String lender, String borrower) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateStatus(String username, String status) {
		// TODO Auto-generated method stub
		return dao.updateStatus(username, status);
	}

	@Override
	public boolean updateStatusMoney(String username, String status) {
		// TODO Auto-generated method stub
		return dao.updateStatusMoney(username, status);
	}

	@Override
	public boolean saveMonth(Due_Month month) {
		// TODO Auto-generated method stub
		return dao.saveMonth(month);
	}

	@Override
	public List<Due_Month> getMonth(String lender_name, String dues, String types, String amount) {
		// TODO Auto-generated method stub
		return dao.getMonth(lender_name, dues, types, amount);
	}

	@Override
	public boolean updatePolicy(String username, String status, String type) {
		// TODO Auto-generated method stub
		return dao.updatePolicy(username, status, type);
	}

	@Override
	public boolean updateStatus1(String username, String status) {
		// TODO Auto-generated method stub
		return dao.updateStatus1(username, status);
	}

	@Override
	public boolean saveLoan(LoanMonth loan) {
		// TODO Auto-generated method stub
		return dao.saveLoan(loan);
	}

	@Override
	public List<LoanMonth> getLoanMonth() {
		// TODO Auto-generated method stub
		return dao.getLoanMonth();
	}

	@Override
	public List<LoanMonth> getLoanMonth(String month, String borrower_name) {
		// TODO Auto-generated method stub
		return dao.getLoanMonth(month, borrower_name);
	}

	@Override
	public boolean save(Month month) {
		// TODO Auto-generated method stub
		return dao.save(month);
	}

	@Override
	public List<Month> getLoan_Due(String lender, String borrower, String types, String amount, String due) {
		// TODO Auto-generated method stub
		return dao.getLoan_Due(lender, borrower, types, amount, due);
	}

	@Override
	public boolean updatePayment(String lender_name, String borrower_name, String month_Status, String pay_date,
			String month, String status) {
		// TODO Auto-generated method stub
		return dao.updatePayment(lender_name, borrower_name, month_Status, pay_date, month, status);
	}

	@Override
	public boolean updatePayment(String lender_name, String borrower_name, String month_Status, String pay_date,
			String month, String status, String penalty,String month_amount) {
		// TODO Auto-generated method stub
		return dao.updatePayment(lender_name, borrower_name, month_Status, pay_date, month, status, penalty,month_amount);
	}

	@Override
	public List<Lender_Policy> getLender(String lender_name, String type) {
		// TODO Auto-generated method stub
		return dao.getLender(lender_name, type);
	}

	@Override
	public boolean saveFeedback(Feedback feed) {
		// TODO Auto-generated method stub
		return dao.saveFeedback(feed);
	}

	@Override
	public List<Feedback> getfFeedbacks(String borrower_name) {
		// TODO Auto-generated method stub
		return dao.getfFeedbacks(borrower_name);
	}

	@Override
	public List<Lender_Policy> getPolicyy(String username, String type) {
		// TODO Auto-generated method stub
		return dao.getPolicyy(username, type);
	}

	@Override
	public boolean saveHistory(lending_history history) {
		// TODO Auto-generated method stub
		return dao.saveHistory(history);
	}

	@Override
	public List<lending_history> getHistory(String lender_name) {
		// TODO Auto-generated method stub
		return dao.getHistory(lender_name);
	}

	@Override
	public List<Month> getLoan_Dues(String lender, String borrower, String status, String amount, String due) {
		// TODO Auto-generated method stub
		return dao.getLoan_Dues(lender, borrower, status, amount, due);
	}

	

	

}
