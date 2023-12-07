<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<style>
   
        .result-item {
            margin-bottom: 15px;
            padding: 10px;
            background-color: #f0f0ff;
            border-radius: 4px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
    </style>  
<%@ include  file="header.jsp" %> 

<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("loginId");
String password = request.getParameter("loginPw");
String cheak = request.getParameter("loginPw");
String name = request.getParameter("name");
String email = request.getParameter("email");
String nickname = request.getParameter("nickname");
String tel = request.getParameter("tel");
%>
<div class="= joinForm">
        <h1 style="text-align: center;">회원가입</h1>
        <div class="result-item">아이디: <%=id %></div>
        <div class="result-item">비밀번호: <%=password %></div>
        <div class="result-item">비밀번호 확인: <%=cheak %></div>
        <div class="result-item">이름: <%=name %></div>
        <div class="result-item">이메일: <%=email %></div>
        <div class="result-item">닉네임: <%=nickname %></div>
        <div class="result-item">전화번호: <%=tel %></div>
    </div>
</body>
</html>