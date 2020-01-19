<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<%
String uuid=null;
Cookie cookies[] = request.getCookies();
for(int i=0;i<cookies.length;++i){
    if(cookies[i].getName().equals("SESSION_ID")){
        uuid = cookies[i].getValue();
        break;
    }
}
if(uuid!=null){
Map<String,String> mp = (Map)session.getAttribute(uuid);
out.println("Name"+mp.get("name")+"<br>");
out.println("Email"+mp.get("email")+"<br>");
out.println("Phone"+mp.get("phone")+"<br>");
}
else
{
    out.println("No Cookies");
}
%>