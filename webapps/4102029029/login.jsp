
<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id = "database" class="com.database.Database">
  <jsp:setProperty property="ip" name="database" value="127.0.0.1"/>
  <jsp:setProperty property="port" name="database" value="3306"/>
  <jsp:setProperty property="db" name="database" value="test"/>
  <jsp:setProperty property="user" name="database" value="root"/>
  <jsp:setProperty property="password" name="database" value="22840864"/>
</jsp:useBean>
<%
  request.setCharacterEncoding("UTF-8");
  String p_name = request.getParameter("name");
  String p_password = request.getParameter("password");

  database.connectDB();
  database.query("select * from login where name='" + p_name + "' and password='" + p_password + "';");
  ResultSet rs = database.getRS();
  if (rs.next()) {
      session.setAttribute("uname",p_name);
      session.setAttribute("login","OK");
      response.sendRedirect("success.jsp");
  } else {
      out.println("Invalid password <a href='index.html'>try again</a>");
  }
%>
