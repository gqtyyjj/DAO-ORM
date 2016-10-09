<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 String boxMsg = (String)request.getAttribute("boxMsg");
 System.out.println(boxMsg);

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  	<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
  	<script type="text/javascript" src="js/util.js"></script>
  	<script type="text/javascript">
  		$(function(){
  			promptBox($("#boxMsg").val());
  		});
  	</script>
</head>
<body>
	<input type="hidden" id="boxMsg" value="<%=boxMsg%>" />	
</body>
</html>