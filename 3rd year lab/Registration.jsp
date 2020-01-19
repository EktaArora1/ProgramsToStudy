<%@page import="java.sql.*"%>
<%String id = request.getParameter("id");
String user_id = request.getParameter("user_name");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String email = request.getParameter("email");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "db1";
String userId = "root";
String password = "root";
try {
Class.forName(driverName);

Connection connection = null;
Statement statement = null;
connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
statement = connection.createStatement();

String sql = "INSERT INTO details (id,user_id,Password,name,email) VALUES('"+id+"','"+user_id+"','"+pwd+"','"+name+"','"+email+"')";
int flage = statement.executeUpdate(sql);
out.println("DATA SUBMITTED SUCCESSFULLY");
} catch (Exception e) {
e.printStackTrace();
}

%>