<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
 
<html>
<head>
<body bgcolor=	"F4A460	">	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">

function checkBoxValidation()
	{
		for(var i=0; i < document.form1.roll.length; i++)
		{
			if(!document.form1.roll[i].checked)
				{
					alert("ALL PRESENT...?");
					return false;
				}
			else
				{
					alert("DO YOU SUBMIT ABSENT LIST");
					return true;
				}
		}
	}
</script>

</head>

<center>
<form name="form1" onsubmit="checkBoxValidation()">

<h3>MARK ATTENDANCE</h3>

<p><input type="checkbox" name="roll" value="3401"/>3401</p>
<p><input type="checkbox" name="roll" value="3402"/>3402</p>
<p><input type="checkbox" name="roll" value="3403"/>3403</p>
<p><input type="checkbox" name="roll" value="3404"/>3404</p>
<p><input type="checkbox" name="roll" value="3405"/>3405</p>
<p><input type="checkbox" name="roll" value="3406"/>3406</p>
<p><input type="checkbox" name="roll" value="3407"/>3407</p>
<p><input type="checkbox" name="roll" value="3408"/>3408</p>
<p><input type="checkbox" name="roll" value="3409"/>3409</p>
<p><input type="checkbox" name="roll" value="3410"/>3410</p>
<p><input type="submit" value="SUBMIT"/>
</form>
</center>
<%

String subject=session.getAttribute("sub").toString();
out.println(subject);
String absent[]= request.getParameterValues("roll");
if(absent != null)
{
%>
<center>
	<h4>ABSENT STUDENTS	</h4>
	<ul>
	<%
	for(int i=0; i<absent.length; i++)
		{
		%>
			<li><%=absent[i]%></li>
		<%
		}
	%>
	</ul>
</center>
<%
//dont frgt to import java.sql otherwise it wil giv error connection cnt be resolved into a type

}
	Class.forName("com.mysql.jdbc.Driver"); 
	
	Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/attendance","root","mysql");
	String k=null;

if(subject.equals("CFCA"))
{
	if(absent != null)
	{
	

	
		int j=0;
		int a=Integer.parseInt(absent[j]);
		for(int i=3401; i <= 3411; )
		{	

		
		
	
			if(j < absent.length && i==a)
			{
				j++;
				i++;	
				if(j==absent.length)
					j=j-1;

				a=Integer.parseInt(absent[j]);
			
			
			}	
			else
			{
				k=Integer.toString(i);
				String up="UPDATE `te4` SET CFCA = CFCA + 1 WHERE `ROLL` = "+i;

				Statement stmt = con.createStatement();
				stmt.executeUpdate(up);
				i++;
			}
				
		}
	}
}


else if(subject.equals("TOC"))
{
	if(absent != null)
	{
	

	
		int j=0;
		int a=Integer.parseInt(absent[j]);
		for(int i=3401; i <= 3411; )
		{	

		
		
	
			if(j < absent.length && i==a)
			{
				j++;
				i++;	
				if(j==absent.length)
					j=j-1;

				a=Integer.parseInt(absent[j]);
			
			
			}	
			else
			{
				k=Integer.toString(i);
				String up="UPDATE `te4` SET TOC = TOC + 1 WHERE `ROLL` = "+i;

				Statement stmt = con.createStatement();
				stmt.executeUpdate(up);
				i++;
			}
				
		}
	}
}

else if(subject.equals("OSD"))
{
	if(absent != null)
	{
	

	
		int j=0;
		int a=Integer.parseInt(absent[j]);
		for(int i=3401; i <= 3411; )
		{	

		
		
	
			if(j < absent.length && i==a)
			{
				j++;
				i++;	
				if(j==absent.length)
					j=j-1;

				a=Integer.parseInt(absent[j]);
			
			
			}	
			else
			{
				k=Integer.toString(i);
				String up="UPDATE `te4` SET OSD = OSD + 1 WHERE `ROLL` = "+i;

				Statement stmt = con.createStatement();
				stmt.executeUpdate(up);
				i++;
			}
				
		}
	}
}

else if(subject.equals("DCWSN"))
{
	if(absent != null)
	{
	

	
		int j=0;
		int a=Integer.parseInt(absent[j]);
		for(int i=3401; i <= 3411; )
		{	

		
		
	
			if(j < absent.length && i==a)
			{
				j++;
				i++;	
				if(j==absent.length)
					j=j-1;

				a=Integer.parseInt(absent[j]);
			
			
			}	
			else
			{
				k=Integer.toString(i);
				String up="UPDATE `te4` SET DCWSN = DCWSN + 1 WHERE `ROLL` = "+i;

				Statement stmt = con.createStatement();
				stmt.executeUpdate(up);
				i++;
			}
				
		}
	}
}


else if(subject.equals("DMSA"))
{
	if(absent != null)
	{
	

	
		int j=0;
		int a=Integer.parseInt(absent[j]);
		for(int i=3401; i <= 3411; )
		{	

		
		
	
			if(j < absent.length && i==a)
			{
				j++;
				i++;	
				if(j==absent.length)
					j=j-1;

				a=Integer.parseInt(absent[j]);
			
			
			}	
			else
			{
				k=Integer.toString(i);
				String up="UPDATE `te4` SET DMSA = DMSA + 1 WHERE `ROLL` = "+i;

				Statement stmt = con.createStatement();
				stmt.executeUpdate(up);
				i++;
			}
				
		}
	}
}
	 
%>

</body>
</html>
