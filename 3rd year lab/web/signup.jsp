<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<%! String fname,lname,email,password,phone; %>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
 fname = request.getParameter("fname");
 lname = request.getParameter("lname");
 email = request.getParameter("email");
 password = request.getParameter("password");
 phone = request.getParameter("phone");


Statement statement = con.createStatement();

String query = "insert into user(name,email,phone,password) values('"+fname+" "+lname+"','"+email+"','"+phone+"','"+password+"');";

int id = statement.executeUpdate(query);

out.println("You Have Successfully SignedUp...!!! <br> Login For More Details<br><br>");
out.println("Redirecting you to login page...");
}catch(Exception e){
    out.println(e);
}
%>
<script>
setTimeout(() => {
    window.location='/pro/login.html';
}, 5000);
</script>