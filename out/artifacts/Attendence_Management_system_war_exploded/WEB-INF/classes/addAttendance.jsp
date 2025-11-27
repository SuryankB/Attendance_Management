<link rel="stylesheet" type="text/css" href="style.css">

<%
if(session.getAttribute("username") == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<html>
<body>

<div class="container">
    <h2>Add Attendance</h2>

    <%
        String success = request.getParameter("success");
        if("1".equals(success)){
            out.println("<p class='success'>Attendance saved successfully!</p>");
        }
    %>

    <form action="saveAttendance.jsp" method="post">
        Student Name:
        <input type="text" name="student_name" required>

        Date:
        <input type="date" name="date" required>

        Status:
        <select name="status">
            <option value="Present">Present</option>
            <option value="Absent">Absent</option>
        </select>

        <button type="submit">Save</button>
    </form>

    <br>
    <a href="home.jsp">⬅ Back to Home</a>
</div>

</body>
</html>
