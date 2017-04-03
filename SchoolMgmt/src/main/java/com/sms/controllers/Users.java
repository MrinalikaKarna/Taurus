package com.sms.controllers;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sms.model.Leaves;
import com.sms.model.UserDetails;
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
	{if(usersModel.getMobilenumber()!=0 && usersModel.getPassword()!=null)
	{ 
		UsersModel usersModelnew = usersServices.doLogin(usersModel);
//		
		
		if (usersModelnew!=null){
			newsession.setAttribute("UsersModel", usersModel);
			UserDetails userDetailsnew = usersServices.getUserDetails(usersModelnew.getMobilenumber());
			newsession.setAttribute("UserDetails", userDetailsnew);
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
	public String showMyProfile(ModelMap model, @RequestParam("param1") long mnumber)
	{
		UserDetails usersModelDetail = (UserDetails)usersServices.getUserDetails(mnumber);
		//newsession.setAttribute("UsersModelDetail", usersModelDetail);
		model.addAttribute("UsersModelDetail",usersModelDetail);
         return "myprofile";
         }
	
	
	@RequestMapping(value="/reportcard",method=RequestMethod.GET)
	public String showMyReportCard(HttpSession newsession)
	{
         return "reportcard";
         }
	
	
	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String showAdmin(HttpSession newsession)
	{
         return "admin";
         }
	
	@RequestMapping(value="/leaves",method=RequestMethod.GET)
	public String showLeaves(ModelMap model, @RequestParam("param3") int userid)
	{   
		model.addAttribute("userId", userid);
		model.addAttribute("userLeaveData", new Leaves());
         return "leaves";
         }
	
	
	@RequestMapping(value="/leaves", method=RequestMethod.POST)
	public String applyLeaves(ModelMap model, @ModelAttribute("userLeaveData") Leaves leaves)
	{
		if(leaves.getFromdate()!=null && leaves.getReason()!=null)
	{   
		leaves.setStatus("Pending");
		boolean leaveUpdateStatus = usersServices.saveUserLeaves(leaves);
		if (leaveUpdateStatus==true){
			model.addAttribute("Status", true);
			return "leaves";
		}else{
			model.addAttribute("Status", false);
			return "leaves";
			
		}
	}else{
		return "leaves";
	}
	
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String showLogout(ModelMap model, HttpSession newsession){
		newsession.removeAttribute("UsersModel");
		return "redirect:/";
	}
		
	}


