package com.zhouli.spatialcrowdsourcing.scshow.service;

import com.zhouli.spatialcrowdsourcing.scshow.entity.SctaskGet;

public interface SctaskFinishService {
    void uploadPicture(SctaskGet sctaskGet);
    void uploadPictureToSelf(String id, String theme, String image, String userID);
}
