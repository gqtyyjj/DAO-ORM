window.onload = function(){
	 $.post("/Test_003/dept/queryCity",{},function(dt)
	 {
			var city1 = document.getElementById("city1");
			city1.length= 1;
			for(var i = 0 ; i< dt.length ; i++)
			{
				var option =  document.createElement("option");
				option.setAttribute("value",dt[i].aid+"-"+dt[i].title);
				option.appendChild(document.createTextNode(dt[i].title));
				city1.appendChild(option);
			}
	},"json");
		
	
	document.getElementById("city1").addEventListener("focus",removeOption,false);
	document.getElementById("city1").addEventListener("blur",function()
	{
		document.getElementById("city1").removeEventListener("focus",removeOption,false);
	},false);
	
	function removeOption()
	{	
		 var city1 = document.getElementById("city1");
		 var option  = city1.getElementsByTagName("option")[0];
		 city1.removeChild(option); 
	 }
	 
	
	 
	document.getElementById("deptName").addEventListener("blur",function(){
	  var deptName = document.getElementById("deptName").value;
	  $.post("/Test_003/dept/yzdeptName",{"deptName":deptName},function(dt){
		    if(dt.status == 1)
			{
		    	document.getElementById("deptNameMsg").innerHTML = "<b>存在此部门名称!</b>";
			}
		    else
		    {
		    	document.getElementById("deptNameMsg").innerHTML = "不存在此部门名称!";
		    }
		 },"json");

	},false);
}

 