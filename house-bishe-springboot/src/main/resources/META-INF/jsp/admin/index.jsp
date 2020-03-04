<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
          <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
       <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>

  </head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <table>
    <tr>
    <td><div id="main_gui_pie" style="width: 600px;height:400px;"></div>
     <td>  <div id="main_gui_bar" style="width: 600px;height:400px;"></div></td>
    <td> <div id="liuhuan" style="width: 600px;height:400px;"></div></td>
   
    </tr>
    
    <tr>
    <td><div id="main_nan_pie" style="width: 600px;height:400px;"></div></td>
     <td>  <div id="main_nan_bar" style="width: 600px;height:400px;"></div></td>
    <td><div id="liubar" style="width: 600px;height:400px;"></div></td>
   
    </tr>
    
    
    <!-- <tr>
    <td><div id="gui_custqu_pie" style="width: 600px;height:400px;"></div></td>
   <td>  <div id="liu_custqu_pie" style="width: 600px;height:400px;"></div></td>
    <td>  <div id="nan_custqu_pie" style="width: 600px;height:400px;"></div></td>
    </tr> -->
    
     <tr>
       <td><div id="area_price" style="width: 600px;height:400px;"></div></td>
    <td><div id="webcount" style="width: 600px;height:400px;"></div></td>
   <td> <div id="priceavg" style="width: 600px;height:400px;"></div> </td>
    <td> </td>
    </tr>
    
    </table>
   <!--  <div id="main_gui_pie" style="width: 600px;height:400px;"></div>
     <div id="main_gui_bar" style="width: 600px;height:400px;"></div> -->

    <script type="text/javascript">
	$(document).ready(function(){
		
		
		  var myChart = echarts.init(document.getElementById('main_gui_pie'));
		    // 显示标题，图例和空的坐标轴
		    myChart.setOption({
		    	   title : {
		    	        text: '福州市房屋分布',
		    	        subtext: '',
		    	        x:'center'
		    	    },
		    	    tooltip : {
		    	        trigger: 'item',
		    	        formatter: "{a} <br/>{b} : {c} ({d}%)"
		    	    },
		    	    legend: {
		    	        orient : 'vertical',
		    	        x : 'left',
		    	        data:[]  /*  '直接访问','邮件营销','联盟广告','视频广告','搜索引擎'*/
		    	    },
		    	    toolbox: {
		    	        show : true,
		    	        feature : {
		    	            mark : {show: true},
		    	            dataView : {show: true, readOnly: false},
		    	            magicType : {
		    	                show: true, 
		    	                type: ['pie', 'funnel'],
		    	                option: {
		    	                    funnel: {
		    	                        x: '25%',
		    	                        width: '50%',
		    	                        funnelAlign: 'left',
		    	                        max: 1548
		    	                    }
		    	                }
		    	            },
		    	            restore : {show: true},
		    	            saveAsImage : {show: true}
		    	        }
		    	    },
		    	    calculable : true,
		    	    series : [
		    	        {
		    	            name:'访问来源',
		    	            type:'pie',
		    	            radius : '55%',
		    	            center: ['50%', '60%'],
		    	            data:[
		    	                
		    	            ]
		    	        /*{value:335, name:'直接访问'},
		    	                {value:310, name:'邮件营销'},
		    	                {value:234, name:'联盟广告'},
		    	                {value:135, name:'视频广告'},
		    	                {value:1548, name:'搜索引擎'}  */
		    	        }
		    	    ]
		    });
		     
		    myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
		     
		    var product=[];    //类别数组（实际用来盛放X轴坐标值）
		    var legend_data=[];    //销量数组（实际用来盛放Y坐标值）
		
		
		
		
		
		
		   $.ajax({
			    type : "post",
			    async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
			    url : "gui_cityqu_pie",    //请求发送到TestServlet处
			    data : {},
			    dataType : "json",        //返回数据形式为json
			    success : function(result) {
			        //请求成功时执行该函数内容，result即为服务器返回的json对象
			        if (result) {
			               for(var i=0;i<result.length;i++){       
			                  product.push(result[i]);    //挨个取出类别并填入类别数组
			                }
			               for(var i=0;i<result.length;i++){       
			            	   legend_data.push(result[i].name);    //挨个取出销量并填入销量数组
			                 }
			               myChart.hideLoading();    //隐藏加载动画
			               myChart.setOption({        //加载数据图表
			            	   legend: {
			                       data: legend_data
			                   },
			                   series: [{
			                       // 根据名字对应到相应的系列
			                       name: '房屋量',
			                       data: product
			                   }]
			               });
			                
			        }
			     
			   },
			    error : function(errorMsg) {
			        //请求失败时执行该函数
			    alert("图表请求数据失败!");
			    myChart.hideLoading();
			    }
			})

	});
	</script>
    
    
    
     <script type="text/javascript">
	$(document).ready(function(){
		var myChart = echarts.init(document.getElementById('main_gui_bar'));
	    // 显示标题，图例和空的坐标轴
	    var colors = ['#5793f3', '#d14a61', '#675bba'];
	    myChart.setOption(
	    		
	    		{
	        title: {
	            text: '厦门市房屋分布'
	        },
	        tooltip: {},
	        legend: {
	            data:['房屋量']
	        },
	        xAxis: {
	            data: []
	        },
	        yAxis: {},
	        series: [{
	        	color:colors,
	            name: '房屋量',
	            type: 'bar',
	            data: []
	        }]
	    });
	     
	    myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
	     
	    var names=[];    //类别数组（实际用来盛放X轴坐标值）
	    var nums=[];    //销量数组（实际用来盛放Y坐标值）
		
		
		
		$.ajax({
		    type : "post",
		    async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
		    url : "gui_cityqu_bar",    //请求发送到TestServlet处
		    data : {},
		    dataType : "json",        //返回数据形式为json
		    success : function(result) {
		        //请求成功时执行该函数内容，result即为服务器返回的json对象
		        if (result) {
		               for(var i=0;i<result.length;i++){       
		                  names.push(result[i].name);    //挨个取出类别并填入类别数组
		                }
		               for(var i=0;i<result.length;i++){       
		                   nums.push(result[i].num);    //挨个取出销量并填入销量数组
		                 }
		               myChart.hideLoading();    //隐藏加载动画
		               myChart.setOption({        //加载数据图表
		                   xAxis: {
		                       data: names
		                   },
		                   series: [{
		                       // 根据名字对应到相应的系列
		                       name: '房屋量',
		                       data: nums
		                   }]
		               });
		                
		        }
		     
		   },
		    error : function(errorMsg) {
		        //请求失败时执行该函数
		    alert("图表请求数据失败!");
		    myChart.hideLoading();
		    }
		})

	});
	</script>
	
	
	
	
	<script type="text/javascript">
	$(document).ready(function(){
		
		
		  var myChart = echarts.init(document.getElementById('main_nan_pie'));
		    // 显示标题，图例和空的坐标轴
		    myChart.setOption({
		    	   title : {
		    	        text: '福建房屋分布',
		    	        subtext: '',
		    	        x:'center'
		    	    },
		    	    tooltip : {
		    	        trigger: 'item',
		    	        formatter: "{a} <br/>{b} : {c} ({d}%)"
		    	    },
		    	    legend: {
		    	        orient : 'vertical',
		    	        x : 'left',
		    	        data:[]  /*  '直接访问','邮件营销','联盟广告','视频广告','搜索引擎'*/
		    	    },
		    	    toolbox: {
		    	        show : true,
		    	        feature : {
		    	            mark : {show: true},
		    	            dataView : {show: true, readOnly: false},
		    	            magicType : {
		    	                show: true, 
		    	                type: ['pie', 'funnel'],
		    	                option: {
		    	                    funnel: {
		    	                        x: '25%',
		    	                        width: '50%',
		    	                        funnelAlign: 'left',
		    	                        max: 1548
		    	                    }
		    	                }
		    	            },
		    	            restore : {show: true},
		    	            saveAsImage : {show: true}
		    	        }
		    	    },
		    	    calculable : true,
		    	    series : [
		    	        {
		    	            name:'访问来源',
		    	            type:'pie',
		    	            radius : '55%',
		    	            center: ['50%', '60%'],
		    	            data:[
		    	                
		    	            ]
		    	        /*{value:335, name:'直接访问'},
		    	                {value:310, name:'邮件营销'},
		    	                {value:234, name:'联盟广告'},
		    	                {value:135, name:'视频广告'},
		    	                {value:1548, name:'搜索引擎'}  */
		    	        }
		    	    ]
		    });
		     
		    myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
		     
		    var product=[];    //类别数组（实际用来盛放X轴坐标值）
		    var legend_data=[];    //销量数组（实际用来盛放Y坐标值）
		
		
		
		
		
		
		   $.ajax({
			    type : "post",
			    async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
			    url : "nan_cityqu_pie",    //请求发送到TestServlet处
			    data : {},
			    dataType : "json",        //返回数据形式为json
			    success : function(result) {
			        //请求成功时执行该函数内容，result即为服务器返回的json对象
			        if (result) {
			               for(var i=0;i<result.length;i++){       
			                  product.push(result[i]);    //挨个取出类别并填入类别数组
			                }
			               for(var i=0;i<result.length;i++){       
			            	   legend_data.push(result[i].name);    //挨个取出销量并填入销量数组
			                 }
			               myChart.hideLoading();    //隐藏加载动画
			               myChart.setOption({        //加载数据图表
			            	   legend: {
			                       data: legend_data
			                   },
			                   series: [{
			                       // 根据名字对应到相应的系列
			                       name: '房屋量',
			                       data: product
			                   }]
			               });
			                
			        }
			     
			   },
			    error : function(errorMsg) {
			        //请求失败时执行该函数
			    alert("图表请求数据失败!");
			    myChart.hideLoading();
			    }
			})

	});
	</script>
    
    
    
     <script type="text/javascript">
	$(document).ready(function(){
		var myChart = echarts.init(document.getElementById('main_nan_bar'));
	    // 显示标题，图例和空的坐标轴
	    myChart.setOption({
	        title: {
	            text: '福建面积房量'
	        },
	        tooltip: {},
	        legend: {
	            data:['房屋量']
	        },
	        xAxis: {
	            data: []
	        },
	        yAxis: {},
	        series: [{
	            name: '房屋量',
	            type: 'bar',
	            data: []
	        }]
	    });
	     
	    myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
	     
	    var names=[];    //类别数组（实际用来盛放X轴坐标值）
	    var nums=[];    //销量数组（实际用来盛放Y坐标值）
		
		
		
		$.ajax({
		    type : "post",
		    async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
		    url : "nan_cityqu_bar",    //请求发送到TestServlet处
		    data : {},
		    dataType : "json",        //返回数据形式为json
		    success : function(result) {
		        //请求成功时执行该函数内容，result即为服务器返回的json对象
		        if (result) {
		               for(var i=0;i<result.length;i++){       
		                  names.push(result[i].name);    //挨个取出类别并填入类别数组
		                }
		               for(var i=0;i<result.length;i++){       
		                   nums.push(result[i].num);    //挨个取出销量并填入销量数组
		                 }
		               myChart.hideLoading();    //隐藏加载动画
		               myChart.setOption({        //加载数据图表
		                   xAxis: {
		                       data: names
		                   },
		                   series: [{
		                       // 根据名字对应到相应的系列
		                       name: '房屋量',
		                       data: nums
		                   }]
		               });
		                
		        }
		     
		   },
		    error : function(errorMsg) {
		        //请求失败时执行该函数
		    alert("图表请求数据失败!");
		    myChart.hideLoading();
		    }
		})

	});
	</script>
	
	
	<!-- <script type="text/javascript">
	$(document).ready(function(){
		
		
		  var myChart = echarts.init(document.getElementById('liu_custqu_pie'));
		    // 显示标题，图例和空的坐标轴
		    myChart.setOption({
		    	   title : {
		    	        text: '柳州市房客分布',
		    	        subtext: '',
		    	        x:'center'
		    	    },
		    	    tooltip : {
		    	        trigger: 'item',
		    	        formatter: "{a} <br/>{b} : {c} ({d}%)"
		    	    },
		    	    legend: {
		    	        orient : 'vertical',
		    	        x : 'left',
		    	        data:[]  /*  '直接访问','邮件营销','联盟广告','视频广告','搜索引擎'*/
		    	    },
		    	    toolbox: {
		    	        show : true,
		    	        feature : {
		    	            mark : {show: true},
		    	            dataView : {show: true, readOnly: false},
		    	            magicType : {
		    	                show: true, 
		    	                type: ['pie', 'funnel'],
		    	                option: {
		    	                    funnel: {
		    	                        x: '25%',
		    	                        width: '50%',
		    	                        funnelAlign: 'left',
		    	                        max: 1548
		    	                    }
		    	                }
		    	            },
		    	            restore : {show: true},
		    	            saveAsImage : {show: true}
		    	        }
		    	    },
		    	    calculable : true,
		    	    series : [
		    	        {
		    	            name:'访问来源',
		    	            type:'pie',
		    	            radius : '55%',
		    	            center: ['50%', '60%'],
		    	            data:[
		    	                
		    	            ]
		    	        /*{value:335, name:'直接访问'},
		    	                {value:310, name:'邮件营销'},
		    	                {value:234, name:'联盟广告'},
		    	                {value:135, name:'视频广告'},
		    	                {value:1548, name:'搜索引擎'}  */
		    	        }
		    	    ]
		    });
		     
		    myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
		     
		    var product=[];    //类别数组（实际用来盛放X轴坐标值）
		    var legend_data=[];    //销量数组（实际用来盛放Y坐标值）
		
		
		
		
		
		
		   $.ajax({
			    type : "post",
			    async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
			    url : "liu_custqu_pie",    //请求发送到TestServlet处
			    data : {},
			    dataType : "json",        //返回数据形式为json
			    success : function(result) {
			        //请求成功时执行该函数内容，result即为服务器返回的json对象
			        if (result) {
			               for(var i=0;i<result.length;i++){       
			                  product.push(result[i]);    //挨个取出类别并填入类别数组
			                }
			               for(var i=0;i<result.length;i++){       
			            	   legend_data.push(result[i].name);    //挨个取出销量并填入销量数组
			                 }
			               myChart.hideLoading();    //隐藏加载动画
			               myChart.setOption({        //加载数据图表
			            	   legend: {
			                       data: legend_data
			                   },
			                   series: [{
			                       // 根据名字对应到相应的系列
			                       name: '房屋量',
			                       data: product
			                   }]
			               });
			                
			        }
			     
			   },
			    error : function(errorMsg) {
			        //请求失败时执行该函数
			    alert("图表请求数据失败!");
			    myChart.hideLoading();
			    }
			})

	});
	</script> -->
	<!-- <script type="text/javascript">
	$(document).ready(function(){
		
		
		  var myChart = echarts.init(document.getElementById('gui_custqu_pie'));
		    // 显示标题，图例和空的坐标轴
		    myChart.setOption({
		    	   title : {
		    	        text: '桂林市房客分布',
		    	        subtext: '',
		    	        x:'center'
		    	    },
		    	    tooltip : {
		    	        trigger: 'item',
		    	        formatter: "{a} <br/>{b} : {c} ({d}%)"
		    	    },
		    	    legend: {
		    	        orient : 'vertical',
		    	        x : 'left',
		    	        data:[]  /*  '直接访问','邮件营销','联盟广告','视频广告','搜索引擎'*/
		    	    },
		    	    toolbox: {
		    	        show : true,
		    	        feature : {
		    	            mark : {show: true},
		    	            dataView : {show: true, readOnly: false},
		    	            magicType : {
		    	                show: true, 
		    	                type: ['pie', 'funnel'],
		    	                option: {
		    	                    funnel: {
		    	                        x: '25%',
		    	                        width: '50%',
		    	                        funnelAlign: 'left',
		    	                        max: 1548
		    	                    }
		    	                }
		    	            },
		    	            restore : {show: true},
		    	            saveAsImage : {show: true}
		    	        }
		    	    },
		    	    calculable : true,
		    	    series : [
		    	        {
		    	            name:'访问来源',
		    	            type:'pie',
		    	            radius : '55%',
		    	            center: ['50%', '60%'],
		    	            data:[
		    	                
		    	            ]
		    	        /*{value:335, name:'直接访问'},
		    	                {value:310, name:'邮件营销'},
		    	                {value:234, name:'联盟广告'},
		    	                {value:135, name:'视频广告'},
		    	                {value:1548, name:'搜索引擎'}  */
		    	        }
		    	    ]
		    });
		     
		    myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
		     
		    var product=[];    //类别数组（实际用来盛放X轴坐标值）
		    var legend_data=[];    //销量数组（实际用来盛放Y坐标值）
		
		
		
		
		
		
		   $.ajax({
			    type : "post",
			    async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
			    url : "gui_custqu_pie",    //请求发送到TestServlet处
			    data : {},
			    dataType : "json",        //返回数据形式为json
			    success : function(result) {
			        //请求成功时执行该函数内容，result即为服务器返回的json对象
			        if (result) {
			               for(var i=0;i<result.length;i++){       
			                  product.push(result[i]);    //挨个取出类别并填入类别数组
			                }
			               for(var i=0;i<result.length;i++){       
			            	   legend_data.push(result[i].name);    //挨个取出销量并填入销量数组
			                 }
			               myChart.hideLoading();    //隐藏加载动画
			               myChart.setOption({        //加载数据图表
			            	   legend: {
			                       data: legend_data
			                   },
			                   series: [{
			                       // 根据名字对应到相应的系列
			                       name: '房客量',
			                       data: product
			                   }]
			               });
			                
			        }
			     
			   },
			    error : function(errorMsg) {
			        //请求失败时执行该函数
			    alert("图表请求数据失败!");
			    myChart.hideLoading();
			    }
			})

	});
	</script> -->
      	<script type="text/javascript">
      	$(document).ready(function(){
    		var myChart = echarts.init(document.getElementById('area_price'));
    	    // 显示标题，图例和空的坐标轴
    	    myChart.setOption({
    	        title: {
    	            text: '面积均价'
    	        },
    	        tooltip: {},
    	        legend: {
    	            data:['房价']
    	        },
    	        xAxis: {
    	            data: []
    	        },
    	        yAxis: {},
    	        series: [{
    	            name: '价格',
    	            type: 'bar',
    	            data: []
    	        }]
    	    });
    	     
    	    myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
    	     
    	    var names=[];    //类别数组（实际用来盛放X轴坐标值）
    	    var nums=[];    //销量数组（实际用来盛放Y坐标值）
    		
    		
    		
    		$.ajax({
    		    type : "post",
    		    async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
    		    url : "area_price",    //请求发送到TestServlet处
    		    data : {},
    		    dataType : "json",        //返回数据形式为json
    		    success : function(result) {
    		        //请求成功时执行该函数内容，result即为服务器返回的json对象
    		        if (result) {
    		               for(var i=0;i<result.length;i++){       
    		                  names.push(result[i].name);    //挨个取出类别并填入类别数组
    		                }
    		               for(var i=0;i<result.length;i++){       
    		                   nums.push(result[i].num);    //挨个取出销量并填入销量数组
    		                 }
    		               myChart.hideLoading();    //隐藏加载动画
    		               myChart.setOption({        //加载数据图表
    		                   xAxis: {
    		                       data: names
    		                   },
    		                   series: [{
    		                       // 根据名字对应到相应的系列
    		                       name: '租金',
    		                       data: nums
    		                   }]
    		               });
    		                
    		        }
    		     
    		   },
    		    error : function(errorMsg) {
    		        //请求失败时执行该函数
    		    alert("图表请求数据失败!");
    		    myChart.hideLoading();
    		    }
    		})

    	});
	</script>
	
	     <script type="text/javascript">
     
     
     
	$(document).ready(function(){
		
		 var myChart = echarts.init(document.getElementById('webcount'));
		    // 显示标题，图例和空的坐标轴
		    myChart.setOption({
		    	 title: {
		    	        text: '网站访问量'
		    	    },
		    	    tooltip : {
		    	        trigger: 'axis',
		    	        axisPointer: {
		    	            type: 'cross',
		    	            label: {
		    	                backgroundColor: '#6a7985'
		    	            }
		    	        }
		    	    },
		    	    legend: {
		    	        data:['2015','2016','2017','2018']//,'搜索引擎'
		    	    },
		    	    toolbox: {
		    	        feature: {
		    	            saveAsImage: {}
		    	        }
		    	    },
		    	    grid: {
		    	        left: '3%',
		    	        right: '4%',
		    	        bottom: '3%',
		    	        containLabel: true
		    	    },
		    	    xAxis : [
		    	        {
		    	            type : 'category',
		    	            boundaryGap : false,
		    	            data : ['一月','二月','三月','四月','五月','六月']
		    	        }
		    	    ],
		    	    yAxis : [
		    	        {
		    	            type : 'value'
		    	        }
		    	    ],
		    	    series : []
		    });
		     
		    myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
		     
		    var series1=[];    //类别数组（实际用来盛放X轴坐标值）
		  //  var nums=[];    //销量数组（实际用来盛放Y坐标值）
		
		var s;
		
		$.ajax({
		    type : "post",
		    async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
		    url : "line_4",    //请求发送到TestServlet处
		    data : {},
		    dataType : "json",        //返回数据形式为json
		    success : function(result) {
		        //请求成功时执行该函数内容，result即为服务器返回的json对象
		        
		        
		    	  s=result;
		        
		        
		               myChart.hideLoading();   
		               myChart.setOption({        //加载数据图表
		                 
		            	   
		            	   series:result
		                   
		                   
		               });
		        
		               
		                
		        },
		     
		  
		    error : function(errorMsg) {
		        //请求失败时执行该函数
		    alert("图表请求数据失败!");
		    myChart.hideLoading();
		    }
		})

	});
	</script>
	
	
 <script type="text/javascript">
     
     
     
	$(document).ready(function(){
		
		 var myChart = echarts.init(document.getElementById('priceavg'));
		    // 显示标题，图例和空的坐标轴
		    myChart.setOption({
		    	 title: {
		    	        text: '各地房价'
		    	    },
		    	    tooltip : {
		    	        trigger: 'axis',
		    	        axisPointer: {
		    	            type: 'cross',
		    	            label: {
		    	                backgroundColor: '#6a7985'
		    	            }
		    	        }
		    	    },
		    	    legend: {
		    	        data:['北海','桂林','柳州','南宁']//,'搜索引擎'
		    	    },
		    	    toolbox: {
		    	        feature: {
		    	            saveAsImage: {}
		    	        }
		    	    },
		    	    grid: {
		    	        left: '3%',
		    	        right: '4%',
		    	        bottom: '3%',
		    	        containLabel: true
		    	    },
		    	    xAxis : [
		    	        {
		    	            type : 'category',
		    	            boundaryGap : false,
		    	            data : ['30平米','40平米','50平米','60平米','80平米','80以上']
		    	        }
		    	    ],
		    	    yAxis : [
		    	        {
		    	            type : 'value'
		    	        }
		    	    ],
		    	    series : []
		    });
		     
		    myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
		     
		    var series1=[];    //类别数组（实际用来盛放X轴坐标值）
		  //  var nums=[];    //销量数组（实际用来盛放Y坐标值）
		
		var s;
		
		$.ajax({
		    type : "post",
		    async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
		    url : "line_2",    //请求发送到TestServlet处
		    data : {},
		    dataType : "json",        //返回数据形式为json
		    success : function(result) {
		        //请求成功时执行该函数内容，result即为服务器返回的json对象
		        
		        
		    	  s=result;
		        
		        
		               myChart.hideLoading();   
		               myChart.setOption({        //加载数据图表
		                 
		            	   
		            	   series:result
		                   
		                   
		               });
		        
		               
		                
		        },
		     
		  
		    error : function(errorMsg) {
		        //请求失败时执行该函数
		    alert("图表请求数据失败!");
		    myChart.hideLoading();
		    }
		})

	});
	</script>
	
	
	
	 <script type="text/javascript">
	$(document).ready(function(){
		
		
		  var myChart = echarts.init(document.getElementById('liuhuan'));
		    // 显示标题，图例和空的坐标轴
		    myChart.setOption({
		    	   title : {
		    	        text: '厦门市房屋分布',
		    	        subtext: '',
		    	        x:'center'
		    	    },
		    	    tooltip : {
		    	        trigger: 'item',
		    	        formatter: "{a} <br/>{b} : {c} ({d}%)"
		    	    },
		    	    legend: {
		    	        orient : 'vertical',
		    	        x : 'left',
		    	        data:[]  /*  '直接访问','邮件营销','联盟广告','视频广告','搜索引擎'*/
		    	    },
		    	    series: [
		    	             {
		    	                 name:'访问来源',
		    	                 type:'pie',
		    	                 radius: ['50%', '70%'],
		    	                 avoidLabelOverlap: false,
		    	                 label: {
		    	                     normal: {
		    	                         show: false,
		    	                         position: 'center'
		    	                     },
		    	                     emphasis: {
		    	                         show: true,
		    	                         textStyle: {
		    	                             fontSize: '30',
		    	                             fontWeight: 'bold'
		    	                         }
		    	                     }
		    	                 },
		    	                 labelLine: {
		    	                     normal: {
		    	                         show: false
		    	                     }
		    	                 },
		    	                 data:[]
		    	             }
		    	             ]
		    });
		     
		    myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
		     
		    var product=[];    //类别数组（实际用来盛放X轴坐标值）
		    var legend_data=[];    //销量数组（实际用来盛放Y坐标值）
		
		
		
		
		
		
		   $.ajax({
			    type : "post",
			    async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
			    url : "liu_huan",    //请求发送到TestServlet处
			    data : {},
			    dataType : "json",        //返回数据形式为json
			    success : function(result) {
			        //请求成功时执行该函数内容，result即为服务器返回的json对象
			        if (result) {
			               for(var i=0;i<result.length;i++){       
			                  product.push(result[i]);    //挨个取出类别并填入类别数组
			                }
			               for(var i=0;i<result.length;i++){       
			            	   legend_data.push(result[i].name);    //挨个取出销量并填入销量数组
			                 }
			               myChart.hideLoading();    //隐藏加载动画
			               myChart.setOption({        //加载数据图表
			            	   legend: {
			                       data: legend_data
			                   },
			                   series: [{
			                       // 根据名字对应到相应的系列
			                       
			                       data: product
			                   }]
			               });
			                
			        }
			     
			   },
			    error : function(errorMsg) {
			        //请求失败时执行该函数
			    alert("图表请求数据失败!");
			    myChart.hideLoading();
			    }
			})

	});
	</script>
	
	
	 <script type="text/javascript">
	$(document).ready(function(){
		var myChart = echarts.init(document.getElementById('liubar'));
	    // 显示标题，图例和空的坐标轴
	    var colors = [ '#675bba'];//'#5793f3', 
	    myChart.setOption(
	    		
	    		{
	        title: {
	            text: '厦门市房屋分布'
	        },
	        tooltip: {},
	        legend: {
	            data:['房屋量']
	        },
	        xAxis: {
	            data: []
	        },
	        yAxis: {},
	        series: [{
	        	color:colors,
	            name: '房屋量',
	            type: 'bar',
	            data: []
	        }]
	    });
	     
	    myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
	     
	    var names=[];    //类别数组（实际用来盛放X轴坐标值）
	    var nums=[];    //销量数组（实际用来盛放Y坐标值）
		
		
		
		$.ajax({
		    type : "post",
		    async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
		    url : "liu_cityqu_bar",    //请求发送到TestServlet处
		    data : {},
		    dataType : "json",        //返回数据形式为json
		    success : function(result) {
		        //请求成功时执行该函数内容，result即为服务器返回的json对象
		        if (result) {
		               for(var i=0;i<result.length;i++){       
		                  names.push(result[i].name);    //挨个取出类别并填入类别数组
		                }
		               for(var i=0;i<result.length;i++){       
		                   nums.push(result[i].num);    //挨个取出销量并填入销量数组
		                 }
		               myChart.hideLoading();    //隐藏加载动画
		               myChart.setOption({        //加载数据图表
		                   xAxis: {
		                       data: names
		                   },
		                   series: [{
		                       // 根据名字对应到相应的系列
		                       name: '房屋量',
		                       data: nums
		                   }]
		               });
		                
		        }
		     
		   },
		    error : function(errorMsg) {
		        //请求失败时执行该函数
		    alert("图表请求数据失败!");
		    myChart.hideLoading();
		    }
		})

	});
	</script>
	
	
    
</body>
</html>
