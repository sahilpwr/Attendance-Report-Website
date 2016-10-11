
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<html>
<body bgcolor=	"F4A460	">
<head>
<style>

th, td {
    padding: 5px;
}
th, td {
    text-align: center;
}
</style>
 
<center>
<table border='1'>
	<tr>
	<th>ROLL</TH>		 
	<th>TOTAL</th>
	</tr>
<%

	Class.forName("com.mysql.jdbc.Driver"); 
	Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/attendance","root","mysql"); 	
			
	Statement st =con.createStatement();
			
	String s=" SELECT ROLL,sum(DMSA + CFCA + OSD + DCWSN + TOC ) as TOTAL_ATTENDANCE from te4 group by ROLL having sum(DMSA + CFCA + OSD + DCWSN + TOC ) > 4;";
			
	ResultSet rs=st.executeQuery(s);
			
	rs=st.executeQuery(s); 
			
	ResultSetMetaData rsmt=rs.getMetaData();
	int cnt=rsmt.getColumnCount();
			
			


			
	while(rs.next())
	{
%>
<tr>		
<%
	for(int i=1;i<=cnt;i++)		
	{
%>
<td>
<%
	out.println(rs.getString(i));
%>
</td>

	
<%     }
%>
</tr>
<%
       }
				
%>
				
			
</table>
</center>
</head>

</body>
</html>
