<%-- 
    Document   : memberProcessing
    Created on : Apr 17, 2024, 2:45:37 PM
    Author     : HUSNA ZAHIRA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 - Task 6</title>
    </head>
    <body>
        <h1>Passing data from main JSP's page to other JSP's page</h1>
        <fieldset>
            <%
                //define variables
                String myIC = null;
                String myName = null;
                
                //use request.getParameter() method to retrieve data
                myIC = request.getParameter("my_icno");
                myName = request.getParameter("my_name");
                
            %>
            
            <p>Thank you for registering in this event..!</p>
            <p>This is your details;</p>
            <p>IC No : <%=myIC%></p>
            <p>Name : <%=myName%></p>
        </fieldset>
    </body>
</html>
