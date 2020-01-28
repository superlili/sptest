package com.zhouli.spatialcrowdsourcing.scshow.service.Impl;

import com.zhouli.spatialcrowdsourcing.scshow.service.RepeatUse;
import com.zhouli.spatialcrowdsourcing.scshow.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class RepeatUseImpl implements RepeatUse {
    @Autowired
    UserService userService;

    public String getUserID(HttpServletRequest request){
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");
        String userID = userService.getpusher_id(username);
        return userID;
    }
}
