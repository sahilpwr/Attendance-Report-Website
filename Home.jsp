<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="Error.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body bgcolor=	"F4A460	">        
        <br/><br/><br/><br/><br/>
        <center>
            <h2>
            <%
              String sub=session.getAttribute("sub").toString();
             out.println("SUBJECT: "+sub);
		session.setAttribute("subchk",sub);
            %>


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

	 
            <form action="up.jsp" method="post">
             <br/><input type="submit" value="UPDATE ATTENDANCE">
	     </form>

	     <form action="sel.jsp" method="post">
             <br/><input type="submit" value="SELECT ATTENDANCE OF ALL SUBJECTS">
	     </form>

           <form action="sel_l5.jsp" method="post">
             <br/><input type="submit" value="SELECT WHOSE ATTENDANCE IS LESS THAN 5">
	     </form> 

		<form action="sel_g5.jsp" method="post">
             <br/><input type="submit" value="SELECT WHOSE ATTENDANCE IS GREATER THAN 5">
	     </form>

		<form action="sel_all.jsp" method="post">
             <br/><input type="submit" value="SELECT TOTAL ATTENDANCE OF ALL SUBJECTS">
	     </form>
	
	<form action="sel_roll.jsp" method="post">
	<h5>
	<br/>ROLL NO:<input type="text" name="roll">
             <br/><input type="submit" value="SELECT A PARTICULAR STUDENTS ATTENDANCE">
	</h5>
	     </form>

	<form action="sel_min.jsp" method="post">
	<h5>
	<br/>SUBJECT:<input type="text" name="min">
             
	</h5>
         <input type="submit" value="SELECT ROLL NO WITH MINIMUM ATTENDANCE OF A SUBJECT">
	 </form>

	<form action="sel_max.jsp" method="post">
	<h5>
	<br/>SUBJECT:<input type="text" name="max">
             
	</h5>
         <br/><input type="submit" value="SELECT ROLL NO WITH MAXIMUM ATTENDANCE OF A SUBJECT">
	 </form>
	
            </h2>
            <br/>
            <br/>
            <br/><br/><br/><br/><br/>
       
        </center>

    </body>
</html>




