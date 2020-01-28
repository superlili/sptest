<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bootstrap 实例 - 基本的表格</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../static/jslib/crowdsourcingjs/sure_again.js"></script>
    <link rel="stylesheet" href="../static/csslib/tables.css">
</head>
<body>
<div class="layui-form">
    <table class="table table-bordered table-striped table-hover">
        <caption>我接受的空间众包任务</caption>
        <thead>
        <tr>
            <th>发布者ID</th>
            <th>任务主题</th>
            <th>任务位置纬度</th>
            <th>任务位置经度</th>
            <th>任务内容</th>
            <th>专业要求</th>
            <th>限制时间</th>
            <th>任务奖励</th>
            <th>完成情况</th>
            <th>放弃</th>
            <th>完成</th>
        </tr>
        </thead>
        <tbody>
        <#list list1 as userInfo>
            <tr>
            <td>${userInfo.sc_push_pusher_id}</td>
            <td>${userInfo.sc_push_theme}</td>
            <td>${userInfo.sc_push_location_latitude}</td>
            <td>${userInfo.sc_push_location_longitude}</td>
            <td>${userInfo.sc_push_content}</td>
            <td>
            <#if userInfo.sc_push_professional =='0'>没有要求
            <#else>${userInfo.sc_push_professional}
            </#if>
            </td>
            <td>${userInfo.sc_push_timelimit}</td>
            <td>${userInfo.sc_push_bounty}元</td>
            <td>
            <#if userInfo.sc_push_finish =='0'>未完成
            <#else>已完成
            </#if>
            </td>
            <td><a href="/Sctask/deleteMyGetTask?id=${userInfo.sc_push_pusher_id}&theme=${userInfo.sc_push_theme}" onclick="sure_giveUp()">放弃任务</a></td>
            <td><a href="#" onclick="sure_complete()">已完成任务</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
    <button><a href="/jump/task_detail">返回</a></button>
</div>
</body>
</html>