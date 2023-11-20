package com.gts.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gts.model.DocumentModel;
import com.gts.model.PersonalModel;
import com.gts.service.ClientService;

@Controller
@PropertySource(value = "classpath:application.properties")
public class CommonController {
	@Autowired
	ClientService service;
	@Value("${aadhar}")
	private String imageAadhar;
	@Value("${pan}")
	private String imagePan;
	@Value("${profile}")
	private String imageProfile;

	@RequestMapping(value = "/personalData", method = RequestMethod.POST)
	public ModelAndView personal(ModelAndView model, @RequestParam("username") String username,
			@RequestParam("dob") String dob, @RequestParam("address") String address, @RequestParam("city") String city,
			@RequestParam("state") String state, @RequestParam("country") String country,
			@RequestParam("pincode") String pincode, @RequestParam("type") String type) {

		PersonalModel person = new PersonalModel();

		person.setAddress(address);
		person.setDob(dob);
		person.setCity(city);
		person.setState(state);
		person.setCountry(country);
		person.setPincode(pincode);
		person.setUsername(username);
		person.setType(type);

		boolean result = service.save(person);
		if (result) {
			model.addObject("msg", "personal details added");
			model.addObject("name", username);
			model.addObject("type", type);
			model.setViewName("documents");
		} else {
			model.addObject("msg", "Failed");
			model.setViewName("welcome");
		}

		return model;

	}

	@RequestMapping(value = "/Upload", method = RequestMethod.POST)
	// @PostMapping(value = "/Upload")
	public ModelAndView fileUpload(ModelAndView model, @RequestParam CommonsMultipartFile file1,
			@RequestParam CommonsMultipartFile file2, @RequestParam CommonsMultipartFile file3, HttpSession session,
			@RequestParam("username") String username, @RequestParam("type") String type,
			@RequestParam("aadhar") String aadharno, @RequestParam("pan") String panno) throws IOException {
		
		
		
		String imageaadhar = file1.getOriginalFilename();
		String imagepan = file2.getOriginalFilename();
		String imageprofile = file3.getOriginalFilename();
		System.out.println("-------------" + username + "--------" + imagepan);
		// ---------------AAdhar upload-----------------------//
		byte bytes[] = file1.getBytes();
		File file = new File(imageAadhar + username + ".jpg");
		OutputStream out = new FileOutputStream(file);

		out.write(bytes);
		out.close();
		// ---------------Pan upload-----------------------//

		byte bytes1[] = file1.getBytes();
		File file11 = new File(imagePan + username + ".jpg");
		OutputStream out1 = new FileOutputStream(file11);

		out1.write(bytes1);
		out1.close();
		// ---------------Profile upload-----------------------//

		byte bytes2[] = file1.getBytes();
		File file22 = new File(imageProfile + username + ".jpg");
		OutputStream out2 = new FileOutputStream(file22);

		out2.write(bytes2);
		out2.close();
		// ---------------MySQL upload-----------------------//

		DocumentModel doc = new DocumentModel();
		doc.setUsername(username);
		doc.setAadhar(imageAadhar + username + ".jpg");
		doc.setPan(imagePan + username + ".jpg");
		doc.setProfile(imageProfile + username + ".jpg");
		doc.setImage(username + ".jpg");
		doc.setType(type);
		doc.setAadharno(aadharno);
		doc.setPanno(panno);
		boolean result = service.saveDoc(doc);
		if (result) {
			model.addObject("msg", "Success");
			model.addObject("type", type);
			model.setViewName("index");
		}

		return model;
	}
}
