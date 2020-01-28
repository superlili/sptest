package com.zhouli.spatialcrowdsourcing.scshow.dao;

import com.zhouli.spatialcrowdsourcing.scshow.entity.Sctask;
import com.zhouli.spatialcrowdsourcing.scshow.entity.SctaskGet;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SctaskGetDao {
    // 查询SC_GET表中所有数据
    List<SctaskGet> selectGetTasks(@Param("id") String id);

    // 通过任务发布者id和任务主题查询SC_GET表中的数据
    List<SctaskGet> selectGetTasksByIdAndTheme(String id, String theme);

    // 接受任务后，将接受的任务插入用户自身表中
    void insertGetTaskToSelf(String userID, String id);

    // 接受任务后，将接受的任务插入SC_GET表中
    void insertGetTask(String id);

    // 点击放弃任务，删除所点击的自己已经接受的任务
    void deleteMyGetTask(String userID, String id, String theme);

}
