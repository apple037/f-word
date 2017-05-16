<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id = "database" class="com.database.Database">
  <jsp:setProperty property="ip" name="database" value="127.0.0.1"/>
  <jsp:setProperty property="port" name="database" value="3306"/>
  <jsp:setProperty property="db" name="database" value="test"/>
  <jsp:setProperty property="user" name="database" value="root"/>
  <jsp:setProperty property="password" name="database" value="22840864"/>
</jsp:useBean>
<!DOCTYPE html>
<%
  String name = (String)session.getAttribute("uname");
  String log = (String)session.getAttribute("login");
  if ( session.getAttribute("uname") == null ){
  response.setHeader("Refresh", "3;url=index.html");
  }
  %>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/page.css">
  </head>
  <body>
    <h1><%=name%></h1>
    <h1>Login <%=log%>!</h1>
    <p>C'est magnifique!</p>
    <button onclick="window.open('list.jsp','_self')">list all</button>
  </body>
</html>
