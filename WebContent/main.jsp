<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  	<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
   	<script type="text/javascript" src="js/main.js"></script>
  	<script type="text/javascript" src="js/util.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
<style type="text/css">

.div-right 
{
	position:absolute;
	top:0px;
	right: 15px;
	
}
.row-border
{
	margin-top:20px;
	height:80%;
    border-radius: 5px;
	border-style: solid;
	border-width: 1px;
	border-color: #66afe9;
}

.input-text-001{
	width:250px;
	height:30px;
    border-radius: 10px;
	border-style: solid;
	border-width: 1px;
	border-color: #66afe9;

}
.input-text-001:active,
.input-text-001:HOVER {
	border-color: #66afe9;
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
}




</style>
    
</head>
<body>
	
	 
	 
<div class="container">
		<div class="row row-border" id="printModel"> </div>
		
		<div class="row row-border">
			<div class="col-md-3" style="padding: 0px">
				<div class="row">
					<div class="col-md-12">
						<div class="btn-group btn-group-md">
							<button type="button" id="addDept" class="btn btn-default">添加</button>
							<button type="button" id="editDept" class="btn btn-default">修改</button>
							<button type="button" id="removeDept" class="btn btn-default">删除</button>
							<button type="button" id="queryDept" class="btn btn-default">属性</button>
						</div>
					</div>
				</div>	
			<div class="row">
			  <div class="col-md-12">
				  <div id="div-nav" style="width:100%;height:300px;overflow:auto;"> 
					<ul class="nav nav-pills nav-stacked">
					  <li id="nva-li-1"><a id="nva-li-a">加载中。。。</a></li>
					</ul>
					</div>
			    </div>
			</div>
			</div>
			<div class="col-md-9" style="padding: 1px">
			
			<div class="row">
				   <div class="col-md-12">
					    <input type="text" class="input-text-001" placeholder="请输入编号...">
	                    <input type="submit" class="btn btn-default" value="搜索"/>
						<div class="btn-group btn-group-md div-right">
							<button type="button" id="addDept" class="btn btn-primary">添加</button>
							<button type="button" id="editDept" class="btn btn-warning">修改</button>
							<button type="button" id="removeDept" class="btn btn-danger">删除</button>
							<button type="button" id="queryDept" class="btn btn-info">详情</button>
						</div>
					</div>
			</div>
			<div class="row">
				<div class="col-md-12">
				<table class="table table-striped table-bordered table-hover table-condensed">
    					<thead>	
    					     <th><input type="checkbox"/></th>
    						 <th>姓名</th>
    						 <th>年龄</th>
    						 <th>年龄</th>
    						 <th>年龄</th>
    						 <th>年龄</th>
    						 <th>年龄</th>
    						 <th>年龄</th>
    					</thead>
    					<tbody>
    					<tr>
    						<td><input type="checkbox"/></td>
    						<td>嘿嘿嘿</td>
    						<td>18</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    					</tr>
    					<tr>
    						<td><input type="checkbox"/></td>
    						<td>嘿嘿嘿</td>
    						<td>18</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    					</tr>
    					<tr>
    						<td><input type="checkbox"/></td>
    						<td>嘿嘿嘿</td>
    						<td>18</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    					</tr>
    					<tr>
    						<td><input type="checkbox"/></td>
    						<td>嘿嘿嘿</td>
    						<td>18</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    					</tr>
    					<tr>
    						<td><input type="checkbox"/></td>
    						<td>嘿嘿嘿</td>
    						<td>18</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    					</tr>
    					<tr>
    						<td><input type="checkbox"/></td>
    						<td>嘿嘿嘿</td>
    						<td>18</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    					</tr>
    					<tr>
    						<td><input type="checkbox"/></td>
    						<td>嘿嘿嘿</td>
    						<td>18</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    					</tr>
    					<tr>
    						<td><input type="checkbox"/></td>
    						<td>嘿嘿嘿</td>
    						<td>18</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    					</tr>
    					<tr>
    						<td><input type="checkbox"/></td>
    						<td>嘿嘿嘿</td>
    						<td>18</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    					</tr>
    					<tr>
    						<td><input type="checkbox"/></td>
    						<td>嘿嘿嘿</td>
    						<td>18</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    					</tr><tr>
    						<td><input type="checkbox"/></td>
    						<td>嘿嘿嘿</td>
    						<td>18</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    						<td>1999-04-04</td>
    					</tr>
    					
    					
    					</tbody>
    				</table>
				</div>
			</div>
			</div>
		</div>
		<div class="row">
			<div id="showAddEmp"></div>

			<div class="row">
				<div class="row-fluid">
					<div class="span12 pagination-right">

						<%
							String url = "main.jsp";
							int currentPage = 1;
							int lineSize = 10;
							String column = null;
							String keyWord = null;
							String columnData = "商品名称:title";
							int allRecorders = 0;
						%>
						<jsp:include page="/pages/split_page_bar_plugin.jsp">
							<jsp:param name="url" value="<%=url%>" />
							<jsp:param name="currentPage" value="<%=currentPage%>" />
							<jsp:param name="lineSize" value="<%=lineSize%>" />
							<jsp:param name="keyWord" value="<%=keyWord%>" />
							<jsp:param name="column" value="<%=column%>" />
							<jsp:param name="allRecorders" value="<%=allRecorders%>" />
						</jsp:include>
					</div>
				</div>
			</div>
		</div>
	</div>	 
</body>
</html>