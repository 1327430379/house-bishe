<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/notice/style.css">
	 <script src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
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
      <h1>发件箱</h1>
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
										
										
										 <c:forEach var="n" items="${slist}" varStatus="status">
                                            <tr>
                                                <td class="text-center">
                                                    <div class="avatar">
                                                        <img src="/head/${n.img2 }" class="img-avatar" alt="admin@bootstrapmaster.com">
                                                        <span class="avatar-status badge-success"></span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div>${n.nickname2 }</div>
                                                    
                                                </td>
                                                
                                                <td>
                                                ${n.content }
                                                </td>
												
												
                                                <td class="text-center">
                                                 <!--    <i class="fa fa-cc-mastercard" style="font-size:24px"><a href="">回复</a></i> -->
                                                <a href="">回复</a>
                                                </td>
                                                <td>
                                                    <div class="small text-muted">Last login</div>
                                                    <strong> ${n.createtime }</strong>
                                                </td>
                                                <td>
                                                 
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
  <script type="text/javascript">



		
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
			// alert("回复成功");
			window.location.href="<%=basePath%>notice/mySend";
				
										} else {
											alert(msg);
										}
									}
								});

					};
		
		
	</script>

</html>
