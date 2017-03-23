package com.sms.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sms.model.UsersModel;
import com.sms.services.UsersServiceImpl;
import com.sms.services.UsersServices;

@Controller
@RequestMapping(value="/users")
public class Users {
	
	@Autowired
	private UsersServices usersServices;
	
	
	
	@RequestMapping(value="/page", method=RequestMethod.GET)
	public ModelAndView getPage(){
		ModelAndView view = new ModelAndView("Hello");
		return view;
	}
	

	
	@RequestMapping(value="/welcome", method=RequestMethod.POST)
	public String loginUser(ModelMap model, @ModelAttribute("userLoginData") UsersModel usersModel, HttpSession newsession)
	{if(usersModel.getUserName()!=null && usersModel.getUserPassword()!=null)
	{ 
		UsersModel usersModelnew = usersServices.doLogin(usersModel);
		
		if (usersModelnew!=null){
			newsession.setAttribute("UsersModel", usersModel);
			return "redirect:Hello";
		}else{
			model.put("Failed", "login failed");
			return "redirect:/";
		}
	}else{
		return "redirect:/";
	}
	}
	
	
	
	@RequestMapping(value="/Hello", method=RequestMethod.GET)
	public String showWelcome(ModelMap model){
		model.put("Hello", new UsersModel());
		return "Hello";
	}
	
	
	@RequestMapping(value="/myprofile",method=RequestMethod.GET)
	public String showMyProfile(ModelMap model, @RequestParam("param1") String uName, HttpSession newsession)
	{
		UsersModel usersModelDetail = (UsersModel)usersServices.getUserDetails(uName);
		newsession.setAttribute("UsersModelDetail", usersModelDetail);
		model.put("UsersModelDetail",usersModelDetail);
         return "myprofile";
         }
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String showLogout(ModelMap model, HttpSession newsession){
		newsession.removeAttribute("UsersModel");
		return "redirect:/";
	}
		
	}


