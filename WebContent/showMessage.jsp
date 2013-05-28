<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<%
		try {
			Vector<String> v = (Vector<String>) application
					.getAttribute("mess");
			out.print("<table border=2>");
			out.print("<tr>");
			out.print("<td bagcolor=cyan>" + "留言者" + "</td>");
			out.print("<td bagcolor=cyan>" + "标题" + "</td>");
			out.print("<td bagcolor=cyan>" + "留言时间" + "</td>");
			out.print("<td bagcolor=cyan>" + "留言内容" + "</td>");
			for (int i = 0; i < v.size(); i++) {
				out.print("<tr>");
				String message = (String) v.elementAt(i);
				StringTokenizer fenxi = new StringTokenizer(message, "#");
				out.print("<tr>");

				int number = fenxi.countTokens();
				for (int k = 0; k < number; k++) {
					String str = fenxi.nextToken();
					byte a[] = str.getBytes("ISO-8859-1");
					str = new String(a);
					if (k < number - 1) {
						out.print("<td bgcolor=cyan>" + str + "</td>");
					} else {
						out.print("<td><TextArea rows=3 cols=12>" + str
								+ "</TextArea></td>");
					}
				}
				out.print("</tr>");
			}
			out.print("</table>");
		} catch (Exception e) {
			out.print("Wrong!");
		}
		;
	%>
</body>
</html>