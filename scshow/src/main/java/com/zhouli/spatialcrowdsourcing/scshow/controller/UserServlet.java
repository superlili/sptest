package com.zhouli.spatialcrowdsourcing.scshow.controller;

import com.zhouli.spatialcrowdsourcing.scshow.HttpServletRequestUtil;
import com.zhouli.spatialcrowdsourcing.scshow.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "UserServlet",urlPatterns = {"/login"})
public class UserServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Autowired
    private UserService userService;

    public UserServlet(){
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 设置编码为utf-8
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String username = HttpServletRequestUtil.getString(request, "username");
        String password = HttpServletRequestUtil.getString(request, "password");

        Integer userlogin = userService.toLogin(username, password);
        if (username != null && password != null && userlogin == 1) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            session.setAttribute("password", password);
            request.getRequestDispatcher("/jump/index").forward(request,response);
        } else {
            request.getRequestDispatcher("/jump/fail").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
