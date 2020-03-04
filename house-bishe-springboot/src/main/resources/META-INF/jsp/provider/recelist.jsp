<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>"c"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/notice/style.css">
	 <script src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
	 	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	  <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

</head>
<body>

<div data-role="page" id="pageone">
 <!--  <div data-role="header">
    <h1>房客预定房屋信息</h1>
  </div> -->




<div data-role="main" class="ui-content">
    <div data-role="collapsible">
      <h1><img src="${pageContext.request.contextPath}/images/email.gif">未读留言信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&emsp;&emsp;    ${num }封</h1>
  <p>
<table class="table table-hover table-outline mb-0 hidden-sm-down">
                                        <thead class="thead-default">
                                            <tr>
                                                <th class="text-center"><i class="icon-people">img</i>
                                                </th>
                                                <th>User</th>
                                               
                                                <th>content</th>
                                                <th class="text-center">回复</th>
                                                <th>time</th>
                                                 <th>删除</th>
                                            </tr>
                                        </thead>
                                        <tbody>
										
										
										 <c:forEach var="n" items="${unlist}" varStatus="status">
                                            <tr>
                                                <td class="text-center">
                                                    <div class="avatar">
                                                        <img src="/head/${n.img1 }" class="img-avatar" alt="admin@bootstrapmaster.com">
                                                        <span class="avatar-status badge-success"></span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div>${n.nickname1 }</div>
                                                    
                                                </td>
                                                
                                                <td>
                                                ${n.content }
                                                </td>
												
												
                                                <td class="text-center">
                                                 <!--    <i class="fa fa-cc-mastercard" style="font-size:24px"><a href="">回复</a></i> -->
                                                <a href="#" onclick="addNotice('${n.notice_id}','${n.nickname1}')">回复</a>
                                                </td>
                                                <td>
                                                    <div class="small text-muted">Last login</div>
                                                    <strong> ${n.createtime }</strong>
                                                </td>
                                                <td>
                                                    <a href="">删除</a>
                                                </td>
                           </tr>
											
</c:forEach>
                                        </tbody>
                                    </table>
      
  </p>

      
     
    </div>
  </div>









  <div data-role="main" class="ui-content">
    <div data-role="collapsible">
      <h1>查看全部留言信息</h1>
  <p>
<table class="table table-hover table-outline mb-0 hidden-sm-down">
                                        <thead class="thead-default">
                                            <tr>
                                                <th class="text-center"><i class="icon-people">img</i>
                                                </th>
                                                <th>User</th>
                                               
                                                <th>content</th>
                                                <th class="text-center">回复</th>
                                                <th>time</th>
                                                 <th>删除</th>
                                            </tr>
                                        </thead>
                                        <tbody>
										
										
										 <c:forEach var="n" items="${rlist}" varStatus="status">
                                            <tr>
                                                <td class="text-center">
                                                    <div class="avatar">
                                                        <img src="/head/${n.img1 }" class="img-avatar" alt="admin@bootstrapmaster.com">
                                                        <span class="avatar-status badge-success"></span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div>${n.nickname1 }</div>
                                                    
                                                </td>
                                                
                                                <td>
                                                ${n.content }
                                                </td>
												
												
                                                <td class="text-center" >
                                                 <!--    <i class="fa fa-cc-mastercard" style="font-size:24px"><a href="">回复</a></i> -->
                                                
                                               	<a  onclick="addNotice('${n.notice_id}','${n.nickname1}')"  href="#myModal" data-toggle="modal" >回复</a>      
                                                </td>
                                                <td>
                                                    <div class="small text-muted">Last login</div>
                                                    <strong> ${n.createtime }</strong>
                                                </td>
                                                <td>
                                                  <%--   <a href="javascript:void(0)" onclick="updateStatus('${n.notice}')">删除</a> --%>
                                                     <%-- <a href="<%=basePath%>notice/updateReceStaus?notice_id=${n.notice_id}">删除</a> --%>
                                                      <a href="javascript:void(0)" onclick="updateStatus('${n.notice_id}')">删除</a>
                                                </td>
                           </tr>
											
</c:forEach>
                                        </tbody>
                                    </table>
      
  </p>

      
     
    </div>
  </div>
  
  
     

  <div data-role="footer">
    <h1></h1>
  </div>
</div> 


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
			 <form role = "form"  name="form1" class="form-horizontal"  >  
			<div class="modal-body">
			
<div class="form-group">
<input type="hidden" class="form-control" id="notice_id" name="notice_id"  ></input>
					

			<label class="col-sm-3 control-label" for="nickname">房客昵称：</label>
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
addNotice=function(notice_id,nickname){
	$("#notice_id").attr("value",notice_id);
$("#nickname").attr("value",nickname);
//$('#myModal').modal('show');  
//alert(sender_id);
};

</script>


<script type="text/javascript">


reply=function(){
  var notice_id=$("#notice_id").val();
  var content=$("#content").val();

   $.ajax({
    url:"<%=basePath%>notice/reply" ,//+baodan_no 
    data:{
    	notice_id:notice_id,
    	content:content
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
		
		
		updateStatus=function(notice_id){
			 

			   $.ajax({
			    url:"<%=basePath%>notice/updateSendStatus" ,//+baodan_no 
			    data:{
			    	notice_id:notice_id
			    	
			    },//提交的数据
			    type:"GET",//提交的方式
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
