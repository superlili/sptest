<#list list as userInfo>
<span style="font-size:18px;"><!DOCTYPE html>
<html lang="zh-cn" class="hb-loaded">
    <head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <script src="../static/jslib/jquery-1.12.4.min.js"></script>
    <script language="javascript" src="../static/jslib/ajaxfileupload.js" > </script>
    <script type="text/javascript">
	 	function preview(file){
            var prevDiv = document.getElementById('preview');
            if (file.files && file.files[0]){
                var reader = new FileReader();
                reader.onload = function(evt){
                    prevDiv.innerHTML = '<img src="' + evt.target.result + '" />';
                }
                reader.readAsDataURL(file.files[0]);
            }else{
                prevDiv.innerHTML = '<div class="img" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src=\'' + file.value + '\'"></div>';
            }
        }
	</script>
    <script>
 	    //新建或编辑 保存提交
        function submitPic(){
            var type="1";//展示图片
            var f = $("#file").val();
            if(f==null||f==""){
                $("#picTip").html("<span style='color:Red'>错误提示:上传文件不能为空,请重新选择文件</span>");
                alert("d");
                return false;
            }else{
                var extname = f.substring(f.lastIndexOf(".")+1,f.length);
                extname = extname.toLowerCase();//处理了大小写
                if(extname!= "jpeg"&&extname!= "jpg"&&extname!= "gif"&&extname!= "png"){
                    $("#picTip").html("<span style='color:Red'>错误提示:格式不正确,支持的图片格式为：JPEG、GIF、PNG！</span>");
                    return false;
                }
            }
            var file = document.getElementById("file").files;
            var size = file[0].size;
            if(size>2097152){
                $("#picTip").html("<span style='color:Red'>错误提示:所选择的图片太大，图片大小最多支持2M!</span>");
                return false;
            }
            ajaxFileUploadPic(name,type);
        }

        function ajaxFileUploadPic() {
            $.ajaxFileUpload({
                url : '/Sctask/uploadPicture?id=${userInfo.sc_get_pusher_id}&theme=${userInfo.sc_get_theme}', //用于文件上传的服务器端请求地址
                secureuri : false, //一般设置为false
                fileElementId : 'file', //文件上传空间的id属性  <input type="file" id="file" name="file" />
                type : 'post',
                dataType : 'json', //返回值类型 一般设置为json
                success : function(data, status) //服务器成功响应处理函数
                {
                    // var path = data.Path;
                    // data = jQuery.parseJSON(jQuery(data).text());
                    // var path = data.Path;
                    //alert(data.filePath);
                    $("#picTip").html("<span style='color:Red'>图片上传成功!</span>");
                    alert("图片上传成功");
                },
                error : function(data, status, e)//服务器响应失败处理函数
                {
                    //alert(data.filePath);
                    $("#picTip").html("<span style='color:Red'>图片上传失败!</span>");
                    alert("图片上传失败");
                }
            });
            return false;
        }

</script>

  </head>
<body>
    <div id="uploadPicWindow" class="easyui-window" title="上传图片"  style="width:100%;height:100%;padding:20px;background:#fafafa;" data-options="iconCls:'icon-save',closable:true, collapsible:true,minimizable:true,maximizable:true">
        <form id="picForm" action="" method="post">
            <div id="preview"></div>
            <div style="margin-bottom:20px;padding-top: 20px">
              	  <span style="color: green">上传完成照:</span>
                <input type="file" name="file" id="file" data-options="prompt:'Choose a file...'" style="width:80%" onchange="preview(this);"/>
            </div>
            <div id="picTip"></div>
            <div id="formWindowfooterPic1" style="padding-top: 20px; text-align:center;">
                <a href="#" onclick="submitPic();" class="easyui-linkbutton" data-options="iconCls:'icon-save'">上传</a>
            </div>
        </form>
    </div>
</body>
</html></span>
</#list>