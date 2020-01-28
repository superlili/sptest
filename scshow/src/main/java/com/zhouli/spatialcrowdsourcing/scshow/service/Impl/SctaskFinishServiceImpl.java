package com.zhouli.spatialcrowdsourcing.scshow.service.Impl;

import com.zhouli.spatialcrowdsourcing.scshow.dao.SctaskFinishDao;
import com.zhouli.spatialcrowdsourcing.scshow.entity.SctaskGet;
import com.zhouli.spatialcrowdsourcing.scshow.service.SctaskFinishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SctaskFinishServiceImpl implements SctaskFinishService {
    @Autowired
    SctaskFinishDao sctaskFinishDao;

    @Override
    public void uploadPicture(SctaskGet sctaskGet){
        sctaskFinishDao.uploadPicture(sctaskGet);
    }

    @Override
    public void uploadPictureToSelf(String id, String theme, String image, String userID){
        sctaskFinishDao.uploadPictureToSelf(id,theme,image,userID);
    }
}
