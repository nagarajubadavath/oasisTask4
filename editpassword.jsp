<%@page import="java.sql.*"%>

<%
String mobile=request.getParameter("mobile");
String password=request.getParameter("pwd");

if (mobile == null || password == null) {
    out.println("Invalid request");
} else {
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Exam", "raju", "Nagaraju1136@");
        
        // Update the password for the user with the given email
        String sql ="UPDATE registration SET password = ? WHERE mobile= ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, password); 
        ps.setString(2, mobile);
        int rowsAffected = ps.executeUpdate();
        
        if (rowsAffected > 0) {
            out.println("Password changed successfully");
        } else {
            out.println("Password change failed");
        }
        
        conn.close();
    } catch (Exception e) {
        out.println(e.getMessage());
    }
}
%>
