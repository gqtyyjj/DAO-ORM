<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="./js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<script type="text/javascript" src="js/addDept.js"></script>
<style type="text/css">
.img-border {
	border-radius: 5px;
	border-style: solid;
	border-width: 1px;
	border-color: #D9D9D9;
	padding: 5px;
}

.img-border:HOVER {
	border-radius: 5px;
	border-style: solid;
	border-width: 1px;
	border-color: #66afe9;
	padding: 5px;
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
		<div class="row">
			<div class="col-md-12">
				<!-- 模态框（Modal） -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog" style="width: 60%;">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<span class="icon-user"></span>&nbsp;
								<h4 class="modal-title" id="myModalLabel">部门添加</h4>
							</div>

							<div class="modal-body">
								<form action="" method="post" class="form-horizontal"
									id="addDeptForm">
									<div class="form-group">
										<label for="dept.name" class="col-md-2 control-label">部门名称:</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="dept.name"
												name="dept.name" placeholder="请输入部门名称">
										</div>
										<div class="col-md-3" id="dept.nameMsg">*</div>
									</div>
									<div class="form-group">
										<label for="dept.city1" class="col-md-2 control-label">位置:</label>
										<div class="col-md-3">
											<select id="dept.city1" name="dept.city1"
												class="form-control">
												<option value="">请选择省份</option>
												<option value="1">北京</option>
												<option value="2">南京</option>
												<option value="3">天津</option>
											</select>
										</div>
										<div class="col-md-3">
											<select id="dept.city2" name="dept.city2"
												class="form-control">
												<option value="">请选择城市</option>
												<option value="1">南昌</option>
												<option value="2">上饶</option>
												<option value="3">宜春</option>
											</select>
										</div>
										<div class="col-md-3" id="dept.city1Msg">*</div>
									</div>
									<div class="form-group">
										<label for="dept.LOGUrl" class="col-md-2 control-label">部门LOG:</label>
										<div class="col-md-6">
											<input type="file" class="form-control" id="dept.LOGUrl"
												name="dept.LOGUrl">
										</div>
										<div class="col-md-3" id="dept.LOGUrlMsg">*</div>
									</div>
									<div class="form-group">
										<label for="dept.LOGUrl" class="col-md-2 control-label"></label>
										<div class="col-md-6">
											<img src="./image/2016072010443369524.jpg" width="120px"
												height="120px" class="img-border" />
										</div>
									</div>
									<div class="form-group">
										<label for="dept.address" class="col-md-2 control-label">地址:</label>
										<div class="col-md-6">
											<textarea rows="4" cols="40" class="form-control"
												placeholder="请输入地址" id="dept.address" name="dept.address"></textarea>
										</div>
										<div class="col-md-3" id="dept.addressMsg">*</div>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<input type="submit" class="btn btn-primary" value="添加"
									form="addDeptForm" />
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>