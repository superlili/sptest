package com.zhouli.spatialcrowdsourcing.scshow.service;

import com.zhouli.spatialcrowdsourcing.scshow.entity.Sctask;
import com.zhouli.spatialcrowdsourcing.scshow.entity.SctaskGet;

import java.util.List;

public interface SctaskGetService {
    List<SctaskGet> selectGetTasks(String id);
    List<SctaskGet> selectGetTasksByIdAndTheme(String id, String theme);
    void insertGetTaskToSelf(String userID, String id);
    void insertGetTask(String id);
    void deleteMyGetTask(String userID, String id, String theme);
}
