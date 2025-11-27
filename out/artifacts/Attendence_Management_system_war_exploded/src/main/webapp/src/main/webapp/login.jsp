<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>
<link rel="stylesheet" type="text/css" href="style.css">

<html>
<body>

<div class="container">
    <h2>Login Page</h2>

    <form method="post">
        Username:
        <input type="text" name="username" required><br>
        Password:
        <input type="password" name="password" required><br>
        <button type="submit">Login</button>
    </form>

    <%
    if(request.getMethod().equalsIgnoreCase("POST")){
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        PreparedStatement pst = con.prepareStatement(
            "SELECT * FROM users WHERE username=? AND password=?"
        );
        pst.setString(1, username);
        pst.setString(2, password);

        ResultSet rs = pst.executeQuery();

        if(rs.next()){
            session.setAttribute("username", username);
            response.sendRedirect("home.jsp");
        } else {
            out.println("<p class='error'>Invalid credentials!</p>");
        }
    }
    %>
</div>

</body>
</html>
