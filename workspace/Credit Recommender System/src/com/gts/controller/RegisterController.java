package com.gts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gts.model.ClientModel;
import com.gts.service.ClientService;

@Controller
public class RegisterController {
	@Autowired
	ClientService Service;

	@RequestMapping(value = "/cregister",method = RequestMethod.POST)
	public ModelAndView register(ModelAndView model, @RequestParam("name") String name,
			@RequestParam("email") String email, @RequestParam("username") String username,
			@RequestParam("password") String password, @RequestParam("type") String type) {
		System.out.println("----------"+type);
		ClientModel client=new ClientModel();
		client.setName(name);
		client.setEmail(email);
		client.setUsername(username);
		client.setPassword(password);
		client.setType(type);
		boolean result=Service.save(client);
		System.out.println("-----------"+result);
		if(result) {
			//model.addObject("msg", "Success");
			model.addObject("msg", type);
			model.addObject("msg1", username);
			model.setViewName("welcome");
			
		}else {
			model.addObject("msg", "Failed");
			model.setViewName("index");
			
		}
		
		return model;
	}

}
