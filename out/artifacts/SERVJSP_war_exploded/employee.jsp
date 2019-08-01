<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/1/2019
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div>
        <form action="/employee/create" method="post">
            <div>
                <label>Full name</label>
                <input type="text" name="fullName" required>
            </div>
            <div>
                <label>Birthday</label>
                <input type="text" name="birthday" required>
            </div>
            <div>
                <label>Address</label>
                <input type="text" name="address">
            </div>
            <div>
                <label>Position</label>
                <input type="text" name="position" required>
            </div>
            <div>
                <label>Department</label>
                <input type="text" name="department" required>
            </div>
            <div>
                <input type="submit" value="Submit">
                <input type="reset" value="Reset">
            </div>
        </form>
    </div>
</body>
</html>
