<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Bootstrap 实例 - 基本的表格</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../static/jslib/crowdsourcingjs/sure_again.js"></script>
    <link rel="stylesheet" href="../static/csslib/tables.css">
</head>
<body>
<form class="layui-form" action="/Sctask/selectTasks" method="post">
    <#--<div class="btn-group">-->
        <#--<button type="button" class="btn btn-default dropdown-toggle"-->
                <#--data-toggle="dropdown">-->
            <#--选择 <span class="caret"></span>-->
        <#--</button>-->
        <#--<ul class="dropdown-menu" role="menu">-->
            <#--<li><a href="/Sctask/selectTasks">全部众包任务</a></li>-->
            <#--<li class="divider"></li>-->
            <#--<li><a href="/Sctask/selectMyTasks">我发布的众包任务</a></li>-->
        <#--</ul>-->
    <#--</div>-->

    <table class="table table-bordered table-striped table-hover">
        <caption>我发布的空间众包任务</caption>
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
            <th>详情</th>
            <th>取消</th>
        </tr>
        </thead>
        <tbody>
        <#list list as userInfo>
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
            <td><a href="/Sctask/getMyTask?id=${userInfo.sc_push_pusher_id}&theme=${userInfo.sc_push_theme}">点击查看</a></td>
            <td><a href="/Sctask/deleteMyTask?id=${userInfo.sc_push_pusher_id}&theme=${userInfo.sc_push_theme}" onclick="delete_sure()">取消发布</a></td>
            <!--<td><input type="checkbox" value="$///{userInfo.students_Id}" name="deletestudents"></td>-->
        </tr>
        </#list>
        </tbody>
    </table>
</form>
</body>
</html>