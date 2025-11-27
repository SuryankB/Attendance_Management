<link rel="stylesheet" type="text/css" href="style.css">

<%@ include file="db.jsp" %>

<%
if(session.getAttribute("username") == null){
    response.sendRedirect("login.jsp");
}

String name = request.getParameter("student_name");
String date = request.getParameter("date");
String status = request.getParameter("status");

PreparedStatement pst = con.prepareStatement(
    "INSERT INTO attendance (student_name, date, status) VALUES (?,?,?)"
);

pst.setString(1, name);
pst.setString(2, date);
pst.setString(3, status);

pst.executeUpdate();

response.sendRedirect("addAttendance.jsp?success=1");
%>
