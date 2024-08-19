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
        String sql ="UPDATE registration SET mobile= ? WHERE password= ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, mobile); 
        ps.setString(2, password);
        int rowsAffected = ps.executeUpdate();
        
        if (rowsAffected > 0) {
            out.println("profile changed successfully");
        } else {
            out.println("Profile change failed");
        }
        
        conn.close();
    } catch (Exception e) {
        out.println(e.getMessage());
    }
}
%>
