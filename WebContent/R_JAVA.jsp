<%@ page import="sample.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//VM arguments:
//-Djava.library.path=.:/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rJava/jri/
//Environment:
//R_HOME
///Library/Frameworks/R.framework/Versions/3.3/Resources
//javaと同じ設定で問題なし
out.println(new R_JAVA().sqrt(36));
%>
</body>
</html>