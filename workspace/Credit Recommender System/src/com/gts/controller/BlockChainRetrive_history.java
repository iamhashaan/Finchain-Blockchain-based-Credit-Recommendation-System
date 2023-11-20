package com.gts.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.gts.model.lending_history;
import com.gts.service.ClientService;

@Controller
public class BlockChainRetrive_history {

	@Autowired
	private ClientService service;

	public static String USER_AGENT = "Mozilla/5.0";

	@SuppressWarnings("unused")
	public List<String> getQrDetails(String email, String cers) throws Exception {

		JSONObject jsonObject = new JSONObject();
		String signature = "";
		ReadPropertyy property = new ReadPropertyy();
		String url = property.getURLDetails() + "chain";

		URL obj = new URL(url);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();

		con.setRequestMethod("GET");
		con.setRequestProperty("User-Agent", USER_AGENT);

		int responseCode = con.getResponseCode();
		System.out.println("\nSending 'GET' request to URL : " + url);
		System.out.println("Response Code : " + responseCode);

		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		String inputLine;
		StringBuffer response1 = new StringBuffer();

		while ((inputLine = in.readLine()) != null) {
			response1.append(inputLine);
		}
		in.close();
		String data = response1.toString();
		// System.out.println(data);
		Object obj1 = "";
		try {
			obj1 = new JSONParser().parse(data);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		JSONObject jo = (JSONObject) obj1;

		Long blocksize = (Long) jo.get("length");
		// System.out.println("blockSize---------->" + blocksize);

		JSONArray array = (JSONArray) jo.get("chain");

		JSONObject jsonObject2 = null;
		JSONArray array2 = null;
		String dec = "";

		List<String> sender = new ArrayList<String>();
		String status = "";

		for (int i = 1; i <= array.size() - 1; i++) {

			jsonObject = (JSONObject) array.get(i);
			array2 = (JSONArray) jsonObject.get("transactions");
			jsonObject = (JSONObject) array2.get(0);

			
			String borrowername = (String) jsonObject.get("borrower_name");
			System.out.println("----------"+borrowername);

			if (email.equalsIgnoreCase(borrowername)) {

				// String lendername = (String) jsonObject.get("amount");
			//	String borrowername = (String) jsonObject.get("borrower_name");
				String lender_name = (String) jsonObject.get("lender_name");
				String totalamount = (String) jsonObject.get("amount");
				String month_amountt = (String) jsonObject.get("month_amount");
				String pay_datee = (String) jsonObject.get("pay_month");
				String paid_date = (String) jsonObject.get("paid_date");
				String penaltyy = (String) jsonObject.get("penalty");
				String month_statuss = (String) jsonObject.get("status");
				String dues=(String) jsonObject.get("dues");
				String types=(String) jsonObject.get("types");

				String str = lender_name + "*" + borrowername + "*" + totalamount + "*" + month_amountt + "*"
						+ pay_datee + "*" + penaltyy + "*" + month_statuss+"*"+dues+"*"+types+"*"+paid_date;
				sender.add(str);
				
				System.out.println("------------"+str);

//		
			}

		}
		return sender;

	}

}
