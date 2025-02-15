<%@ page import="java.util.regex.*" %>
<%
    String email = request.getParameter("email");
    Pattern pattern = Pattern.compile("^[A-Za-z0-9+_.-]+@(.+)$");
    Matcher matcher = pattern.matcher(email);

    if (!matcher.matches()) {
        out.println("Invalid Email Format!");
    } else {
        out.println("Valid Email!");
    }
%>
