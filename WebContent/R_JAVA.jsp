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
//Eclipseの場合
//VM arguments:
//-Djava.library.path=.:/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rJava/jri/
//Environment:
//R_HOME
///Library/Frameworks/R.framework/Versions/3.3/Resources
//javaと同じ設定で問題なし

//Tomcatの場合（Eclipseの上でなく）
///usr/local/tomcat/binにsetenv.shを作成
//内容
//## JVM Options
//CATALINA_OPTS="-Xms512M -Xmx1024M -XX:PermSize=512M -XX:MaxPermSize=1024M"#メモリの割り当て
//CATALINA_OPTS="-Djava.library.path=.:/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rJava/jri/"#jriのある場所
//#上記のように書いているが，jriはlibの中に格納
//R_HOME="/Library/Frameworks/R.framework/Versions/3.3/Resources"#Rの本体
out.println(new R_JAVA().sqrt(36));
%>
</body>
</html>