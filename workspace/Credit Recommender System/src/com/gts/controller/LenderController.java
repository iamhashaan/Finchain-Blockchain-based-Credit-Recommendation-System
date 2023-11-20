package com.gts.controller;

import java.io.IOException;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gts.model.ClientModel;
import com.gts.model.DocumentModel;
import com.gts.model.Feedback;
import com.gts.model.Lender_Policy;
import com.gts.model.Month;
import com.gts.model.PersonalModel;
import com.gts.model.lending_history;
import com.gts.service.ClientService;

@Controller
public class LenderController {
	@Autowired
	ClientService service;

	@RequestMapping(value = "/loanDetails", method = RequestMethod.POST)
	public ModelAndView lenderPolicy(ModelAndView model, @RequestParam("username") String username,
			@RequestParam("type") String type, @RequestParam("types") String types, @RequestParam("dues") String dues,
			@RequestParam("company") String company, @RequestParam("amount") String amount) {
		Lender_Policy policy = new Lender_Policy();
		policy.setUsename(username);
		policy.setType(type);
		policy.setTypes(types);
		policy.setDues(dues);
		policy.setCompany(company);
		policy.setAmount(amount);
		policy.setStatus("pending");
		policy.setLender_name("null");

		boolean result = service.save(policy);

		if (result) {
			model.addObject("username", username);
			model.addObject("dues", dues);
			model.addObject("types", types);
			model.addObject("amount", amount);
			model.setViewName("Employment");

		}

		return model;
	}

	@RequestMapping(value = "/RequestedUsers/{username}/{result}", method = RequestMethod.GET)
	public ModelAndView requestUser(ModelAndView model, @PathVariable("username") String username,
			@PathVariable("result") String result) {
		List<Lender_Policy> list = service.getPolicyy(username, result);
		if (!list.isEmpty()) {
			
			System.out.println("------username-------"+username);
			System.out.println("------result-------"+result);
			model.addObject("list", list);
			model.addObject("result", username);
			model.setViewName("RequestedUsers");

		}
		else {
			model.addObject("status", "No action");
			model.setViewName("RequestedUsers");
		}
		return model;
	}

	@RequestMapping(value = "/Takeaction/{username}/{result}", method = RequestMethod.GET)
	public ModelAndView takeAction(ModelAndView model, @PathVariable("username") String username,
			@PathVariable("result") String result) {
//		List<Lender_Policy> list = service.getPolicy(username, result);
//		for (Lender_Policy lender_Policy : list) {
//			String borrower = lender_Policy.getLender_name();
//			//List<ClientModel> clientlist = service.getList(borrower);
//
		System.out.println("-----borrower-----" );
			List<DocumentModel> dlist = service.getDoc();
			

			if (!dlist.isEmpty()) {
				model.addObject("list", dlist);
				//model.addObject("borrower", clientlist);
				model.setViewName("userPersonalInfo");

			
		}else {
			model.addObject("status", "No action");
			model.setViewName("userPersonalInfo");
		}
		return model;
	}

	@RequestMapping(value = "/RequestedUsers/{result}/Accept/{lender_name}", method = RequestMethod.GET)
	public ModelAndView acceptUser(ModelAndView model, @PathVariable("lender_name") String username,
			@PathVariable("lender_name") String lender_name) {
		System.out.println("-----------" + username);
		String status = "Accept";
		boolean result = service.updateStatus(username, status);
		boolean result1 = service.updateStatusMoney(username, status);

		if (result) {

			model.setViewName("RequestedUsers");
		}

		return model;

	}

	@RequestMapping(value = "/RequestedUsers/{result}/Decline/{lender_name}", method = RequestMethod.GET)
	public ModelAndView declineUser(ModelAndView model, @PathVariable("lender_name") String username,
			@PathVariable("lender_name") String lender_name) {
		System.out.println("-----------" + username);
		String status = "Decline";
		boolean result = service.updateStatus(username, status);
		boolean result1 = service.updateStatusMoney(username, status);

		if (result) {

			model.setViewName("RequestedUsers");
		}

		return model;

	}

	@RequestMapping(value = "/LendMoney/{username}/{result}", method = RequestMethod.GET)
	public ModelAndView moneyLend(ModelAndView model, @PathVariable("username") String username,
			@PathVariable("result") String result) {

		List<Lender_Policy> list = service.getPolicyy(username, result);
		if (!list.isEmpty()) {
			model.addObject("list", list);
			model.addObject("result", username);
			model.setViewName("LendMoney");

		}else {
			model.addObject("status", "No action");
			model.setViewName("LendMoney");
		}
		return model;
	}
	
	
//	@RequestMapping(value = "/LendingHistory/{username}/{result}", method = RequestMethod.GET)
//	public ModelAndView Lendingbc(ModelAndView model, @PathVariable("username") String username,
//			@PathVariable("result") String result) throws Exception {
//
//		BlockChainRetrive retrive=new BlockChainRetrive();
//		List<String> bc=retrive.getQrDetails(username, result);
//		lending_history history=new lending_history();
//		
//		for (String string : bc) {
//			
//			String split[]=string.split("\\*");
//			String lender=split[0];
//			String dues=split[1];
//			String types=split[2];
//			String borrower=split[3];
//			String amount=split[4];
//			
//			
//			history.setLender_name(lender);
//			history.setBorrower_name(borrower);
//			history.setAmount(amount);
//			history.setDues(dues);
//			history.setTypes(types);
//			
//			boolean result1=service.saveHistory(history);
//			
//			if(result1) {
//				List<lending_history> list=service.getHistory(lender);
//				System.out.println("-----list-----"+list);
//				if(!list.isEmpty()) {
//					model.addObject("list", list);
//					model.setViewName("LendingHistory");
//				}
//			}
//			
//			
//		
//			
//		}
//		
//		
//		
//		
//		
//		return model;
//	}
//	
	
	
//
	@RequestMapping(value = "/LendMoney/{username}/lendLoan", method = RequestMethod.GET)
	public ModelAndView loanLend(ModelAndView model, @RequestParam("borrower_name") String borrower_name,
			@RequestParam("types") String types, @RequestParam("amount") String amount,
			@RequestParam("dues") String dues, @RequestParam("username") String username) throws IOException {
		System.out.println("--------" + username);
		String status = "Accepted";
		boolean result = service.updatePolicy(borrower_name, status, types);
		boolean result1 = service.updateStatus1(borrower_name, status);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("lender_name", username);
		jsonObject.put("dues", dues);
		jsonObject.put("types", types);
		jsonObject.put("borrower_name", borrower_name);
		jsonObject.put("amount", amount);
		ReadProperty property = new ReadProperty();
		
		BlockChain.addTransaction(jsonObject.toString(), property.getURLDetails()
				+ BlockChain.Store);
		BlockChain.mineChain(property.getURLDetails()
				+ BlockChain.Mine);
		
		
		if (result) {

			model.addObject("lender", username);
			model.addObject("dues", dues);
			model.addObject("types", types);
			model.addObject("username", borrower_name);
			model.addObject("amount", amount);
			model.setViewName("MoneyLend");
			
			
	}

		return model;
	}

	@RequestMapping(value = "/PaidUsers/{lender_name}/{type}", method = RequestMethod.GET)
	public ModelAndView userPayment(ModelAndView model, @PathVariable("lender_name") String lender_name,
			@PathVariable("type") String type) {
		System.out.println("-----------" + lender_name);
		List<Lender_Policy> list = service.getLender(lender_name, type);
		if (!list.isEmpty()) {
			model.addObject("list", list);
			model.setViewName("viewPaidUsers");
		}
		return model;
	}

	@RequestMapping(value = "/PaidUsers/{lender_name}/viewPayment/{lender_name}/{dues}/{amount}/{usename}/{types}", method = RequestMethod.GET)

	public ModelAndView paymentView(ModelAndView model, @PathVariable("lender_name") String borrower_name,
			@PathVariable("dues") String dues, @PathVariable("amount") String amount,
			@PathVariable("usename") String lender_name, @PathVariable("types") String types) {

		List<Month> mlist = service.getLoan_Due(lender_name, borrower_name, types, amount, dues);

		if (!mlist.isEmpty()) {
			model.addObject("mlist", mlist);
			model.setViewName("viewPayment");
		}else {
			model.addObject("status", "No action");
			model.setViewName("viewPayment");
		}

		return model;
	}

	@RequestMapping(value = "/PaidUsers/{lender_name}/feedback/{lender_name}/{usename}", method = RequestMethod.GET)
	public ModelAndView payHistory(ModelAndView model, @PathVariable("lender_name") String lender_name,
			@PathVariable("usename") String borrower_name) {
		model.addObject("borrower_name", borrower_name);
		model.addObject("lender_name", lender_name);

		model.setViewName("feedback");

		return model;
	}

	@RequestMapping(value = "/Takeaction/{username}/viewBorrower/{username}/{type}", method = RequestMethod.GET)
	public ModelAndView lenderView(ModelAndView model, @PathVariable("username") String username,
			@PathVariable("type") String type) {

		List<PersonalModel> plist = service.getListt(username, type);
		if (!plist.isEmpty()) {
			model.addObject("plist", plist);
			model.setViewName("viewBorrower");
		} else {
			model.addObject("status", "No action");
			model.setViewName("viewBorrower");
		}

		return model;
	}

	@RequestMapping(value = "/Takeaction/{username}/checkDocs/{username}/{type}", method = RequestMethod.GET)
	public ModelAndView lenderCheck(ModelAndView model, @PathVariable("username") String username,
			@PathVariable("type") String type) {

		List<DocumentModel> plist = service.getDoc(username, type);
		if (!plist.isEmpty()) {
			model.addObject("plist", plist);
			model.setViewName("checkborrower");
		} else {
			model.addObject("status", "No action");
			model.setViewName("checkborrower");
		}

		return model;
	}

	@RequestMapping(value = "/Takeaction/{username}/checkfeedback/{username}/{type}", method = RequestMethod.GET)
	public ModelAndView Checkfeed(ModelAndView model, @PathVariable("username") String username,
			@PathVariable("type") String type) throws Exception {
		System.out.println("----------" + username);
		List<Feedback> flist = service.getfFeedbacks(username);
		List<String> respo = null;
		PythonCall pc = new PythonCall();
		int positive = 0;
		int negative = 0;
		int complaints = 0;
		for (Feedback feedback : flist) {
			System.out.println(feedback.getReview());
			String review = feedback.getReview();
			respo = pc.executeMultiPartRequest("http://127.0.0.1:5002/register", review);
			String res = respo.toString();

			System.out.println("-------respo--------" + res);
			JSONArray jaArray = null;

			jaArray = (JSONArray) new JSONParser().parse(res);

			JSONObject jsonObject = (JSONObject) jaArray.get(0);
			String msg = String.valueOf(jsonObject.get("msg"));
			System.out.println("-------jSon data--------" + msg);
			if (msg.equalsIgnoreCase("Positive")) {
				positive = positive + 1;

			} else if (msg.equalsIgnoreCase("Negative")) {
				negative = negative + 1;
				
			} else if (msg.equalsIgnoreCase("Compliant")) {
				complaints = complaints + 1;
			}

		}
		int total = positive + negative + complaints;
		
		System.out.println("------total------" + total);
		System.out.println("------positive------" + positive);
		System.out.println("------negative------" + negative);
		System.out.println("------complaints------" + complaints);
		int pos = (positive * 100) / total;		
		int neg = (negative * 100) / total;
		int comp = (complaints * 100) / total;
		
		model.addObject("positive", pos);
		model.addObject("negative", neg);
		model.addObject("complaint", comp);
		model.setViewName("chart");
		return model;
	}

}
