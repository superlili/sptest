package com.zhouli.spatialcrowdsourcing.scshow.dao;

import com.zhouli.spatialcrowdsourcing.scshow.entity.Sctask;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SctaskPushDao {
    List<Sctask> selectTasks();
    List<Sctask> selectMyTasks(String id);
    List<Sctask> selectMyTasksByIdAndTheme(String id, String theme);
    String selectPush_idByTheme(String theme);
    void deleteMyTask(String id, String theme);
    void deleteMyTaskById(String id);
}
