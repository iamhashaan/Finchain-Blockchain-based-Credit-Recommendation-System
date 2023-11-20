package com.gts.controller;

import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gts.model.Borrower_Income;
import com.gts.model.DocumentModel;
import com.gts.model.Due_Month;
import com.gts.model.Feedback;
import com.gts.model.Lender_Policy;
import com.gts.model.LoanMonth;
import com.gts.model.Month;
import com.gts.model.PersonalModel;
import com.gts.model.Request;
import com.gts.service.ClientService;
import java.util.Date;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@Controller
public class BorrowerController {
	@Autowired
	ClientService service;

	@RequestMapping(value = "/income", method = RequestMethod.POST)
	public ModelAndView bincome(ModelAndView model, @RequestParam("username") String username,
			@RequestParam("type") String type, @RequestParam("income") String income,
			@RequestParam("month") String month, @RequestParam("annual") String annual,
			@RequestParam("ename") String ename, @RequestParam("ephone") String ephone,
			@RequestParam("company") String company) {
		Borrower_Income borrow = new Borrower_Income();
		borrow.setUsername(username);
		borrow.setType(type);
		borrow.setIncome(income);
		borrow.setMonth(month);
		borrow.setAnnual(annual);
		borrow.setEname(ename);
		borrow.setEphone(ephone);
		borrow.setCompany(company);
		boolean result = service.save(borrow);
		if (result) {
			model.addObject("msg", "Details added Successfully");
			model.addObject("result", type);
			model.setViewName("Income");
		}

		return model;

	}

	@RequestMapping(value = "/viewLender/{username}/{type}", method = RequestMethod.GET)
	public ModelAndView lenderView(ModelAndView model, @PathVariable("username") String username,
			@PathVariable("type") String type) {

		List<PersonalModel> plist = service.getListt(username, type);
		if (!plist.isEmpty()) {
			model.addObject("plist", plist);
			model.setViewName("viewLwnder");
		} else {
			model.addObject("status", "No action");
			model.setViewName("borrower");
		}

		return model;
	}

	@RequestMapping(value = "/checkLender/{username}/{type}/{msg1}", method = RequestMethod.GET)
	public ModelAndView lenderCheck(ModelAndView model, @PathVariable("username") String username,
			@PathVariable("type") String type, @PathVariable("msg1") String msg1) {

		List<DocumentModel> plist = service.getDoc(username, type);
		if (!plist.isEmpty()) {
			model.addObject("plist", plist);
			model.setViewName("checkLender");
		} else {
			model.addObject("status", "No action");
			model.setViewName("borrower");
		}

		return model;
	}

	@RequestMapping(value = "/viewPolicy/{username}/{type}/{msg1}", method = RequestMethod.GET)
	public ModelAndView Policy(ModelAndView model, @PathVariable("username") String username,
			@PathVariable("type") String type, @PathVariable("msg1") String msg1) {

		List<Lender_Policy> policy = service.getPolicy();
		
		
		System.out.println("----msg1----"+msg1);
		System.out.println("-----type---"+type);

		if (!policy.isEmpty()) {
			List<Request> request = service.getRequest(msg1);
			model.addObject("request", request);
			model.addObject("policy", policy);
			model.addObject("name", msg1);
			model.setViewName("viewPolicy");
		} else {
			model.addObject("status", "No action");
			model.setViewName("borrower");
		}

		return model;

	}

	@RequestMapping(value = "/viewPolicy/{username}/{types}/SendRequest/{username}/{type}/{name}/{dues}/{amount}", method = RequestMethod.GET)
	public ModelAndView request(ModelAndView model, @PathVariable("username") String username,
			@PathVariable("type") String type, @PathVariable("name") String name, @PathVariable("dues") String dues,
			@PathVariable("amount") String amount) {

		Request req = new Request();
		req.setLender_name(username);
		req.setBorrower_name(name);
		req.setType(type);
		req.setAmount(amount);
		req.setDue(dues);
		req.setStatus("Request Pending");

		System.out.println("-------" + type + "-------" + name);

		String status = "Request Pending";

		boolean result = service.save(req);
		boolean update = service.update(username, status, name, type);

		if (result) {

			model.setViewName("success");
		} else {
			model.addObject("status", "Already Applied ");
			model.setViewName("viewPolicy");
		}

		return model;

	}

	@RequestMapping(value = "/RequestHistory/{type}/{msg1}", method = RequestMethod.GET)
	public ModelAndView Request(ModelAndView model, @PathVariable("type") String type,
			@PathVariable("msg1") String msg1) {
		Request req = new Request();
		List<Request> rlist = service.getHistroy(msg1);

		if (!rlist.isEmpty()) {
			model.addObject("result", rlist);
			model.addObject("type", type);
			model.setViewName("RequestHistory");
		} else {
			model.addObject("status", "No action");
			model.setViewName("borrower");
		}

		return model;

	}

//	@RequestMapping(value = "/RequestHistory/{type}/DeleteRequest/{lender_name}/{borrower_name}/{type}", method = RequestMethod.GET)
//	public ModelAndView dele(ModelAndView model, @PathVariable("lender_name") String lender_name,
//			@PathVariable("borrower_name") String borrower_name, @PathVariable("type") String type) {
//
//		System.out.println("---------------");
//		
//		
//		
//		
//		return model;
//
//	}

	@RequestMapping(value = "/RequestHistory/prospective borrowers/DeleteRequest", method = RequestMethod.POST)
	public ModelAndView delete(ModelAndView model, @RequestParam("lender_name") String lender_name,
			@RequestParam("borrower_name") String borrower_name) {

		boolean result = service.delete(lender_name, borrower_name);

		System.out.println("---------------");

		return model;

	}

	@RequestMapping(value = "/viewPolicy/{username}/{types}/MoneyDetails/{username}/{type}/{name}/{dues}/{amount}", method = RequestMethod.GET)
	public ModelAndView viewMoney(ModelAndView model, @PathVariable("username") String username,
			@PathVariable("type") String type, @PathVariable("name") String name, @PathVariable("dues") String dues,
			@PathVariable("amount") String amount) {
		List<Due_Month> month = service.getMonth(username, dues, type, amount);
		System.out.println("---------" + month);
		if (!month.isEmpty()) {
			model.addObject("month", month);
			model.addObject("name", name);
			model.setViewName("MoneyDetails");
		} else {
			model.addObject("status", "No action");
			model.setViewName("borrower");
		}

		return model;
	}

	@RequestMapping(value = "/viewMoney/{username}/{type}/{msg1}", method = RequestMethod.GET)
	public ModelAndView viewMoney(ModelAndView model, @PathVariable("username") String username,
			@PathVariable("type") String type, @PathVariable("msg1") String msg1) {
		List<Lender_Policy> list = service.getPolicy();
		for (Lender_Policy lender_Policy : list) {
			String lname = lender_Policy.getUsename();
			String bname = lender_Policy.getLender_name();
			if (username.equalsIgnoreCase(lname) && msg1.equalsIgnoreCase(bname)) {
				String types = lender_Policy.getTypes();
				String duration = lender_Policy.getDues();
				String amount = lender_Policy.getAmount();
				List<Due_Month> due = service.getMonth(lname, duration, types, amount);
				List<Month> mlist = service.getLoan_Due(lname, bname, types, amount, duration);
				if (!mlist.isEmpty()) {

					model.addObject("month", mlist);
					model.addObject("name", msg1);
					model.setViewName("MoneyPayment");

				} else {
					model.addObject("status", "No action");
					model.setViewName("borrower");
				}

			}

		}

		return model;
	}

	@RequestMapping(value = "/viewMoney/{username}/{type}/Pay", method = RequestMethod.GET)
	public ModelAndView monthPay(ModelAndView model, @RequestParam("lender_name") String lender_name,
			@RequestParam("borrower_name") String borrower_name, @RequestParam("amount") String amount,
			@RequestParam("month") String month, @RequestParam("date") String pay_date,
			@RequestParam("duration") String duration, @RequestParam("month_Status") String month_Status) {
		LoanMonth loan = new LoanMonth();
		String status = "Done";
		String o_status = "complete";

		loan.setLender_name(lender_name);
		loan.setBorrower_name(borrower_name);
		loan.setMonth_amount(amount);
		loan.setMonth(month);
		loan.setStatus(status);
		loan.setO_status(o_status);
		loan.setPay_date(pay_date);
		loan.setDuration(duration);
		// loan.setPenalty(penalty);
		loan.setMonth_Status(month_Status);

		boolean result = service.saveLoan(loan);
		if (result) {
			model.addObject("status", "paid");
			model.setViewName("MoneyDetails");
		}

		return model;
	}

	@RequestMapping(value = "/LendMoney/{username}/month", method = RequestMethod.GET)
	public ModelAndView month(ModelAndView model, @RequestParam("lender") String lender_name,
			@RequestParam("username") String borrower_name, @RequestParam("dues") String dues,
			@RequestParam("types") String types, @RequestParam("total_amount") String total_amount,
			@RequestParam("month") String month, @RequestParam("amount") String amount,
			@RequestParam("mstatus") String mstatus) {
		Month m = new Month();
		m.setLender_name(lender_name);
		m.setBorrower_name(borrower_name);
		m.setDuration(dues);
		m.setTypes(types);
		m.setMonth(month);
		m.setMonth_amount(amount);
		m.setStatus("Null");
		m.setTotal_amount(total_amount);
		m.setMonth_Status(mstatus);
		boolean result = service.save(m);
		if (result) {
			model.setViewName("success");
		}

		return model;
	}

	@RequestMapping(value = "/viewMoney/{username}/{type}/moneyPayment/{lender_name}/{borrower_name}/{month}/{month_Status}/{no}", method = RequestMethod.GET)
	public ModelAndView payment(ModelAndView model, @PathVariable("lender_name") String lender_name,
			@PathVariable("borrower_name") String borrower_name, @PathVariable("month") String month,
			@PathVariable("month_Status") String month_Status, @PathVariable("no") String pay_date) throws IOException {

		Month m = new Month();
		String status = "Paid";
		boolean result = service.updatePayment(lender_name, borrower_name, month_Status, pay_date, month, status);
		if (result) {

			List<Month> mlist = service.getLoan_Dues(lender_name, borrower_name, status, month, pay_date);
			for (Month mon : mlist) {
				String lendername = mon.getLender_name();
				String borrowername = mon.getBorrower_name();
				String totalamount = mon.getTotal_amount();
				String month_amountt = mon.getMonth_amount();
				String pay_datee = mon.getMonth();
				String paid_date = mon.getPay_date();
				String penaltyy = "No";
				String month_statuss = mon.getStatus();
				String dues = mon.getDuration();
				String types = mon.getTypes();
				System.out.println("-------------" + lendername);
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("lender_name", lendername);
				jsonObject.put("dues", dues);
				jsonObject.put("types", types);
				jsonObject.put("borrower_name", borrowername);
				jsonObject.put("amount", totalamount);
				jsonObject.put("pay_month", pay_datee);
				jsonObject.put("paid_date", paid_date);
				jsonObject.put("month_amount", month_amountt);
				jsonObject.put("status", month_statuss);
				jsonObject.put("penalty", penaltyy);

				ReadPropertyy property = new ReadPropertyy();

				BlockChain.addTransaction(jsonObject.toString(), property.getURLDetails() + BlockChain.Store);
				BlockChain.mineChain(property.getURLDetails() + BlockChain.Mine);
				model.setViewName("successfull");

			}
		}
		return model;
	}
//
	@RequestMapping(value = "/viewMoney/{username}/{type}/penaltyPayment/{lender_name}/{borrower_name}/{month}/{month_Status}/{no}/{month_amount}", method = RequestMethod.GET)
	public ModelAndView penalty(ModelAndView model, @PathVariable("lender_name") String lender_name,
			@PathVariable("borrower_name") String borrower_name, @PathVariable("month") String month,
			@PathVariable("month_Status") String month_Status, @PathVariable("no") String pay_date,
			@PathVariable("month_amount") String month_amount) throws IOException {

		Month m = new Month();
		String status = "Paid";
		String penalty = "Yes";
		String amount = month_amount + 50;
		JSONObject jsonObject = new JSONObject();
		boolean result = service.updatePayment(lender_name, borrower_name, month_Status, pay_date, month, status,
				penalty, month_amount);
		if (result) {

			List<Month> mlist = service.getLoan_Dues(lender_name, borrower_name, status, month, month_amount);
			for (Month mon : mlist) {

				String lendername = mon.getLender_name();
				String borrowername = mon.getBorrower_name();
				String totalamount = mon.getTotal_amount();
				String month_amountt = mon.getMonth_amount();
				String pay_datee = mon.getMonth();
				String paid_date = mon.getPay_date();
				String penaltyy = mon.getPenalty();
				String month_statuss = mon.getStatus();
				String dues = mon.getDuration();
				String types = mon.getTypes();
				System.out.println("-------------" + lendername);

				
				jsonObject.put("lender_name", lendername);
				jsonObject.put("dues", dues);
				jsonObject.put("types", types);
				jsonObject.put("borrower_name", borrowername);
				jsonObject.put("amount", totalamount);
				jsonObject.put("pay_month", pay_datee);
				jsonObject.put("paid_date", paid_date);
				jsonObject.put("month_amount", month_amountt);
				jsonObject.put("status", month_statuss);
				jsonObject.put("penalty", penaltyy);

				ReadPropertyy property = new ReadPropertyy();

				BlockChain.addTransaction(jsonObject.toString(), property.getURLDetails() + BlockChain.Store);
				BlockChain.mineChain(property.getURLDetails() + BlockChain.Mine);
				model.setViewName("successfull");
			}
		}

		return model;
	}

	@RequestMapping(value = "/PaidUsers/{lender_name}/feedback/{lender_name}/addfeedback", method = RequestMethod.GET)
	public ModelAndView addFeedback(ModelAndView model, @RequestParam("lender") String lender_name,
			@RequestParam("borrower") String borrower_name, @RequestParam("subject") String subject) {
		System.out.println("---------" + subject);
		Feedback feed = new Feedback();
		feed.setBorrower_name(lender_name);
		feed.setLender_name(borrower_name);
		feed.setReview(subject);
		boolean result = service.saveFeedback(feed);
		if (result) {
			model.setViewName("feedback");
		}

		return model;

	}

	@RequestMapping(value = "/viewMoney/{username}/{type}/moneyHistory/{msg1}", method = RequestMethod.GET)
	public ModelAndView moneyhistory(ModelAndView model, @PathVariable("msg1") String borrower_name,
			@PathVariable("username") String username) throws Exception {
		System.out.println("--------------" + username);

		BlockChainRetrive_history bc = new BlockChainRetrive_history();
		List<String> list = bc.getQrDetails(borrower_name, username);
		System.out.println("--------------" + list);
for (String string : list) {
			
			String split[]=string.split("\\*");
			String borrowername = split[0];
			String lender_name = split[1];
			String totalamount = split[2];
			String month_amountt = split[3];
			String pay_datee =split[4];
			String paid_date = split[5];
			String penaltyy = split[6];
			String month_statuss = split[7];
			String dues=split[8];
			String types=split[9];
			
			
			List<Month> mlist = service.getLoan_Dues(lender_name, borrower_name, types, totalamount, dues);
			
			
			
			
			model.addObject("mlist", mlist);
			System.out.println("-------------"+mlist);
			
			
			
			if (!mlist.isEmpty()) {
				model.addObject("mlist", mlist);
				model.setViewName("viewPayment");
			}else {
				model.addObject("status", "No action");
				model.setViewName("viewPayment");
			}
			
			
			
		
			
			
}

		return model;

	}

}
