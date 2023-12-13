
<%@page import="member.Member"%>
<%@page import="member.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
MemberDao md = new MemberDao();
Member member = md.oneMember(login);
%>
<div class="container">
      <div class="input-form-backgroud row">
         <div class="input-form col-md-12 mx-auto">
            <h4 class="mb-3">회원정보</h4>
            <table class="table">
            <tr><th>name</th><th>value</th> </tr>
            <tr><td>id</td><td><%=member.getId() %></td><tr> 
            <tr><td>name</td><td><%=member.getName()%></td><tr>
            <tr><td>email</td><td><%=member.getEmail() %></td><tr>
            <tr><td>nickname</td><td><%=member.getNickname() %></td><tr>
            <tr><td>tel</td><td><%=member.getTel() %></td><tr>
            
            
             <tr>
             <td colspan = "2" class = "w3-center">
             <a class="btn btn-primary"    
             href="${pageContext.request.contextPath}/member/memberUpdateForm.jsp">회원정보수정</a>
             <a class="btn btn-primary" 
             href="${pageContext.request.contextPath}/member/memberDeleteForm.jsp">회원탈퇴</a>
             <a class="btn btn-primary" 
             href="${pageContext.request.contextPath}/member/memberPassForm.jsp">비밀번호수정</a>
           </td>
           </tr>
            </table>
         </div>
      </div>
   
   </div>
</body>
</html>