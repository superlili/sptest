package com.zhouli.spatialcrowdsourcing.scshow.controller;

import com.zhouli.spatialcrowdsourcing.scshow.HttpServletRequestUtil;
import com.zhouli.spatialcrowdsourcing.scshow.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/toLogin")
    public String toLogin() {
        return "login";
    }

//    @RequestMapping(value = "/login")
////    @ResponseBody
//    public String Login(HttpServletRequest request) {
////        HttpServletRequest request
//        String username = HttpServletRequestUtil.getString(request, "username");
//        String password = HttpServletRequestUtil.getString(request, "password");
//
//        Integer userlogin = userService.toLogin(username, password);
////
//        if (username != null && password != null && userlogin == 1) {
//            HttpSession session = request.getSession();
//            session.setAttribute("username", username);
//            return "index";
//        } else {
//            return "fail";
//        }
//    }

//    @RequestMapping(value = "/regist")
//    @ResponseBody
//    public String regist(HttpServletRequest request) {
////        HttpServletRequest request
//        String username = HttpServletRequestUtil.getString(request, "username");
//        String password = HttpServletRequestUtil.getString(request, "password");
//
//        Integer userlogin = userService.toLogin(username, password);
////
//        if (username != null && password != null && userlogin == 1) {
//            return "index";
//
//        } else {
//            return "fail";
//        }
//    }
}
