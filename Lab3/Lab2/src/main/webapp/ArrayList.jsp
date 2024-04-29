<%-- 
    Document   : ArrayList
    Created on : Apr 17, 2024, 11:44:05 PM
    Author     : HUSNA ZAHIRA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Use Java ArrayList</title>
    </head>
    <body>
        <h1>Use JSP Page Directive</h1>
        <%
            ArrayList<String> studentList = new ArrayList<String>();
            studentList.add(0, "Mohamad Azam");
            studentList.add(1, "Peter Chong");
            studentList.add(2, "Rahimah Mansor");
            studentList.add(3, "Sri Devi");
            studentList.add(4, "Ng Hue Ween");
            studentList.add(5, "S. Nagarajan");
            
            out.println("<p>The number of records in ArrayList are " + studentList.size() + "</p>");
            
            for(int i=0; i < studentList.size(); i++)
                out.println("<p>Record " + (i + 1) + " is " + studentList.get(i) + "</p>");
        %>
    </body>
    <br/>
    <footer>&copy2024-HUSNA ZAHIRA</footer>
</html>
