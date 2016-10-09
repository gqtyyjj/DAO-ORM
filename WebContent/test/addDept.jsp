<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="./js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
</head>
<body>
<div class="modal fade " id="modal-container-45270581" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
					<div class="modal-dialog">
						<div class="modal-content" >
						
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								<h4 class="text-info" id="myModalLabel">添加部门</h4>
							</div>
							
							<div class="modal-body">
								 <form action="dept/addDept" method="post" enctype="multipart/form-data">
								 	<table border="1" width="100%">
								 	<tr>
								 	 <td>
								 	    部门添加 :
								 	 </td>
								 	</tr>
								 	<tr height="50px">
								 		<td>城市:</td>
								 	 	<td>
								 	 	  <select id="city1" name="city1">
								 	 	  	<option>===请选择省份===</option>
								 	 	  </select>
								 	 	  <select id="city2" name="city2">
								 	 	  	<option>===请选择城市===</option>
								 	 	  </select>
								 	 	</td>
								 	 	
								 	</tr>
								 	<tr height="50px">
								 	  <td>部门名称</td>
								 	  <td deptNameMsg><input type="text" name="deptName" id="deptName"/></td>
								 	  <td id="deptNameMsg"></td>
								 	</tr>
								 	<tr height="50px">
								 	  <td>部门图片</td>
								 	  <td><input type="file" name="LogImage" id="LogImage"/></td>
								 	</tr>
								 	<tr height="50px">
								 	  <td>部门地址</td>
								 	  <td>
								 	    <textarea cols="30" rows="3" name="address" id="address"></textarea>
								 	  </td>
								 	</tr>
								 	<!-- <tr height="50px">
								 	  <td><input type="submit" value="提交"/></td>
								 	  <td><input type="button" id="test1" value="重置"/></td>
								 	</tr> -->
								 	</table>
								 </form>
							</div>
							  <div class="modal-footer">
							
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
								
								<button type="button" class="btn btn-primary">新增</button>
							</div>
						</div>
					</div>
				</div>
</body>
</html>