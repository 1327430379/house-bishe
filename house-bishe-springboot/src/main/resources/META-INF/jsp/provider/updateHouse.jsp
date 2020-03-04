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

  <title>layui在线调试</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/select.css" />
</head>
<body>
 
<form class="layui-form" action="${pageContext.request.contextPath}/provider/updateHouse" method="post">
  <input type="hidden" name="house_id" value="${h.house_id }">

       <div class="layui-form-item" id="addressDiv">
                    <label class="layui-form-label">详细地址</label>
                    <div class="layui-input-inline">
                        <select name="P1" lay-filter="province" id="province">
                            <option></option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="C1" lay-filter="city" id="city" >
                            <option> </option>
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
                            value="${h.address2}">
                        <dl id="addressTip" class="addressDl">
                        </dl>
                    </div>
                </div>


<%--  <div class="layui-form-item">
    <label class="layui-form-label">房屋地址</label>
    <div class="layui-input-inline">
      <select name="address1">
        <option value="">请选择省</option>
        <option value="广西省" selected>福建省</option>
        <option value="广东省">广东省</option>
        <option value="福建省">广西省</option>
      </select>
    </div>
    <div class="layui-input-inline">
      <select name="address2">
        <option value="">请选择市</option>
        <option value="福州市"  <c:if test="${htest.city=='福州市'}"> selected</c:if>>福州市</option>
        <option value="柳州市" <c:if test="${htest.city=='柳州市'}"> selected</c:if>>柳州市</option>
        <option value="南宁市"  <c:if test="${htest.city=='南宁市'}"> selected</c:if>>南宁市</option>
       
      </select>
    </div>
    <div class="layui-input-inline">
      <select name="address3">
        <option value="">请选择县/区</option>
        <option value="七星区" <c:if test="${htest.qu=='七星区'}"> selected</c:if>>七星区</option>
       
        <option value="象山区" <c:if test="${htest.qu=='象山区'}"> selected</c:if>>象山区</option>
         <option value="秀峰区" <c:if test="${htest.qu=='秀峰区'}"> selected</c:if>>秀峰区</option>
         <option value="叠彩区" <c:if test="${htest.qu=='叠彩区'}"> selected</c:if>>叠彩区</option>
        <option value="雁山区" <c:if test="${htest.qu=='雁山区'}"> selected</c:if>>雁山区</option>
		  <option value="八里街" <c:if test="${htest.qu=='八里街'}"> selected</c:if>>八里街</option>
      </select>
    </div>
    <div class="layui-form-mid layui-word-aux"></div>
  </div>
   
   
   
     <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">详细地址</label>
    <div class="layui-input-block">
      
	   <input type="text" name="address_detail" autocomplete="off"
	    placeholder="请输入小区或者街道的具体地址" class="layui-input"  value="${h.address2 }">
    </div>
  </div>
    --%>
   
   
    <div class="layui-form-item">
    <label class="layui-form-label">房屋户型</label>
    <div class="layui-input-inline">
      <select name="t1">
        <option value="一室" <c:if test="${htest.shi=='一室'}"> selected</c:if>>一室</option>
        <option value="二室" <c:if test="${htest.shi=='二室'}"> selected</c:if> >二室</option>
        <option value="三室" <c:if test="${htest.shi=='三室'}"> selected</c:if>>三室</option>
      
      </select>
    </div>
    <div class="layui-input-inline">
      <select name="t2">
        <option value="无厅" <c:if test="${htest.ting=='无厅'}"> selected</c:if>>客厅</option>
        
        <option value="一厅"  <c:if test="${htest.ting=='一厅'}"> selected</c:if>>一厅</option>
        <option value="二厅"  <c:if test="${htest.ting=='二厅'}"> selected</c:if>>二厅</option><!-- disabled="" -->
       
       
      </select>
    </div>
    <div class="layui-input-inline">
      <select name="t3">
        <option value="无卫" >请选择卫生间</option>
        <option value="一卫" <c:if test="${htest.wei=='一卫'}"> selected</c:if>>一卫</option>
        <option value="二卫" <c:if test="${htest.wei=='二卫'}"> selected</c:if>>二卫</option>
        <option value="三卫" <c:if test="${htest.wei=='三卫'}"> selected</c:if>>三卫</option>
		 
      </select>
    </div>
	
	<div class="layui-input-inline">
      <select name="t4">
	  <option value="">请选择厨房</option>
	   <option value="无厨" >无厨房</option>
      
        <option value="一厨" <c:if test="${htest.chu=='一厨'}"> selected</c:if>>一厨</option>
        <option value="二厨" <c:if test="${htest.chu=='一厨'}"> selected</c:if>>二厨</option>
       
		 
      </select>
    </div>

	
    <div class="layui-form-mid layui-word-aux"></div>
  </div>
   
   
   
   <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">楼层</label>
      <div class="layui-input-inline">
        <input type="text" name="ceng" lay-verify="required|ceng" autocomplete="off" class="layui-input" value="${h.ceng }">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">面积</label>
      <div class="layui-input-inline">
        <input type="text" name="area" lay-verify="area" autocomplete="off" class="layui-input" value="${h.area }">
      </div>
    </div>
  </div>
   
   <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">价格</label>
      <div class="layui-input-inline" style="width: 100px;">
        <input type="text" name="price" placeholder="￥" autocomplete="off" class="layui-input" value="${h.price }">
      </div>
   <br>
  

  <div class="layui-form-item">
    <label class="layui-form-label">内部条件</label>
    <div class="layui-input-inline">
      <input type="checkbox" name="hot_shower" value="s_ico_shower" title="热水" <c:if test="${s.hot_shower eq 's_ico_shower'}"> checked="checked"</c:if>>
    </div>
	<div class="layui-input-inline">
      <input type="checkbox" name="air_conditioner" value="s_ico_aircondition" title="空调"
       <c:if test="${s.air_conditioner eq 's_ico_aircondition'}"> checked="checked"</c:if>
      >
    </div>
	<div class="layui-input-inline"><!-- fridge[fridge] -->
      <input type="checkbox" name="fridge"  value="s_ico_icebox" title="冰箱"
       <c:if test="${s.fridge eq 's_ico_icebox'}"> checked="checked"</c:if>
      >
    </div>
	<div class="layui-input-inline">
      <input type="checkbox" name="washing_machine" value="s_ico_washer"   title="洗衣机" 
      <c:if test="${s.washing_machine eq 's_ico_washer'}"> checked="checked"</c:if>
      >
    </div>
	<div class="layui-input-inline">
      <input type="checkbox" name="kitchen_ware" title="厨具" value="s_ico_iscook"   
       <c:if test="${s.kitchen_ware eq 's_ico_iscook'}"> checked="checked"</c:if>>
    </div>
	<div class="layui-input-inline">
      <input type="checkbox" name="lift" title="电梯" value="s_ico_elevator" 
       <c:if test="${s.lift eq 's_ico_elevator'}"> checked="checked"</c:if>>
    </div>
	<div class="layui-input-inline">
      <input type="checkbox" name="wifi" value="s_ico_wirelessnetwork" title="wifi" 
       <c:if test="${s.wifi eq 's_ico_wirelessnetwork'}"> checked="checked"</c:if>  >
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
      位于16号公交站台旁,出行十分方便
      </textarea>
    </div>
  </div>
  
    <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">附近公园</label>
    <div class="layui-input-block">
      <textarea placeholder="附近公园"  name="park" class="layui-textarea">
      ${l.park }
      </textarea>
    </div>
  </div>
  
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">美食</label>
    <div class="layui-input-block">
      <textarea placeholder="餐饮"  name="eat" class="layui-textarea">
       ${l.eat }
      </textarea>
    </div>
  </div>
  
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">医院</label>
    <div class="layui-input-block">
      <textarea placeholder="附近医院"  name="hospital"  class="layui-textarea">
   ${l.hospital }
      </textarea>
    </div>
  </div>
  
  
                                  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <input type="submit"  class="layui-btn" value="保存不修改图片" /><!--</button> lay-submit="" lay-filter="demo1"   layui-btn   layui-btn layui-btn-primary -->
      <button type="button"   onclick="fun('${h.house_id}')" class="layui-btn">修改图片</button>
    </div>
  </div>
  
</form>

    <script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js" type="text/javascript"></script>
 <script src="${pageContext.request.contextPath}/layui/layui.all.js" type="text/javascript"></script>
 <%-- <script src="${pageContext.request.contextPath}/js/select.js" type="text/javascript" charset="utf-8"></script> --%>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>

//引入新的插件
layui.config({
    base: 'http://localhost:8080/house/js/'//拓展模块的根目录
}).extend({
    pca: 'pca'
});


//使用自定义的插件pca
layui.use(['form', 'layedit', 'laydate', 'upload', "jquery", "pca"], function () {
    var $ = layui.$
        , form = layui.form
        , pca = layui.pca;
    //带初始值进行初始化
    pca.init('select[name=P1]', 'select[name=C1]', 'select[name=A1]', '福建', '${cityname}', '${cityqu}');

    //不带初始值
    // pca.init('select[name=P1]', 'select[name=C1]', 'select[name=A1]');

    //输入提示
    $("#address").bind('input propertychange', function () {
        var address = document.getElementById("address").value;
        if (address == "") {
            document.getElementById("addressTip").style.display = "none";
            return;
        }
        var html = '';
        var province = document.getElementById("province").value;
        if (province == "全部") {
            province = '';
        }
        var city = document.getElementById("city").value;
        if (city == "全部") {
            city = '';
        }
        var area = document.getElementById("area").value;
        if (area == "全部") {
            area = '';
        }

        //查询关键字
        var keywords = province + city + area + address;

        //此处使用的是自定义高德地图服务，可以根据情况进行修改
        $.ajax({
            type: "POST",
            url: "http://127.0.0.1:5050/map/inputTip.json",
            cache: false,
            async: false,
            data: {
                "keywords": keywords
            },
            dataType: "json",
            contentType: 'application/x-www-form-urlencoded',
            headers: { 'Authorization': 'bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhY2NvdW50IjoiMTg4MTQ4NjgzOTUiLCJ1c2VySWQiOjYyMH0.llXwj27uSclj1ZcZ9nnzZVqBF7yI_LcS8PDCdUXzTBU' },
            success: function (json) {
                var data = json.data.tips;//json数组
                for (var i = 0; i < data.length; i++) {
                    html += '<dd lay-value="" class="addressDd" onclick="ddclick(this)">' + data[i].name + '<span style="color:#9c9a9a;font-size:5px;">&nbsp' + data[i].address + '</span>' + '</dd>';
                }
            }
        });

        document.getElementById("addressTip").innerHTML = html;
        var s = document.getElementById("addressTip").innerHTML;
        if (html == "") {
            document.getElementById("addressTip").style.display = "none";
        } else {
            document.getElementById("addressTip").style.display = "block";
        }

        var lis = document.getElementById("addressDetail").getElementsByTagName("dd");
        for (var i = 0; i < lis.length; i++) {
            if (lis[i].tagName == "DD") {
                lis[i].onclick = (function () {//增加单击事件
                    return function () {
                        document.getElementById("address").value = this.innerText.trim().split(/\s+/)[0];
                        document.getElementById("addressTip").style.display = "none";
                    }
                }
                )
                    (i);
            }

        }

    }
    );

});


</script>
<!-- <script>
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
</script> -->
<script>
fun=function(house_id){
	window.location.href="<%=basePath%>provider/updateImg_pre/"+house_id+"/";
}
</script>
</body>
</html>        
        