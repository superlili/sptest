package com.zhouli.spatialcrowdsourcing.scshow.service.Impl;

import com.zhouli.spatialcrowdsourcing.scshow.dao.UserDao;
import com.zhouli.spatialcrowdsourcing.scshow.entity.User;
import com.zhouli.spatialcrowdsourcing.scshow.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userdao;

    @Override
    public Integer toLogin(String username, String password){
        User user = new User();
        user.setPassword(password);
        user.setUsername(username);
        // new一个对象，使用entity中的get set方法用参数为对象赋值
        Integer userLogin = userdao.toLogin(user);
        return userLogin;
        // return userLogin = 0 或 1
    }

    @Override
    public String getpusher_id(String username){
        String id = userdao.getpusher_id(username);
        return id;
    }
}
