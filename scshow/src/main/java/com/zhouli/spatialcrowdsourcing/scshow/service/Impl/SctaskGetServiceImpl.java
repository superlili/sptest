package com.zhouli.spatialcrowdsourcing.scshow.service.Impl;

import com.zhouli.spatialcrowdsourcing.scshow.dao.SctaskGetDao;
import com.zhouli.spatialcrowdsourcing.scshow.dao.SctaskPushDao;
import com.zhouli.spatialcrowdsourcing.scshow.entity.Sctask;
import com.zhouli.spatialcrowdsourcing.scshow.entity.SctaskGet;
import com.zhouli.spatialcrowdsourcing.scshow.service.SctaskGetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SctaskGetServiceImpl implements SctaskGetService {
    @Autowired
    private SctaskGetDao sctaskGetDao;

    @Override
    public List<SctaskGet> selectGetTasks(String id){
        return sctaskGetDao.selectGetTasks(id);
    }

    @Override
    public List<SctaskGet> selectGetTasksByIdAndTheme(String id, String theme){
        return sctaskGetDao.selectGetTasksByIdAndTheme(id, theme);
    }

    @Override
    public void insertGetTaskToSelf(String userID, String id){
        sctaskGetDao.insertGetTaskToSelf(userID,id);
    }

    @Override
    public void insertGetTask(String id){
        sctaskGetDao.insertGetTask(id);
    }

    @Override
    public void deleteMyGetTask(String userID, String id, String theme){
        sctaskGetDao.deleteMyGetTask(userID,id,theme);
    }

}
