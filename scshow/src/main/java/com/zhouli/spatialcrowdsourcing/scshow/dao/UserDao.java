package com.zhouli.spatialcrowdsourcing.scshow.dao;

import com.zhouli.spatialcrowdsourcing.scshow.entity.Sctask;
import com.zhouli.spatialcrowdsourcing.scshow.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {
    Integer toLogin(User user);
    String getpusher_id(String username);
}
