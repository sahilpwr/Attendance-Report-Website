<html>
<body bgcolor=	"F4A460	">
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
  
<%
//dont frgt to import java.sql otherwise it wil giv error connection cnt be resolved into a type
//ALTER TABLE table_name
//ADD column_name datatype

String m=request.getParameter("start");
 String n=request.getParameter("end");

int start=Integer.parseInt(m);
int end=Integer.parseInt(n);

Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/attendance","root","mysql"); 
int j;
for(j=start;j<=end;j++)
	{
		String i=Integer.toString(j);
		String str="INSERT INTO te4 VALUES (?,'0','0','0','0','0');";


		PreparedStatement preparedStmt = con.prepareStatement(str);
		preparedStmt.setString(1,i); 
		preparedStmt.execute();
	}
%>
</body>
</html>
