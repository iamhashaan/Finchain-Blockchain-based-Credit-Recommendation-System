package com.gts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gts.model.Due_Month;
import com.gts.service.ClientService;

@Controller
public class MonthController {
	@Autowired
	ClientService service;

	@RequestMapping(value = "/12month", method = RequestMethod.POST)
	public ModelAndView twelveMonth(ModelAndView model, @RequestParam("username") String username,
			@RequestParam("dues") String dues, @RequestParam("types") String types,
			@RequestParam("amount") String amount, @RequestParam("month1") String month1,
			@RequestParam("month2") String month2, @RequestParam("month3") String month3,
			@RequestParam("month4") String month4, @RequestParam("month5") String month5,
			@RequestParam("month6") String month6, @RequestParam("month7") String month7,
			@RequestParam("month8") String month8, @RequestParam("month9") String month9,
			@RequestParam("month10") String month10, @RequestParam("month11") String month11,
			@RequestParam("month12") String month12, @RequestParam("amount1") String amount1,
			@RequestParam("amount2") String amount2, @RequestParam("amount3") String amount3,
			@RequestParam("amount4") String amount4, @RequestParam("amount5") String amount5,
			@RequestParam("amount6") String amount6, @RequestParam("amount7") String amount7,
			@RequestParam("amount8") String amount8, @RequestParam("amount9") String amount9,
			@RequestParam("amount10") String amount10, @RequestParam("amount11") String amount11,
			@RequestParam("amount12") String amount12) {

		Due_Month month = new Due_Month();

		month.setUsername(username);
		month.setDuration(dues);
		month.setTypes(types);
		month.setMonth1(month1);
		month.setMonth2(month2);
		month.setMonth3(month3);
		month.setMonth4(month4);
		month.setMonth5(month5);
		month.setMonth6(month6);
		month.setMonth7(month7);
		month.setMonth8(month8);
		month.setMonth9(month9);
		month.setMonth10(month10);
		month.setMonth11(month11);
		month.setMonth12(month12);
		month.setAmount1(amount1);
		month.setAmount2(amount2);
		month.setAmount3(amount3);
		month.setAmount4(amount4);
		month.setAmount5(amount5);
		month.setAmount6(amount6);
		month.setAmount7(amount7);
		month.setAmount8(amount8);
		month.setAmount9(amount9);
		month.setAmount10(amount10);
		month.setAmount11(amount11);
		month.setAmount12(amount12);
		boolean result = service.saveMonth(month);
		if (result) {
			model.addObject("status", "details added successfully");
			model.setViewName("Employment");
		} else {
			model.addObject("status", "failed");
			model.setViewName("Month");
		}

		return model;

	}

	@RequestMapping(value = "/10month", method = RequestMethod.POST)
	public ModelAndView tenMonth(ModelAndView model, @RequestParam("username") String username,
			@RequestParam("dues") String dues, @RequestParam("types") String types,
			@RequestParam("amount") String amount, @RequestParam("month1") String month1,
			@RequestParam("month2") String month2, @RequestParam("month3") String month3,
			@RequestParam("month4") String month4, @RequestParam("month5") String month5,
			@RequestParam("month6") String month6, @RequestParam("month7") String month7,
			@RequestParam("month8") String month8, @RequestParam("month9") String month9,
			@RequestParam("month10") String month10, @RequestParam("amount1") String amount1,
			@RequestParam("amount2") String amount2, @RequestParam("amount3") String amount3,
			@RequestParam("amount4") String amount4, @RequestParam("amount5") String amount5,
			@RequestParam("amount6") String amount6, @RequestParam("amount7") String amount7,
			@RequestParam("amount8") String amount8, @RequestParam("amount9") String amount9,
			@RequestParam("amount10") String amount10) {

		Due_Month month = new Due_Month();

		month.setUsername(username);
		month.setDuration(dues);
		month.setTypes(types);
		month.setTotal_amount(amount);
		month.setMonth1(month1);
		month.setMonth2(month2);
		month.setMonth3(month3);
		month.setMonth4(month4);
		month.setMonth5(month5);
		month.setMonth6(month6);
		month.setMonth7(month7);
		month.setMonth8(month8);
		month.setMonth9(month9);
		month.setMonth10(month10);

		month.setAmount1(amount1);
		month.setAmount2(amount2);
		month.setAmount3(amount3);
		month.setAmount4(amount4);
		month.setAmount5(amount5);
		month.setAmount6(amount6);
		month.setAmount7(amount7);
		month.setAmount8(amount8);
		month.setAmount9(amount9);
		month.setAmount10(amount10);
		boolean result = service.saveMonth(month);
		if (result) {
			model.addObject("status", "details added successfully");
			model.setViewName("Employment");
		} else {
			model.addObject("status", "failed");
			model.setViewName("Month");
		}

		return model;

	}

	@RequestMapping(value = "/6month", method = RequestMethod.POST)
	public ModelAndView sixMonth(ModelAndView model, @RequestParam("username") String username,
			@RequestParam("dues") String dues, @RequestParam("types") String types,
			@RequestParam("amount") String amount, @RequestParam("month1") String month1,
			@RequestParam("month2") String month2, @RequestParam("month3") String month3,
			@RequestParam("month4") String month4, @RequestParam("month5") String month5,
			@RequestParam("month6") String month6, @RequestParam("amount1") String amount1,
			@RequestParam("amount2") String amount2, @RequestParam("amount3") String amount3,
			@RequestParam("amount4") String amount4, @RequestParam("amount5") String amount5,
			@RequestParam("amount6") String amount6) {

		Due_Month month = new Due_Month();

		month.setUsername(username);
		month.setDuration(dues);
		month.setTypes(types);
		month.setTotal_amount(amount);
		month.setMonth1(month1);
		month.setMonth2(month2);
		month.setMonth3(month3);
		month.setMonth4(month4);
		month.setMonth5(month5);
		month.setMonth6(month6);

		month.setAmount1(amount1);
		month.setAmount2(amount2);
		month.setAmount3(amount3);
		month.setAmount4(amount4);
		month.setAmount5(amount5);
		month.setAmount6(amount6);

		boolean result = service.saveMonth(month);
		if (result) {
			model.addObject("status", "details added successfully");
			model.setViewName("Employment");
		} else {
			model.addObject("status", "failed");
			model.setViewName("Month");
		}

		return model;

	}

	@RequestMapping(value = "/2month", method = RequestMethod.POST)
	public ModelAndView twoMonth(ModelAndView model, @RequestParam("username") String username,
			@RequestParam("dues") String dues, @RequestParam("types") String types,
			@RequestParam("amount") String amount, @RequestParam("month1") String month1,
			@RequestParam("month2") String month2, @RequestParam("amount1") String amount1,
			@RequestParam("amount2") String amount2) {

		Due_Month month = new Due_Month();

		month.setUsername(username);
		month.setDuration(dues);
		month.setTypes(types);
		month.setTotal_amount(amount);
		month.setMonth1(month1);
		month.setMonth2(month2);

		month.setAmount1(amount1);
		month.setAmount2(amount2);

		boolean result = service.saveMonth(month);
		if (result) {
			model.addObject("status", "details added successfully");
			model.setViewName("Employment");
		} else {
			model.addObject("status", "failed");
			model.setViewName("Month");
		}

		return model;

	}

}
