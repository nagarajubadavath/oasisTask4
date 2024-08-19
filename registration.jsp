<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("uname");
String password=request.getParameter("pwd");
String mobile=request.getParameter("mobile");
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Exam","raju","Nagaraju1136@");
    String sql="insert into registration (username,password,mobile) values(?,?,?)";
    PreparedStatement ps= conn.prepareStatement(sql);
    ps.setString(1,username);
    ps.setString(2,password);
    ps.setString(3,mobile);
    int i=ps.executeUpdate();
    if(i>0)
    {
        response.sendRedirect("login.html");
    }else{
        out.println("not success");
    }
}catch(Exception e)
{
    out.println(e.getMessage());
}
%>
