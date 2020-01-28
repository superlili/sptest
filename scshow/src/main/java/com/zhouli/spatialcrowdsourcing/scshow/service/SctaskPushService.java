package com.zhouli.spatialcrowdsourcing.scshow.service;

import com.zhouli.spatialcrowdsourcing.scshow.entity.Sctask;

import java.util.List;

public interface SctaskPushService {
    List<Sctask> selectTasks();
    List<Sctask> selectMyTasks(String id);
    String selectPush_idByTheme(String theme);
    List<Sctask> selectMyTasksByIdAndTheme(String id, String theme);
    void deleteMyTask(String id, String theme);
    void deleteMyTaskById(String id);
}
