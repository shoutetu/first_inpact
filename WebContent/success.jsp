<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <p>
    <%= session.getAttribute("count") %>回目で正解,
    <strong><%=session.getAttribute("number") %></strong>でした。
    </p>
<p>
<a href="numberGame.jsp">はじめから</a>
</p>
<% session.invalidate(); %>
