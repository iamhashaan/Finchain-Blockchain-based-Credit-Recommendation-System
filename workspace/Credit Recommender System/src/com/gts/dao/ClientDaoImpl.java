package com.gts.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
@Repository
public class ClientDaoImpl implements ClientDao {
	@Autowired
	private SessionFactory session;
	protected Session getSession() {
		return session.getCurrentSession();
		
	}

	@SuppressWarnings("deprecation")
	@Override
	public boolean save(ClientModel client) {
		boolean result=false;
		Criteria cr=getSession().createCriteria(ClientModel.class);
		cr.add(Restrictions.eq("email", client.getEmail()));
		cr.add(Restrictions.eq("username", client.getUsername()));
		List<ClientModel> list=cr.list();
		if(list.isEmpty()) {
			getSession().save(client);
			result=true;
			
		}
	
		
		return result;
	}

	@Override
	public String login(String username, String password) {
		String result="no";
		Criteria cr=getSession().createCriteria(ClientModel.class);
		cr.add(Restrictions.eq("username", username));
		cr.add(Restrictions.eq("password", password));
		List<ClientModel> list=cr.list();
		if(!list.isEmpty()) {
			for (ClientModel clientModel : list) {
				result=clientModel.getType();
				
				
			}
		}
		
		return result;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ClientModel> getList() {
		List<ClientModel> list=getSession().createQuery("from client").list();
		return list;
	}

	@Override
	public boolean save(PersonalModel model) {
		boolean result=true;
		Criteria cr=getSession().createCriteria(PersonalModel.class);
		cr.add(Restrictions.eq("username", model.getUsername()));
		List<PersonalModel> list=cr.list();
		
		if(list.isEmpty()) {
			getSession().save(model);
			
			
			result=true;
			
		}
		
		return result;
	}

	@Override
	public List<PersonalModel> getListt() {
		List<PersonalModel> list=getSession().createQuery("from personalinfo").list();
		return list;
	}

	@Override
	public boolean saveDoc(DocumentModel doc) {
		boolean result=false;
		Criteria cr=getSession().createCriteria(DocumentModel.class);
		cr.add(Restrictions.eq("username", doc.getUsername()));
		List<DocumentModel> list=cr.list();
		if(list.isEmpty()) {
			getSession().save(doc);
			result=true;
			
		}
	
		
		return result;
	}

	@Override
	public List<DocumentModel> getDoc() {
		Criteria cr=getSession().createCriteria(DocumentModel.class);
		List<DocumentModel> list=cr.list();
		return list;
	}

	@Override
	public List<ClientModel> getList(String username) {
		Criteria cr=getSession().createCriteria(ClientModel.class);
		cr.add(Restrictions.eq("username", username));
		List<ClientModel> list=cr.list();
		return list;
	}

	@Override
	public List<DocumentModel> getDoc(String username) {
		Criteria cr=getSession().createCriteria(DocumentModel.class);
		cr.add(Restrictions.eq("username", username));
		List<DocumentModel> list=cr.list();
		return list;
	}

	@Override
	public boolean save(Borrower_Income income) {
		boolean result=false;
		Criteria cr=getSession().createCriteria(Borrower_Income.class);
		
		cr.add(Restrictions.eq("username", income.getUsername()));
		List<Borrower_Income> list=cr.list();
		if(list.isEmpty()) {
			getSession().save(income);
			result=true;
			
		}
	
		
		return result;
	}

	@Override
	public List<Borrower_Income> getIncome() {
		List<Borrower_Income> list=getSession().createQuery("from borrower_income").list();
		return list;
	}

	@Override
	public List<PersonalModel> getListt(String username, String type) {
		Criteria cr=getSession().createCriteria(PersonalModel.class);
		cr.add(Restrictions.eq("username", username));
		cr.add(Restrictions.eq("type", type));
		List<PersonalModel> list=cr.list();
		return list;
	}

	@Override
	public List<DocumentModel> getDoc(String username, String type) {
		Criteria cr=getSession().createCriteria(DocumentModel.class);
		cr.add(Restrictions.eq("username", username));
		cr.add(Restrictions.eq("type", type));
		List<DocumentModel> list=cr.list();
		return list;
	}

	@Override
	public boolean save(Lender_Policy policy) {
		boolean result=true;
		Criteria cr=getSession().createCriteria(Lender_Policy.class);
		
		
			getSession().save(policy);
			
			
		
			
		
		
		return result;
	}

	@Override
	public List<Lender_Policy> getPolicy() {
		Criteria cr=getSession().createCriteria(Lender_Policy.class);
		List<Lender_Policy> list=cr.list();
		return list;
	}

	@Override
	public List<Lender_Policy> getPolicy(String username, String type) {
		Criteria cr=getSession().createCriteria(Lender_Policy.class);
		cr.add(Restrictions.eq("lender_name", username));
		cr.add(Restrictions.eq("type", type));
		List<Lender_Policy> list=cr.list();
		return list;
	}

	@Override
	public boolean save(Request policy) {
		boolean result=false;
		Criteria cr=getSession().createCriteria(Request.class);
		
		cr.add(Restrictions.eq("borrower_name", policy.getBorrower_name()));
		
		
		List<Request> list=cr.list();
		if(list.isEmpty()) {
			getSession().save(policy);
			result=true;
			
		}
	
		
		return result;
	}

	@Override
	public List<Request> getRequest() {
		List<Request> list=getSession().createQuery("from money_request").list();
		return list;
	}

	@Override
	public List<Request> getRequest(String lender_name) {
		Criteria cr=getSession().createCriteria(Request.class);
		cr.add(Restrictions.eq("borrower_name", lender_name));
		
		List<Request> list=cr.list();
		return list;
	}
	
	@Override
	public List<Request> getHistroy(String lender_name) {
		Criteria cr=getSession().createCriteria(Request.class);
		cr.add(Restrictions.eq("borrower_name", lender_name));
		
		List<Request> list=cr.list();
		return list;
	}

	@Override
	public boolean update(String username, String status, String name,String type) {
		Criteria cr=getSession().createCriteria(Lender_Policy.class);
		cr.add(Restrictions.eq("usename", username));
		cr.add(Restrictions.eq("types", type));
		
		
		
		List<Lender_Policy> list=cr.list();
		System.out.println("-------"+list);
		
		if(!list.isEmpty()) {
			
			Lender_Policy policy=list.get(0);
			policy.setLender_name(name);
			policy.setStatus(status);
			getSession().update(policy);
			
			
		}
		return false;
	}

	@Override
	public boolean updateStatus(String username, String status) {
		Criteria cr=getSession().createCriteria(Lender_Policy.class);
		cr.add(Restrictions.eq("lender_name", username));
		List<Lender_Policy> list=cr.list();
		System.out.println("-------"+list);
		
		if(!list.isEmpty()) {
			
			Lender_Policy policy=list.get(0);
			policy.setStatus(status);
			getSession().update(policy);
			
			
		}
		return true;
		
		
	}

	@Override
	public boolean updateStatusMoney(String username, String status) {
		Criteria cr=getSession().createCriteria(Request.class);
		cr.add(Restrictions.eq("borrower_name", username));
		List<Request> list=cr.list();
		System.out.println("-------"+list);
		
		if(!list.isEmpty()) {
			
			Request policy=list.get(0);
			policy.setStatus(status);
			getSession().update(policy);
			
			
		}
		return true;
	}

	@Override
	public boolean saveMonth(Due_Month month) {
		boolean result=false;
		try {
			getSession().save(month);
			result =true;
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		
		return result;
	}

	@Override
	public List<Due_Month> getMonth(String lender_name, String dues, String types,String amount) {
		Criteria cr=getSession().createCriteria(Due_Month.class);
		cr.add(Restrictions.eq("username", lender_name));
		cr.add(Restrictions.eq("duration", dues));
		cr.add(Restrictions.eq("types", types));
		cr.add(Restrictions.eq("total_amount", amount));
		List<Due_Month> list=cr.list();
		return list;
	}

	@Override
	public boolean updatePolicy(String username, String status, String type) {
		boolean result=false;
		Criteria cr=getSession().createCriteria(Lender_Policy.class);
		cr.add(Restrictions.eq("lender_name", username));
		cr.add(Restrictions.eq("types", type));
		
		
		
		List<Lender_Policy> list=cr.list();
		System.out.println("-------"+list);
		
		if(!list.isEmpty()) {
			
			Lender_Policy policy=list.get(0);
			//policy.setLender_name(name);
			policy.setStatus(status);
			getSession().update(policy);
			result=true;
			
			
		}
		return result;
	}

	@Override
	public boolean updateStatus1(String username, String status) {
		boolean resulr=false;
		Criteria cr=getSession().createCriteria(Request.class);
		cr.add(Restrictions.eq("borrower_name", username));
		//cr.add(Restrictions.eq("status", status));
		
		
		
		List<Request> list=cr.list();
		System.out.println("-------"+list);
		
		if(!list.isEmpty()) {
			
			Request policy=list.get(0);
			//policy.setLender_name(name);
			policy.setStatus(status);
			getSession().update(policy);
			resulr=true;
			
			
		}
		return resulr;
	}

	@Override
	public boolean saveLoan(LoanMonth loan) {
		boolean result=false;
		Criteria cr=getSession().createCriteria(LoanMonth.class);
		cr.add(Restrictions.eq("month", loan.getMonth()));
		List<LoanMonth> list=cr.list();
		if(list.isEmpty()) {
			getSession().save(loan);
			result=true;
		}
		return result;
	}

	@Override
	public List<LoanMonth> getLoanMonth() {
		Criteria cr=getSession().createCriteria(LoanMonth.class);
		List<LoanMonth> list=cr.list();
		return list;
	}

	@Override
	public List<LoanMonth> getLoanMonth(String month, String borrower_name) {
		Criteria cr=getSession().createCriteria(LoanMonth.class);
		cr.add(Restrictions.eq("month_Status", month));
		cr.add(Restrictions.eq("borrower_name", borrower_name));
		List<LoanMonth> list=cr.list();
		
		return list;
	}

	@Override
	public boolean save(Month month) {
		getSession().save(month);
		
		
		return true;
	}

	@Override
	public List<Month> getLoan_Due(String lender, String borrower, String types, String amount, String due) {
		Criteria cr=getSession().createCriteria(Month.class);
		cr.add(Restrictions.eq("lender_name", lender));
		cr.add(Restrictions.eq("borrower_name", borrower));
		cr.add(Restrictions.eq("duration", due));
		cr.add(Restrictions.eq("types", types));
		cr.add(Restrictions.eq("total_amount", amount));
		List<Month> list=cr.list();
		return list;
	}

	@Override
	public boolean updatePayment(String lender_name, String borrower_name, String month_Status, String pay_date,
			String month, String status) {
		boolean result=false;
		Criteria cr=getSession().createCriteria(Month.class);
		cr.add(Restrictions.eq("lender_name", lender_name));
		cr.add(Restrictions.eq("borrower_name", borrower_name));
		cr.add(Restrictions.eq("month_Status", month_Status));	
		cr.add(Restrictions.eq("month", month));
		List<Month> mlist=cr.list();
		if(!mlist.isEmpty()) {
			Month m=mlist.get(0);
			m.setPay_date(pay_date);
			m.setStatus(status);
			getSession().update(m);
			result=true;
			
			
		}
		return result;
	}

	@Override
	public boolean updatePayment(String lender_name, String borrower_name, String month_Status, String pay_date,
			String month, String status, String penalty,String month_amount) {
		boolean result=false;
		Criteria cr=getSession().createCriteria(Month.class);
		cr.add(Restrictions.eq("lender_name", lender_name));
		cr.add(Restrictions.eq("borrower_name", borrower_name));
		cr.add(Restrictions.eq("month_Status", month_Status));	
		cr.add(Restrictions.eq("month", month));
		List<Month> mlist=cr.list();
		if(!mlist.isEmpty()) {
			Month m=mlist.get(0);
			m.setPay_date(pay_date);
			m.setStatus(status);
			m.setPenalty(penalty);
			m.setMonth_amount(month_amount);
			getSession().update(m);
			result=true;
			
			
		}
		return result;
	}

	@Override
	public List<Lender_Policy> getLender(String lender_name,String type) {

		Criteria cr=getSession().createCriteria(Lender_Policy.class);
		cr.add(Restrictions.eq("usename", lender_name));
		cr.add(Restrictions.eq("type", type));
		
		List<Lender_Policy> mlist=cr.list();
		
		return mlist;
	}

	@Override
	public boolean saveFeedback(Feedback feed) {
		getSession().save(feed);
		return true;
	}

	@Override
	public List<Feedback> getfFeedbacks(String borrower_name) {
		Criteria cr=getSession().createCriteria(Feedback.class);
		cr.add(Restrictions.eq("borrower_name", borrower_name));
		List<Feedback> flist=cr.list();
		return flist;
	}

	@Override
	public List<Lender_Policy> getPolicyy(String username, String type) {
		Criteria cr=getSession().createCriteria(Lender_Policy.class);
		cr.add(Restrictions.eq("usename", username));
		cr.add(Restrictions.eq("type", type));
		List<Lender_Policy> list=cr.list();
		return list;
	}

	@Override
	public boolean saveHistory(lending_history history) {
		getSession().save(history);	
		System.out.println("---------------------------");
		return true;
	}

	@Override
	public List<lending_history> getHistory(String lender_name) {
		Criteria cr=getSession().createCriteria(lending_history.class);
		cr.add(Restrictions.eq("lender_name", lender_name));
		List<lending_history> list=cr.list();
		return list;
	}

	@Override
	public List<Month> getLoan_Dues(String lender, String borrower, String status, String amount, String due) {
		Criteria cr=getSession().createCriteria(Month.class);
		cr.add(Restrictions.eq("lender_name", lender));
		cr.add(Restrictions.eq("borrower_name", borrower));	
		cr.add(Restrictions.eq("status", status));
		
		List<Month> list=cr.list();
		return list;
	}

	

	

	
	
	

}
