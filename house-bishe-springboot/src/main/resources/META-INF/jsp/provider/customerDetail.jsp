<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link rel="stylesheet" type="text/css" id="css" href="${pageContext.request.contextPath}/css/css/bootstrap.css" />
<title>添加信息</title>
<script src="${pageContext.request.contextPath}/js/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/js/bootstrap.min.js"></script>
<!-- ${pageContext.request.contextPath}/ -->
<script type="text/javascript">
</script>
	<style>
	table{
	margin-left: auto; 
	margin-right: auto;

	}
	#table1{
	text-align:left;
	}
		
	#idh{
		text-align:center;
	}
		</style>
</head>



<body>

			<table width="600" >
				<thead>
					<tr>
						<th><h2 id="idh">房客信息</h2></th>
					</tr>
				</thead>
				<tr>
					<td width="100%">
						<table id="table1" width="100%" class="table table-hover">
							<tbody>
							<tr>
								<td rowspan="5"  colspan="2"  width="30%" >
									<img src="/head/${c.img }" alt=Face width="180" height="180" ></td>
								<th width="25%" >
									
                                 姓名
								</th>
								<td width="45%">
									${c.name }
								</td>
							</tr>
							
							<tr>
								<th>
									昵称：
								</th >
								<td>
									${c.nickname }
								</td>
							</tr>
							<tr>
								<th>
									身份证号:
								</th>
								<td>
										${c.idcard }
								</td>
							</tr>
							<tr>
								<th>
									性别:
								</th>
								<td>
									${c.sex }
								</td>
							</tr>
							<tr>
								<th>
									QQ：
								</th>
								<td>
								${c.qq }
								</td>
							</tr>
							<tr>
								<th>
									手机:
								</th>
								<td>
										${c.mobile }
								</td>
								
								<th>
									job:
								</th>
								<td>
									${c.job }
								</td>
								
							</tr>
							
							<tr>
								<th>
									描述：
								</th>
								<td colspan="3" height="90">
									<span >&nbsp;&nbsp;&nbsp;
										你好，我是一个非常诚实的一个人，希望遇到一个非常好的房东，嘻嘻……
									</span>
								</td>
							</tr>
							</tbody>
							<tfoot>
							<tr>
								
							</tr>
							</tfoot>
						</table>
					</td>
				</tr>
			</table>
	
	</body>

<html>