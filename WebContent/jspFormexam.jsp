<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
    int count=0;
    String str ="";

    String name = request.getParameter("name");
    String[] get_health = request.getParameterValues("health");

    if(name != null){
    	if(get_health == null){
    		count= 0;
    	}else{
    		count= get_health.length;
    	}
    	if(!name.equals("")){
    		switch(count){
    		case 0:
    			str = "いいね";
    			break;
    		case 1:
    			str= "まあまあだね";
    			break;
    		case 2:
    			str="ふつう";
    			break;
    		case 3:
    			str ="あやしい";
    			break;
    		case 4:
    			str="やばい";
    			break;
    		}
    	}else{
    		name="名無し";
    		str="名前をいれて";
    	}
    }else{
    	name="わからない";
    	str="戻れ";
    }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>健康チェック</h1>
<hr />
<h2>チェックは<%=count %>個です</h2>
<h2><%= name %>さんの健康チェック</h2>
<h2>結果<%= str %></h2>
<a href="formexam.html"></a>
</body>
</html>