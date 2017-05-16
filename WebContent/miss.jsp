<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<p>
<%= session.getAttribute("count")%>回目不正解
</p>
<%@ include file ="form.html"%>