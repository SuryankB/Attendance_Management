<link rel="stylesheet" type="text/css" href="style.css">
<%@ include file="db.jsp" %>

<%
if(session.getAttribute("username") == null){
    response.sendRedirect("login.jsp");
    return;
}

PreparedStatement pst = con.prepareStatement("SELECT * FROM attendance ORDER BY date DESC");
ResultSet rs = pst.executeQuery();
%>

<html>
<body>

<div class="topbar">
    <a href="home.jsp" style="color:#fff; text-decoration:none;">⬅ Home</a>
    <span class="right"><a href="logout.jsp" style="color:#fff;">Logout</a></span>
</div>

<h2>Attendance Records</h2>

<table>
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Date</th>
    <th>Status</th>
</tr>

<%
while(rs.next()){
%>
<tr>
    <td><%= rs.getInt("id") %></td>
    <td><%= rs.getString("student_name") %></td>
    <td><%= rs.getDate("date") %></td>
    <td><%= rs.getString("status") %></td>
</tr>
<%
}
%>

</table>

</body>
</html>
