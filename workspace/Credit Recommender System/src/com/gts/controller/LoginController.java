package com.gts.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gts.model.ClientModel;
import com.gts.model.DocumentModel;
import com.gts.service.ClientService;

@Controller
public class LoginController {
	@Autowired
	ClientService service;

	@RequestMapping(value = "/clogin", method = RequestMethod.POST)
	public ModelAndView login(ModelAndView model, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		ClientModel client = new ClientModel();
		client.setUsername(username);
		client.setPassword(password);
		String result = service.login(username, password);
		System.out.println("-----------------" + result);
		List<DocumentModel> clist = service.getDoc(username);

		List<DocumentModel> list = service.getDoc();
		if (result != "no") {

			if (result.equalsIgnoreCase("prospective lenders")) {

				model.addObject("msg", list);
				model.addObject("msg1", username);
				model.addObject("result", result);
				model.setViewName("lender");
			}
			if (result.equalsIgnoreCase("prospective borrowers")) {

				model.addObject("msg", list);
				model.addObject("msg1", username);
				model.addObject("result", result);

				model.setViewName("borrower");
			}

		}

		return model;

	}
}
