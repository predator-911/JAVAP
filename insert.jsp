<%@ page import="java.sql.*" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb", "root", "password");

    PreparedStatement ps = conn.prepareStatement("INSERT INTO users (name, email) VALUES (?, ?)");
    ps.setString(1, name);
    ps.setString(2, email);
    ps.executeUpdate();

    out.println("Data Inserted Successfully!");
    conn.close();
%>
