<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="cn.aoqi.vo.*" %>
<%@ page import="cn.aoqi.service.*" %>
<%@ page import="cn.aoqi.service.impl.*" %>
<%@ page import="cn.aoqi.util.*" %>
<%@ page import="cn.aoqi.factory.*" %>
<%@ page import="net.sf.json.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="UTF-8">
    <base href="<%=basePath%>">
  	<!-- <script type="text/javascript" src="js/util.js"></script> -->
  	<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
  	<script type="text/javascript" src="js/addEmp.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
  </head>
  <body>
  <div class="modal fade " id="modal-container-4527058" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
					<div class="modal-dialog">
						<div class="modal-content">
						
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								<h4 class="text-info" id="myModalLabel">添加雇员</h4>
							</div>
							
							<div class="modal-body">
								<form>
								  <table class=" table table-hover text-info">
								    <tr>
								      <td>编号</td>
								      <td><input type="text"></td>
								    </tr>
								    <tr>
								     <td>姓名</td>
								     <td><input type="text"></td>
								    </tr>
								     <tr>
								     <td>职位</td>
								     <td><input type="text"></td>
								     </tr>
								      <tr>
								      <td>上级编号</td>
								     <td><input type="text"></td>
								     </tr>
								    <tr>
								      <td>入职时间</td>
								     <td><input type="text"></td>
								     </tr>
								      <tr>
								      <td>工资</td>
								     <td><input type="text"></td>
								     </tr>
								      <tr>
								      <td>奖金</td>
								     <td><input type="text"></td>
								     </tr>
								     </tr>
								      <tr>
								      <td>部门编号</td>
								     <td><input type="text"></td>
								     </tr>
								  </table>
								</form>
							</div>
							  <div class="modal-footer">
							
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
								
								<button type="button" class="btn btn-primary">保存</button>
							</div>
						</div>
					</div>
				</div>
   </body>
   </html>
