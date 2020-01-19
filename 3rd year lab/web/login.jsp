<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
String email =request.getParameter("email");
String password =request.getParameter("password");
Statement statement = con.createStatement();
String query = "select * from user where email='"+email+"' and password='"+password+"'";
ResultSet rs = statement.executeQuery(query);
if(rs==null){
    out.println("No Such User Found");
}
else{
    rs.next();
    String uuid = UUID.randomUUID().toString();
    out.println(uuid);
    Map<String,String> mp  = new HashMap<String,String>();
    mp.put("name",rs.getString(3));
    mp.put("email",rs.getString(4));
    mp.put("phone",rs.getString(5));
    session.setAttribute(uuid,mp);
    Cookie sessionId = new Cookie("SESSION_ID",uuid);
    sessionId.setMaxAge(86400);
    response.addCookie(sessionId);
    out.println("<script>setTimeout(() => {window.location='/pro/dashboard.jsp';}, 0);</script>");
}
}
catch(Exception e){
out.println(e);
}
%>