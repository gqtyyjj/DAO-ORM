
// 获取根目录
function getRootPath(){
    // 获取当前网址，如：
    // http://localhost:8083/uimcardprj/share/meun.jsp
    var curWwwPath = window.document.location.href;
    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
    var pathName = window.document.location.pathname;
    var pos = curWwwPath.indexOf(pathName);
    //获取主机地址，如： http://localhost:8083 
    var localhostPaht = curWwwPath.substring(0,pos);
	 // //获取带"/"的项目名，如：/uimcardprj 
    var projectName = pathName.substring(0,pathName.substr(1).indexOf('/')+1);
	return(localhostPaht + projectName);
   }

//调用：post('路径', {html :prnhtml,cm1:'sdsddsd',cm2:'haha'});  post传递
//调用：window.location.href = getRootPath() + '/9.14/addValidation.jsp?obj='+ obj;  get传递
//创建虚拟post提交 
function post(url, params) {
    var temp = document.createElement("form");
    temp.action = url;
    temp.method = "post";
    temp.style.display = "none";
    for (var x in params) {
        var opt = document.createElement("input");
        opt.name = x;
        opt.value = params[x];
        temp.appendChild(opt);
    }
    document.body.appendChild(temp);
    temp.submit();
    return temp;
} 

function promptBox(msg){
	  $("#757da1a7-29d1-469e-9c47-ab9653d1065e").remove();
	   var div = $("<div id=\"757da1a7-29d1-469e-9c47-ab9653d1065e\"><h4>"+msg+"</h4></div>");
	    $("body").append(div);
	    $("#757da1a7-29d1-469e-9c47-ab9653d1065e").css({
			"background-color" : "#FFB90F",
			"position" : "fixed",
			"top" : "0px",
			"width" : "100%",
			"height" : "50px",
			"margin-top" : "0px",
			"z-index" : "999",
			"text-align":"center",
		});
		    setTimeout(function() {
			$("#757da1a7-29d1-469e-9c47-ab9653d1065e").toggle(600);
		}, 3000);	 
	 }
																																																																										// }
																																																																											// document.body.appendChild(temp);
																																																																											// temp.submit();
																																																																											// return
																																																																											// temp;
																																																																											// }





