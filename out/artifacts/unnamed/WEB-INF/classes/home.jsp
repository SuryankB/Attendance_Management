<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>
<link rel="stylesheet" type="text/css" href="style.css">

<%
if(session.getAttribute("username") == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<html>
<body>

<div class="topbar">
    Welcome <%= session.getAttribute("username") %>
    <span class="right"><a href="logout.jsp" style="color:#fff;">Logout</a></span>
</div>

<div class="container">
    <h2>Home</h2>
    <div class="nav-links">
        <a href="addAttendance.jsp">Add Attendance</a>
        <a href="viewAttendance.jsp">View Attendance</a>
    </div>
</div>

</body>
</html>
