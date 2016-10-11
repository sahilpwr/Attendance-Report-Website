<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String username=request.getParameter("username");
        String password=request.getParameter("password");
       	String subject=request.getParameter("sub");

        if((username.equals("admin") && password.equals("admin")))
            {
            session.setAttribute("sub",subject);
            response.sendRedirect("Home.jsp");
            }
	else if((username.equals("admin") && password.equals("admin")))
	{
		response.sendRedirect("login.jsp");
		
	}
        else
            response.sendRedirect("Error.jsp");
        %>
    </body>
</html>




