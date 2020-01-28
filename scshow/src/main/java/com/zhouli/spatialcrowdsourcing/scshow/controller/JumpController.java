package com.zhouli.spatialcrowdsourcing.scshow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
// 跳转指定页面
@RequestMapping(value = "/jump")
public class JumpController {

    // 跳转至登陆成功后index首页
    @RequestMapping(value= "/index")
    public String index(){
        return "index";
    }

    // 跳转至登陆失败后页面
    @RequestMapping(value= "/fail")
    public String fail(){
        return "fail";
    }

    // 跳转至空间众包地图
    @RequestMapping(value= "/scmap")
    public String scmap(){
        return "scmap";
    }

    // 跳转至空间服务查询
    @RequestMapping(value= "/maplayeranalysis")
    public String maplayeranalysis(){
        return "maplayeranalysis";
    }

    // 跳转至空间众包图层查询
    @RequestMapping(value= "/CrowdsourcingLayerList")
    public String CrowdsourcingLayerList(){
        return "CrowdsourcingLayerList";
    }

    // 跳转至空间众包工人查询
    @RequestMapping(value= "/crowdworkermapquery")
    public String crowdworkermapquery(){
        return "crowdworkermapquery";
    }

    // 跳转至选取区域众包工人
    @RequestMapping(value= "/ch_drawqueryworker")
    public String ch_drawqueryworker(){
        return "ch_drawqueryworker";
    }

    // 跳转至基于格网查询工人
    @RequestMapping(value= "/ExperimentForDataDESCRIPT")
    public String ExperimentForDataDESCRIPT(){
        return "ExperimentForDataDESCRIPT";
    }

    // 跳转至基于用户ID查询工人
    @RequestMapping(value= "/queryworkerwithid")
    public String queryworkerwithid(){
        return "queryworkerwithid";
    }

    // 跳转至空间缓冲区分析
    @RequestMapping(value= "/pointbuffer")
    public String pointbuffer(){
        return "pointbuffer";
    }

    // 跳转至空间任务展示
    @RequestMapping(value= "/task_detail")
    public String task_detail(){
        return "redirect:/Sctask/selectTasks";
    }

    // 跳转至空间任务管理
    @RequestMapping(value= "/projects")
    public String projects(){
        return "redirect:/Sctask/selectMyTasks_get";
    }

}
