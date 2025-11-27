<%@ page import="java.sql.*" %>

<%
    String url = "jdbc:mysql://localhost:3306/attendance_Management_system";
    String user = "root";
    String pass = "suryank";

    Connection con = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(url, user, pass);
    } catch(Exception e) {
        out.println("Database Connection Failed: " + e);
    }
%>
