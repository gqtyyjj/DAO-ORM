$(function(){
 
	/*导航列表加载*/
	$.post(getRootPath()+"/dept/queryDeptMsg",{},function(dt){
		var nav = $("#div-nav>ul");
		var lix = $("#nva-li-1");
		for(var i = 0 ; i < dt.length; i++)
		{
			var li_colne = lix.clone(true);
			li_colne.attr("mid",dt[i].deptId);
			li_colne.children("a").first().text(dt[i].deptName);
			nav.append(li_colne);
		}
		$("#div-nav>ul>li:eq(0)").remove();
		$("#div-nav>ul>li:first").addClass("active");
	 },"json");
	
	/*导航列表样式切换*/ 
	$("#div-nav>ul>li").on("click",function(){
		$("#div-nav>ul>li").removeClass("active");
		var navigation = $(this); //获取当前导航列元素
		navigation.addClass("active");
		
	});
	
	/*添加部门*/
	 $("#addDept").click(function(){
		 var url = getRootPath() + "/addDept.jsp";
		 $("#printModel").load(url);
	 });
	 
	 /*修改部门信息*/
    $("#editDept").click(function(){
    	var li = $("[mid][class='active']");
    	var deptId = li.attr("mid");
   	     var url = getRootPath() + "/dept/editDept";
		 $("#printModel").load(url,{deptId:deptId});
	 });
    
    /*删除部门*/
    $("#removeDept").click(function(){
    	var li = $("[mid][class='active']");
    	if(window.confirm("你确认要删除嘛 ?"))
    	{
	    	 var deptId = li.attr("mid");
	      	 var url = getRootPath() + "/dept/removeDept";
	   		 $("#printModel").load(url,{deptId:deptId});
	   		 setTimeout(function() 
	   		 {
		   	  window.location.href = getRootPath() + '/main.jsp';
	   		 },3000);
    	}
	 });
    /*查看部门信息*/
    $("#queryDept").click(function(){
    	var li = $("[mid][class='active']");
	    	 var deptId = li.attr("mid");
	      	 var url = getRootPath() + "/dept/queryDept";
	   		 $("#printModel").load(url,{deptId:deptId});
	 });
    
    
	 /*右侧雇员信息DOM输出*/
	 $("#div-nav>ul>li").on('click',function()
	 {
		 var id = $(this).attr("id");
	 }); 

	
});