<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
     <body bgcolor=	"F4A460	">     
       
        <center>
	     
            <h2>ATTENDANCE</h2>
            <form action="LoginCheck.jsp" method="post">
            <br/>Username:<input type="text" name="username">
            <br/>Password:<input type="password" name="password">
		<BR>


             <br>
		<select id="sub" name="sub">
		<option value="">SLELCT SUBJECT</option>
 	 	<option value="TOC">TOC</option>
 		 <option value="DMSA">DMSA</option>
 		 <option value="DCWSN">DCWSN</option>
  		<option value="OSD">OSD</option>
		<option value="CFCA">CFCA</option>
		</select> 


            
            <br/>
	<input type="submit" value="Submit">
		
            </form>
        </center>
    </body>
</html>



