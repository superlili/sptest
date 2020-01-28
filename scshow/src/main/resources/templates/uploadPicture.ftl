<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>验证完成结果</title>
    <script type="text/javascript">
        $(function(){
            $("#img").change(function(){
                var filePath=$(this).val();
                var suffix = filePath.substring(filePath.lastIndexOf('.'));
                if(suffix != '.jpg' && suffix != '.png' && suffix != '.PNG' && suffix != '.JPG'){
                    alertMsg.info('请重新选择.jpg或png文件！');
                }else{
                }
            });
        });
    </script>
</head>
<body>
<form action="" method="post" enctype="multipart/form-data">
    <input type="button" value="上传图片">
    <input type="file" id="img" >
    <#--<img id="imgPre" src="${projectName}/?spm=${encryption("Commodity/ShowImg")}&id=${(commodity.comm_no)!}" width="140px" height="120px" style="margin-top: 8px; display: block;" /> -->
    <input type="datetime-local" name="data" value="2014-6-5">

</form>
</body>
</html>