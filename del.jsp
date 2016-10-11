<html>
<body bgcolor=	"F4A460	">

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
 
Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/attendance","root","mysql"); 
String del="DELETE FROM te4;";

Statement stmt = con.createStatement();
stmt.execute(del);
%>
</body>
</html>
