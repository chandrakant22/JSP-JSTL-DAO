<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="u" class="model.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<jsp:useBean id="udb" class="model.UserDao"></jsp:useBean>


<%
int x=udb.insertDb(u);
%>

<c:set var = "a" scope = "session" value = "<%=x %>"/>
      <c:if test = "${a > 0}">
         <p>Data inserted !<p>
</c:if>

</body>
</html>