<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">

  <title>layui在线调试</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">

<style>


.h_add_pic,.file_input{ position:absolute; left:5px; top:340px; width:180px; height:180px; cursor:pointer;}
.h_add_pic{z-index:5;background:url(${pageContext.request.contextPath}/images/fb_sprice.png) no-repeat 0 -2162px;}
.h_add_pic_h5{background:url(${pageContext.request.contextPath}/images/fb_sprice.png) no-repeat 0 -539px; width:176px; height:176px;}
.file_input{ z-index:6; filter:Alpha(opacity=0);opacity:0;}
.upload_now{ background:url(${pageContext.request.contextPath}/css/images/detail/fb_sprice.png)no-repeat 0 -2162px; width:180px; height:180px;}
.null_element{ width:180px; height:180px;}
.img_btm_bg,.img_btm_bg1{ position:absolute; left:5px; top:155px; z-index:5; background:url(images/detail/fb_sprice.png) no-repeat 0 -736px; width:180px; height:30px; line-height:30px; text-align:center; color:#fff;}
.img_btm_bg1{ background-position:0 -769px;}
.img_btm_bg1 span{ cursor:pointer;}
.rote_text,.delete_text{ display:block; float:left; width:90px; text-align:center; color:#fff; cursor:pointer;}
.upload_bg,.upload_text{ position:absolute; left:5; top:5; width:180px; height:180px; line-height:180px; text-align:center; color:#fff;}
.upload_bg{ background:#010101;filter:Alpha(opacity=50);opacity:0.5; z-index:2;}
.upload_text{ z-index:3;}
.pho_tip_text{ color:#f05b72; position:relative; top:-26px; left:56px;}
#imageBox li.drag_end{ border:1px dashed #d1d1d1; background:#fff;}

</style>
<script type="text/javascript">
		
	 function validate(){
	
              var pwd1 = document.getElementById("password").value;
              var pwd2 =document.getElementById("password2").value;
	
              if(pwd1 == pwd2) {
                  document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
                  document.getElementById("submit").disabled = false;
             // alert("1");
			  }
              else {
                  document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
                document.getElementById("submit").disabled = true;
            

          }
}
		</script>


</head>
<body>
 
<form class="layui-form" action="<%=basePath%>customer/addInfo"  method="post" enctype="multipart/form-data">
  
   
     <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">真实姓名</label>
      <div class="layui-input-inline">
        <input type="text" name="name"  autocomplete="off" class="layui-input" value="vip_guest1" >
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">昵称</label>
      <div class="layui-input-inline">
        <input type="text" name="nickname" lay-verify="nickname" autocomplete="off" class="layui-input" value="vip_guest1">
      </div>
    </div>
  </div>

     <div class="layui-form-item">
    <label class="layui-form-label">身份证号</label>
    <div class="layui-input-inline">
      <input type="text" name="idcard" lay-verify="idcard" placeholder="" autocomplete="off" class="layui-input" value="452500199611017967">
    </div>
  </div>
   
    <div class="layui-form-item">
    <label class="layui-form-label">性别</label>
    <div class="layui-input-block">
      <input type="radio" name="sex" value="男" title="男" checked="">
      <input type="radio" name="sex" value="女" title="女">
     
    </div>
  </div>
   
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">验证手机</label>
      <div class="layui-input-inline">
        <input type="tel" name="phone" lay-verify="required|phone" autocomplete="off" class="layui-input" value="18290080697">
      </div>
    </div>
    <!--   
	<div class="layui-inline">
      <label class="layui-form-label">验证邮箱</label>
      <div class="layui-input-inline">
        <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input" value="18290080697@163.com">
      </div>
    </div>
	-->
	
	<div class="layui-inline">
      <label class="layui-form-label">职业</label>
      <div class="layui-input-inline">
        <input type="text" name="job"   autocomplete="off" placeholder="职业"  value="程序员"   class="layui-input">
      </div>
    </div>
	
  </div>
  
   <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">请输入密码</label>
      <div class="layui-input-inline">
        <input type="password" name="password" id="password"  lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input" value='123456'>
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">再次输入</label>
      <div class="layui-input-inline">
        <input type="password" name="password2" id="password2"   lay-verify="pass" placeholder="再次输入密码" autocomplete="off" class="layui-input" value='123456' onkeyup="validate()">
      </div>
    </div>
  </div>
  
  <span id="tishi"></span>
     <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">详细地址</label>
    <div class="layui-input-block" >
      
	   <input type="text" name="address"   autocomplete="off" placeholder="请输入小区或者街道的具体地址" value="厦门市湖里区"   class="layui-input" >
    </div>
  </div>

    

  <div id='fileNow' class="layui-form-item" >
                        <input class="file_input" type="file" name="headImage" id="headImage">
                        <div class="h_add_pic"></div>
                    </div>
	
<br>	<br>	<br>	<br>	<br>	<br>	<br>	<br>	<br>	<br><br>	<br>	<br>	<br>	<br>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
 

    <script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js" type="text/javascript"></script>
 <script src="${pageContext.request.contextPath}/layui/layui.all.js" type="text/javascript"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
/* layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
  
  //日期
  
  
  laydate.render({
    elem: '#date'
  });
  laydate.render({
    elem: '#date1'
  });
  
  //创建一个编辑器
  var editIndex = layedit.build('LAY_demo_editor');
 
  //自定义验证规则
  form.verify({
    title: function(value){
      if(value.length < 5){
        return '标题至少得5个字符啊';
      }
    }
    ,pass: [/(.+){6,12}$/, '密码必须6到12位']
    ,content: function(value){
      layedit.sync(editIndex);
    }
  });
  
  //监听指定开关
  form.on('switch(switchTest)', function(data){
    layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
      offset: '6px'
    });
    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
  });
  
  //监听提交
  form.on('submit(demo1)', function(data){
    layer.alert(JSON.stringify(data.field), {
      title: '最终的提交信息'
    })
    return false;
  });
  
  
}); */
</script>
</body>
</html>        
        