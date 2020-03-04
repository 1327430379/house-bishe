<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
  <%
	// 权限验证
	if(session.getAttribute("user")==null){
		response.sendRedirect(basePath+"indexlist.do");
		return;
	}
%>  
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">

  <title>添加房屋</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/select.css" />
<style>





</style>


</head>
<body>
 
<form class="layui-form" action="${pageContext.request.contextPath}/provider/addOneHouse" method="post">
  
  
                <div class="layui-form-item" id="addressDiv">
                    <label class="layui-form-label">详细地址</label>
                    <div class="layui-input-inline">
                        <select name="P1" lay-filter="province" id="province">
                            <option></option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="C1" lay-filter="city" id="city">
                            <option></option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="A1" lay-filter="area" id="area">
                            <option></option>
                        </select>
                    </div>
                    <div class="layui-input-inline" id="addressDetail">
                        <input id="address" type="text" name="address" lay-verify="title" autocomplete="off"
                            placeholder="请输入具体地址" class="layui-input" style="width: 120%;"
                            value="风荷苑10栋">
                        <dl id="addressTip" class="addressDl">
                        </dl>
                    </div>
                </div>
  
  
 <!-- <div class="layui-form-item">
    <label class="layui-form-label">房屋地址</label>
    <div class="layui-input-inline">
      <select name="address1">
        <option value="">请选择省</option>
        <option value="福建省" selected>福建省</option>
        <option value="广东省">广东省</option>
        <option value="浙江省">浙江省</option>
      </select>
    </div>
    <div class="layui-input-inline">
      <select name="address2">
        <option value="">请选择市</option>
        <option value="福州市"  selected>福州市</option>
        <option value="厦门市" >厦门市</option>disabled=""
        <option value="泉州市">泉州市</option>
       
      </select>
    </div>
    <div class="layui-input-inline">
      <select name="address3">
        <option value="">请选择县/区</option>
        <option value="鼓楼区" selected>鼓楼区</option>
        <option value="晋安区">晋安区</option>
        <option value="仓山区">仓山区</option>
		 <option value="马尾区">马尾区</option>
		 <option value="台江区">台江区</option>
		 <option value="长乐区">长乐区</option>
		 <option value="福清区">福清区</option>
      </select>
    </div>
    <div class="layui-form-mid layui-word-aux"></div>
  </div>
   
   
   
     <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">详细地址</label>
    <div class="layui-input-block">
      
	   <input type="text" name="address_detail" autocomplete="off"
	    placeholder="请输入小区或者街道的具体地址" class="layui-input"  value="福州鼓楼区湖光花园附近">
    </div>
  </div> -->
   
   
   
    <div class="layui-form-item">
    <label class="layui-form-label">房屋户型</label>
    <div class="layui-input-inline">
      <select name="t1">
        <option value="一室">一室</option>
        <option value="二室" selected>二室</option>
        <option value="三室">三室</option>
      
      </select>
    </div>
    <div class="layui-input-inline">
      <select name="t2">
        <option value="无厅">客厅</option>
        
        <option value="一厅"  selected>一厅</option>
        <option value="二厅" >二厅</option><!-- disabled="" -->
       
       
      </select>
    </div>
    <div class="layui-input-inline">
      <select name="t3">
        <option value="">请选择卫生间</option>
        <option value="一卫" selected>一卫</option>
        <option value="二卫">二卫</option>
        <option value="三卫">三卫</option>
		 
      </select>
    </div>
	
	<div class="layui-input-inline">
      <select name="t4">
	  <option value="">请选择厨房</option>
	   <option value="无厨房" selected>无厨房</option>
      
        <option value="一厨">一厨</option>
        <option value="二厨">二厨</option>
       
		 
      </select>
    </div>

	
    <div class="layui-form-mid layui-word-aux"></div>
  </div>
   
   
   
   <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">楼层</label>
      <div class="layui-input-inline">
        <input type="text" name="ceng" lay-verify="required|ceng" autocomplete="off" class="layui-input" value="5">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">面积</label>
      <div class="layui-input-inline">
        <input type="text" name="area" lay-verify="area" autocomplete="off" class="layui-input" value="70">
      </div>
    </div>
  </div>
   
   <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">价格</label>
      <div class="layui-input-inline" style="width: 100px;">
        <input type="text" name="price" placeholder="￥" autocomplete="off" class="layui-input" value="900">
      </div>
   <br>
  

  <div class="layui-form-item">
    <label class="layui-form-label">内部条件</label>
    <div class="layui-input-inline">
      <input type="checkbox" name="hot_shower" value="s_ico_shower" title="热水" checked>
    </div>
	<div class="layui-input-inline">
      <input type="checkbox" name="air_conditioner" value="s_ico_aircondition" title="空调">
    </div>
	<div class="layui-input-inline"><!-- fridge[fridge] -->
      <input type="checkbox" name="fridge"  value="s_ico_icebox" title="冰箱">
    </div>
	<div class="layui-input-inline">
      <input type="checkbox" name="washing_machine" value="s_ico_washer"   title="洗衣机" checked>
    </div>
	<div class="layui-input-inline">
      <input type="checkbox" name="kitchen_ware" title="厨具" value="s_ico_iscook"   checked>
    </div>
	<div class="layui-input-inline">
      <input type="checkbox" name="lift" title="电梯" value="s_ico_elevator" checked>
    </div>
	<div class="layui-input-inline">
      <input type="checkbox" name="wifi" value="s_ico_wirelessnetwork" title="wifi" checked>
    </div>
  </div>
  
  
  
    
  </div>
  
    <div class="layui-form-item layui-form-text" width="60%">
    <label class="layui-form-label">屋内情况</label>
      <div class="layui-input-block">
      <textarea name="describtion" placeholder="房屋内部情况" class="layui-textarea" autocomplete="off" >
      屋内设备齐全
      </textarea>
    </div>
  </div>
  
  
  
    <div class="layui-form-item layui-form-text" width="60%">
    <label class="layui-form-label">交通情况</label>
      <div class="layui-input-block">
      <textarea placeholder="交通情况" name="transport"  class="layui-textarea" autocomplete="off" >
      位于鼓西路公交站台旁,出行十分方便
      </textarea>
    </div>
  </div>
  
    <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">附近公园</label>
    <div class="layui-input-block">
      <textarea placeholder="附近公园"  name="park" class="layui-textarea">
      西湖公园，闽发西湖广场
      </textarea>
    </div>
  </div>
  
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">美食</label>
    <div class="layui-input-block">
      <textarea placeholder="餐饮"  name="eat" class="layui-textarea">
      西湖广场美食街
      </textarea>
    </div>
  </div>
  
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">医院</label>
    <div class="layui-input-block">
      <textarea placeholder="附近医院"  name="hospital"  class="layui-textarea">
     福建省立医院
      </textarea>
    </div>
  </div>

                                  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <input type="submit"  class="layui-btn" value="保存下一步" /><!--</button> lay-submit="" lay-filter="demo1" -->
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
  
</form>

    <script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
 <script src="${pageContext.request.contextPath}/layui/layui.all.js" type="text/javascript"></script>
     <script src="${pageContext.request.contextPath}/js/select.js" type="text/javascript" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
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
  
  
});
</script>
</body>
</html>        
        