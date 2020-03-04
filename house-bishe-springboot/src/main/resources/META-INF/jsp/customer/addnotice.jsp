<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 发件箱 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/notice/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/notice/simple-line-icons.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/notice/style.css">
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
	 	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
.mar {
       background: #ff9501;
    color: #fff;
}
.mar2 {
    background: #e74c3c;
    color: #fff;
}
.mar3{
    background: #1b93e1;
    color: #fff;
}
.mar {
    color: #fff;
    font-size: 0.8em;
    padding: 4px 7px;
}
span {
    padding: 4px 7px;
}
</style>


<script>
    function mytime(){
        var a = new Date();
        var b = a.toLocaleTimeString();
        var c = a.toLocaleDateString();
        document.getElementById("time1").innerHTML = c+"&nbsp"+b;
        }
    setInterval(function() {mytime()},1000);
</script>
</head>
<body>


<div class="col-sm-6 col-md-2"> <div class="card card-inverse card-info">
 <div class="card-block"> 
 <div class="h1 text-muted text-right mb-2"> 
 <i class="icon-people"></i> 
 </div> <div class="h4 mb-0">87.500</div> 
 <small class="text-muted text-uppercase font-weight-bold">Visitors</small> 
 <div class="progress progress-white progress-xs mt-1"> 
 <div class="progress-bar" role="progressbar" style="width: 25%"
  aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div> 
  </div> </div> </div> </div>


<div class="col-sm-6 col-md-2">
<div class="card card-inverse card-info">
                                <div class="card-block">
                                    <div class="h1 text-muted text-right mb-2">
                                        <i class="icon-speech"></i>
                                    </div>
                                    <div class="h4 mb-0">972</div>
                                    <small class="text-muted text-uppercase font-weight-bold">Comments</small>
                                    <div class="progress progress-white progress-xs mt-1">
                                        <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
</div>


<div class="col-sm-6 col-md-2">
                            <div class="card card-inverse card-danger">
                                <div class="card-block">
                                    <div class="h1 text-muted text-right mb-2">
                                        <i class="icon-speedometer"></i>
                                    </div>
                                    <div class="h4 mb-0" id="time1"></div>
                                    <small class="text-muted text-uppercase font-weight-bold">Avg. Time</small>
                                    <div class="progress progress-white progress-xs mt-1">
                                        <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                 <div class="col-sm-6 col-md-2">
                            <div class="card card-inverse card-warning">
                                <div class="card-block">
                                    <div class="h1 text-muted text-right mb-2">
                                        <i class="icon-basket-loaded"></i>
                                    </div>
                                    <div class="h4 mb-0">1238</div>
                                    <small class="text-muted text-uppercase font-weight-bold">Products sold</small>
                                    <div class="progress progress-white progress-xs mt-1">
                                        <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>   
                        


<!-- <h4>好友列表</h4> -->
<table class="table table-hover table-outline mb-0 hidden-sm-down">
                                        <thead class="thead-default">
                                            <tr>
                                                <th class="text-center"><i class="icon-people" style="font-size: 20px"></i>
                                                </th>
                                                <th>nickname</th>
                                               
                                                <th >地址</th>
                                                <th class="text-center"><i class="icon-paper-plane" style="font-size: 20px"></i></th>
                                                <th>time</th>
                                                 <th><i class="icon-phone"></i></th>
                                            </tr>
                                        </thead>
                                        <tbody>
										
										
										 <c:forEach var="p" items="${plist}" varStatus="status">
                                            <tr>
                                                <td class="text-center">
                                                    <div class="avatar">
                                                        <img src="/head/${p.img }" class="img-avatar" alt="admin@bootstrapmaster.com">
                                                        <span class="avatar-status badge-success"></span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div>${p.nickname }</div>
                                                    
                                                </td>
                                                
                                                <td>
                                               <span class="mar">${p.address }</span> 
                                                </td>
												
												
                                                <td class="text-center">
                                                 <!--    <i class="fa fa-cc-mastercard" style="font-size:24px"><a href="">回复</a></i> -->
                                                <a  onclick="addNotice('${p.provider_id}','${p.nickname}','${p.img}')"  href="#myModal" data-toggle="modal" >发送留言</a>
                                                </td>
                                                <td>
                                                    <div class="small text-muted">Last login</div>
                                                  <span class="mar2">  <strong> ${p.createtime }</strong></span> 
                                                </td>
                                                <td>
                                                <span class="mar3">    ${p.mobile }</span>
                                                </td>
                           </tr>
											
</c:forEach>
                                        </tbody>
                                    </table>
      

</body>





  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加评论
				</h4>
			</div>
			 <form   name="form1" class="form-horizontal"  >  
			<div class="modal-body">
			
<div class="form-group">
<input type="hidden" class="form-control" id="provider_id" name="provider_id"  ></input>
	<input type="hidden" class="form-control" id="img" name="img"  ></input>				

			<label class="col-sm-3 control-label" for="nickname">对方昵称：</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="nickname"
					name="nickname" readonly="readonly" ></input>
				
			</div>
		</div>
		
		
		  <div class = "form-group">  
            <label class="col-sm-3 control-label" for = "content">留言：</label>  
            <div class="col-sm-8">  
                   
	  <textarea placeholder="留言"  id = "content"  name="content"  class="form-control" rows="4">
房子是不错，就是有点贵
      </textarea>		
                
           </div>
		</div>
		   
		
		<div class = "form-group">  
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" onclick="reply()">
					提交更改
				</button>
			</div>
			</div>
			
			</div>
			</form>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script type="text/javascript">
addNotice=function(provider_id,nickname,img){
	$("#provider_id").attr("value",provider_id);
$("#nickname").attr("value",nickname);
$("#img").attr("value",img);
};

</script>


<script type="text/javascript">


reply=function(){
  var rece_id=$("#provider_id").val();
  var nickname=$("#nickname").val();
  var img=$("#img").val();
  var content=$("#content").val();
   $.ajax({
    url:"<%=basePath%>notice/addNotice_c",
    data:{
    	rece_id:rece_id,
    	content:content,
    	nickname:nickname,
    	img:img
    },//提交的数据
    type:"POST",//提交的方式
    ContentType:"application/json; charset=UTF-8",
    dataType:"text", //返回类型 TEXT字符串 JSON XML
    async :false,   //注意：此处是同步，不是异步
    success:function(msg){//msg是servlet返回的
   if(msg="success"){
 alert("回复成功");
	
							} else {
								alert(msg);
							}
						}
					});

		};
	</script>



</html>