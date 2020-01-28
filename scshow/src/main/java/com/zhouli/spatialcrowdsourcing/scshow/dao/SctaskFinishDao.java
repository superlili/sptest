package com.zhouli.spatialcrowdsourcing.scshow.dao;

import com.zhouli.spatialcrowdsourcing.scshow.entity.SctaskGet;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SctaskFinishDao {

    // 上传完成任务的图片至表SC_GET
    void uploadPicture(SctaskGet sctaskGet);
    // 上传完成任务的图片至用户自身表
    void uploadPictureToSelf(String id, String theme, String image, String userID);

}
