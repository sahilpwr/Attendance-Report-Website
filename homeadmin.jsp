<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="Error.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
    </head>
    <body bgcolor=	"F4A460	">      
        
        <center>
            <h4	>
            <%
              
             out.println("FOR ALL SUBJECTS: ");
		
            %>
	

	    <form action="cr.jsp" method="post">	
	<br>STARTING ROLL NUMBER:<BR><input type="text" name="start"></br>
 	 <br><br>ENDING ROLL NUMBER:<BR><input type="text" name="end">	</br>
	    <br><input type="submit" value="CREATE DATABASE"></br>
	     </form>

           
	    <form action="del.jsp" method="post">
            <br/><input type="submit" value="DELETE DATABASE">
	    </form>
	
            </h2>
            <br/>
            <br/>
            <br/><br/><br/><br/><br/>
        <a href="logout.jsp">Logout</a>
        </center>

    </body>
</html>




