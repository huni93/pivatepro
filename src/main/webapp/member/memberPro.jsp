
<%@page import="member.MemberDao"%>
<%@page import="member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head> <body>
<%
Member member = new Member();
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String password = request.getParameter("password");
String cheak = request.getParameter("cheak");
String name = request.getParameter("name");
String email = request.getParameter("email") ;
String nickname = request.getParameter("nickname");
String tel = request.getParameter("tel");
member.setId(id);
member.setPassword(password);
member.setCheak(cheak);
member.setName(name);
member.setEmail(email);
member.setNickname(nickname);
member.setTel(tel);


MemberDao md = new MemberDao();
int num = md.insertMember(member);
%><%=num %>
</body>
</html>