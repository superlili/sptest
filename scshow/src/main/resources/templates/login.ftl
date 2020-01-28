<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户登录</title>
</head>
<body>
<div>
    <form action="/login" method="post">
        <input name="username" placeholder="用户名" type="text"/><br>
        <input name="password" placeholder="密码" type="password"> <br>
        <input type="submit" onclick="getuser" value="登录">
        <input type="button" value="注册">
    </form>
</div>
</body>
</html>