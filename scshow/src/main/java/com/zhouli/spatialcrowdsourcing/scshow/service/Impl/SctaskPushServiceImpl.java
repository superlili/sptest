package com.zhouli.spatialcrowdsourcing.scshow.service.Impl;

import com.zhouli.spatialcrowdsourcing.scshow.dao.SctaskPushDao;
import com.zhouli.spatialcrowdsourcing.scshow.entity.Sctask;
import com.zhouli.spatialcrowdsourcing.scshow.service.SctaskPushService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SctaskPushServiceImpl implements SctaskPushService {
    @Autowired
    private SctaskPushDao sctaskPushDao;

    @Override
    public List<Sctask> selectTasks(){
        return sctaskPushDao.selectTasks();
    }

    @Override
    public List<Sctask> selectMyTasks(String id){
        return sctaskPushDao.selectMyTasks(id);
    }

    @Override
    public String selectPush_idByTheme(String theme){
        return sctaskPushDao.selectPush_idByTheme(theme);
    }

    @Override
    public List<Sctask> selectMyTasksByIdAndTheme(String id, String theme){
        return sctaskPushDao.selectMyTasksByIdAndTheme(id,theme);
    }

    @Override
    public void deleteMyTask(String id, String theme){
        sctaskPushDao.deleteMyTask(id, theme);
    }

    @Override
    public void deleteMyTaskById(String id){
        sctaskPushDao.deleteMyTaskById(id);
    }
}
