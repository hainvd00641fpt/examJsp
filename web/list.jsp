<%@ page import="entity.Employee" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/1/2019
  Time: 10:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<Employee> list =(List<Employee>) request.getAttribute("list");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Employee Information</h1>
<%
    for (int i=0;i<list.size();i++){
%>
Fullname: <%=list.get(i).getFullName()%><br>
Birth day: <%=list.get(i).getBirthday()%><br>
Address:<%=list.get(i).getAddress()%><br>
Position:<%=list.get(i).getPosition()%><br>
Departement: <%=list.get(i).getDepartment()%>
<%
    }
%>


</body>
</html>
