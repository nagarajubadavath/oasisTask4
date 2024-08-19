<%@ page import="java.sql.*, java.util.*" %>
<%
String username = request.getParameter("uname");
String password = request.getParameter("pwd");

if (username == null || password == null) {
    out.println("Username or Password cannot be null");
} else {
    try {
        Class.forName("com.mysql.cj.jdbc.Driver"); // Ensure you are using the correct driver
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Exam", "raju", "Nagaraju1136@");
        String sql = "SELECT * FROM registration";
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet resultSet = ps.executeQuery();
        int flag = 0;

        while (resultSet.next()) {
            if (username.equals(resultSet.getString("username")) && password.equals(resultSet.getString("password"))) {
                flag = 1;
                break;
            }
        }

        if (flag == 1) {
            response.sendRedirect("Home.html");
        } else {
            out.println("Not logged");
            response.sendRedirect("login.html");
        }
        
    } catch (Exception e) {
        out.println(e.getMessage());
    }
}
%>
