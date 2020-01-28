package com.zhouli.spatialcrowdsourcing.scshow.service;

public interface UserService {
    Integer toLogin(String username, String password);
    String getpusher_id(String username);
//    List<User> selectLoginByUsername(String username);
}
