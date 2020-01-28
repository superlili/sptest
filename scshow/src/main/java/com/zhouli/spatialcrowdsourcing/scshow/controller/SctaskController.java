package com.zhouli.spatialcrowdsourcing.scshow.controller;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.zhouli.spatialcrowdsourcing.scshow.dao.SctaskFinishDao;
import com.zhouli.spatialcrowdsourcing.scshow.entity.Sctask;
import com.zhouli.spatialcrowdsourcing.scshow.entity.SctaskGet;
import com.zhouli.spatialcrowdsourcing.scshow.service.RepeatUse;
import com.zhouli.spatialcrowdsourcing.scshow.service.SctaskFinishService;
import com.zhouli.spatialcrowdsourcing.scshow.service.SctaskGetService;
import com.zhouli.spatialcrowdsourcing.scshow.service.SctaskPushService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import sun.misc.BASE64Encoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;
import java.security.PublicKey;
import java.sql.Blob;
import java.util.Base64;
import java.util.List;

@Controller
@RequestMapping(value = "/Sctask")
public class SctaskController {

    @Autowired
    private SctaskFinishService sctaskFinishService;

    @Autowired
    private SctaskPushService sctaskPushService;

    @Autowired
    private SctaskGetService sctaskGetService;

    @Autowired
    private RepeatUse repeatUse;

    // 选取所有众包任务
    @RequestMapping(value = "/selectTasks")
    public String selectTasks(ModelMap modelMap){
        List<Sctask> list = sctaskPushService.selectTasks();
        modelMap.addAttribute("list",list);
        return "pushtask";
    }

    // 通过id选取众包任务 id等于用户id
    @RequestMapping(value = "/selectMyTasks")
    public String selectMyTasks(ModelMap modelMap, HttpServletRequest request){
        String userID = repeatUse.getUserID(request);
        List<Sctask> list = sctaskPushService.selectMyTasks(userID);
        modelMap.addAttribute("list",list);
        return "mypushtask";
    }

    // 通过id选取全部众包任务 id等于要查看的众包任务的
    @RequestMapping(value = "/getTask")
    public String getTask(String id,String theme, ModelMap modelMap){
        List<Sctask> list = sctaskPushService.selectMyTasksByIdAndTheme(id,theme);
        modelMap.addAttribute("list",list);
        return "getTask";
    }

    // 通过id选取我的众包任务 id等于要查看的众包任务的
    @RequestMapping(value = "/getMyTask")
    public String getMyTask(String id,String theme, ModelMap modelMap){
        List<Sctask> list = sctaskPushService.selectMyTasksByIdAndTheme(id,theme);
        modelMap.addAttribute("list",list);
        return "getMyTask";
    }

    // 点击取消发布,取消发布我的空间众包任务
    @RequestMapping(value = "/deleteMyTask")
    public String deleteMyTask(String id, String theme, ModelMap modelMap){
        // 删除空间任务，其中空间任务发布者的ID和空间任务主题为筛选条件
        sctaskPushService.deleteMyTask(id,theme);
        // 跳回我发布的空间众包页面，通过id查询删除后的 我发布的剩余的 空间众包任务页面
        List<Sctask> list = sctaskPushService.selectMyTasks(id);
        modelMap.addAttribute("list",list);
        return "mypushtask";
    }

    // 接受众包任务 跳转到我接受的众包任务页面
    @RequestMapping(value = "/getTaskOver")
    public String getTaskOver(String id, ModelMap modelMap, HttpServletRequest request){
        String userID = repeatUse.getUserID(request);
        // 将要接受的众包任务导入用户自身表中
        sctaskGetService.insertGetTaskToSelf(userID,id);
        // 将要接受的众包任务导入SC_GET表
        sctaskGetService.insertGetTask(id);
        // 将此众包任务从SC_PUSH表删除
        sctaskPushService.deleteMyTaskById(id);
        // 展示该用户接受的空间任务
        List<SctaskGet> list = sctaskGetService.selectGetTasks(userID);
        modelMap.addAttribute("list1",list);
        return "projects_afterGetTask";
    }

    // 页面直接点击“空间众包任务管理”  查询数据并跳转到我接受的众包任务页面
    @RequestMapping(value = "/selectMyTasks_get")
    public String selectMyTasks_get(ModelMap modelMap, HttpServletRequest request){
        String userID = repeatUse.getUserID(request);
        List<SctaskGet> list = sctaskGetService.selectGetTasks(userID);
        modelMap.addAttribute("list1",list);
        return "projects";
    }

    @RequestMapping(value = "/deleteMyGetTask")
    public String deleteMyGetTask(String id, String theme, ModelMap modelMap, HttpServletRequest request){
        String userID = repeatUse.getUserID(request);
        sctaskGetService.deleteMyGetTask(userID,id,theme);
        List<SctaskGet> list = sctaskGetService.selectGetTasks(userID);
        modelMap.addAttribute("list1",list);
        return "projects";
    }

    @RequestMapping(value = "/completeTask")
    public String completeTask(String id, String theme, ModelMap modelMap){
        List<SctaskGet> list = sctaskGetService.selectGetTasksByIdAndTheme(id, theme);
        modelMap.addAttribute("list",list);
        return "1";
    }

    @RequestMapping(value = "/uploadPicture")
    public String uploadPicture(String id, String theme, SctaskGet sctaskGet, HttpServletRequest request, HttpServletResponse response) throws Exception{
        MultipartHttpServletRequest mr = (MultipartHttpServletRequest) request;
        MultipartFile file = mr.getFile("file");
        BASE64Encoder encoder = new BASE64Encoder();
        String image = encoder.encode(file.getBytes());
        sctaskGet.setSc_get_pusher_id(id);
        sctaskGet.setSc_get_theme(theme);
        sctaskGet.setFinish_img(image);
        sctaskFinishService.uploadPicture(sctaskGet);
//        JSONObject jsonObject = null;
//        jsonObject = new JSONObject("{flag : true}");
//        response.getOutputStream().write(jsonObject.toString().getBytes("utf-8"));

        String userID = repeatUse.getUserID(request);
        System.out.println(userID);
        System.out.println(id);
        System.out.println(theme);
        System.out.println(image);
        sctaskFinishService.uploadPictureToSelf(id, theme, image, userID);
//        System.out.println(userID);
//        sctaskGetService.uploadPictureToSelf(userID,image);
        return "1";
    }










    // 发布任务
    @RequestMapping(value = "/releaseTasks")
    public String releaseTasks(){
        return "releaseTasks";
    }
}
