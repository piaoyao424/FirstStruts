<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Submit</title>
</head>
<body>
	<form action="messagePane.jsp" method="post" name="form">
	<P>
		输入您的名字： <input type="text" name="peopleName"> <br>
	<p>
		输入您的留言标题： <input type="text" name="Title"> <br>
	<p>
		输入您的留言：
		<textarea name="messages" rows="10" cols="36" >
		</textarea>
		<br> <input type="submit" value="提交信息" name="submit">
	</form>

	<form action="showMessage.jsp" method="post" name="form1">
		<input type="submit" value="查看留言板" name="look">
	</form>
	<a href="UpdateFile.jsp" >上传文件 </a>
</body>

</html>