package com.haozhi.handler;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.haozhi.entity.UserInfo;
import com.haozhi.service.UserInfoService;

@Controller
@RequestMapping("/userinfo")
@SessionAttributes(value={"users"})
public class UserHandler {
	
	@Autowired
	private UserInfoService userInfoService;
	
	@ModelAttribute
	public void getModel(ModelMap map){
		map.put("users",new UserInfo());
	}
	
	//登录
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(@ModelAttribute("users") UserInfo userInfo,ModelMap map){
		String name=userInfo.getUname();
		if(userInfo!=null && name.contains("@")){
			userInfo=userInfoService.loginByEamil(userInfo);
			map.put("users", userInfo);
		}else if(userInfo!=null && !name.contains("@")){
			userInfo=userInfoService.loginByUname(userInfo);
			map.put("users", userInfo);
		}
		//登录页面跳转
		if(userInfo==null){
			map.put("Message", "block");
			map.put("users", "");
			return "login";
		}
		return "index";
	}
	
	@RequestMapping(value="/checkemail",method=RequestMethod.POST)
	public void checkEmail(String email,PrintWriter out){
		System.out.println(email);
		if(email!=null && userInfoService.getEmail(email)){
			out.print(1);
		}else{
			out.print(0);
		}
		
	}
	
	@RequestMapping("/checkuname")
	public void checkUname(String uname,PrintWriter out){
		if(uname!=null && userInfoService.getEmail(uname)){
			out.print(1);
		}else{
			out.print(0);
		}
	}
	
	//注册
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(@ModelAttribute("user") UserInfo userInfo,BindingResult bindingResult,ModelMap map,HttpServletRequest request){
		System.out.println("register ===>" +userInfo);
		
		
		//注册成功
		if(userInfoService.register(userInfo)){
			System.out.println("注册成功啦。。。");
			return "login";
		}
		
		return "register";
		
	}
	
	
	@RequestMapping("/login01")
	public String login02(){
		System.out.print("YES");
		return "index";
	}
}