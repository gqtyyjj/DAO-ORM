$(function(){
	$(pic).uploadify({	// 最好不要完成异步上传的操作
		auto : true ,	// 描述的是自动实现上传
		swf : "uploadify/swf/uploadify.swf", 	// 上传的flash
		uploader : "dept/upLoad" ,			// 接收上传文件
		buttonText : "请选择上传文件" ,
		fileObject : "pic" ,
		multi : true , 
		queueSizeLimit : 3 , 
		formData : {
			"member.mid" : "mldn" ,
			"member.name" : "SMITH" 
		} ,
		fileTypeExts : "*.jpg;*.png;*.gif;*.bmp" , 
		onUploadSuccess : function(file,data) {
			var obj = eval("("+data+")") ;	// 将文本变为json对象
			if (obj.saved == "true") {
				/**
				 * obj.fileName ：压缩图URL
				 * obj.bigFileName ：上传图片URL
				 */
				var url = getRootPath()+"/upload/"+obj.fileName;
				$("#showImg").attr("src",url);
				$("#showImg").attr("alt",obj.bigFileName);
				
			} else {
				alert("对不起，文件上传失败！") ;
			}
		} ,
		onQueueComplete : function() {
			 //alert("图片已经上传完毕！") ;
		}
	}) ;
});