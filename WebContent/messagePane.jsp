<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<%!Vector<String> v = new Vector<String>();
	int i = 0;
	ServletContext application;

	synchronized void sendMessage(String s) {
		application = getServletContext();
		v.add(s);
		application.setAttribute("mess", v);
	}%>
	<%
		String name = request.getParameter("peopleName");
		String title = request.getParameter("Title");
		String messages = request.getParameter("messages");
		if (name == null) {
			name = "guest" + (int) (Math.random() * 10000);
		}
		if (title == null) {
			title = "无标题";
		}
		if (messages == null) {
			messages = "无信息";
		}
		String time = new Date().toString();
		String s = "#" + name + "#" + title + "#" + time + "#" + messages
				+ "#";
		sendMessage(s);
		out.print("您的信息已经提交!");
	%>
	<a HREF = "login.jsp">返回</a>
	<a HREF = "showMessage.jsp">查看留言板</a>
</body>
</html>