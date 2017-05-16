<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id = "database" class="com.database.Database">
  <jsp:setProperty property="ip" name="database" value="127.0.0.1"/>
  <jsp:setProperty property="port" name="database" value="3306"/>
  <jsp:setProperty property="db" name="database" value="test"/>
  <jsp:setProperty property="user" name="database" value="root"/>
  <jsp:setProperty property="password" name="database" value="22840864"/>
</jsp:useBean>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/page.css">
  </head>
  <body>
    <div>
      <%
      String name = (String)session.getAttribute("uname");
      if ( session.getAttribute("uname") == null ){
        out.println("C'est un probleme!");
      response.setHeader("Refresh", "5;url=index.html");
      }
      else{
      database.connectDB();
      database.query("select * from login");
      ResultSet rs = database.getRS();

     if ( rs != null ){
       while(rs.next()){
       String id = rs.getString("userid");
       String usname = rs.getString("name");
       String birthday = rs.getString("birthday");
       String memo = rs.getString("memo");
    %>
      <div id="c">
      <p><%=id%></p>
      <p><%=usname%></p>
      <p><%=birthday%></p>
      <p><%=memo%></p>
    </div>
    <%}}}%>
    </div>
  </body>
</html>
