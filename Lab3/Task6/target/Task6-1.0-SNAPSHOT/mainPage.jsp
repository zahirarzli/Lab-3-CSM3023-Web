<%-- 
    Document   : mainPage
    Created on : Apr 29, 2024, 4:16:29 PM
    Author     : HUSNA ZAHIRA S67554
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .red-text{
                color: red;
            }
            .column{
                width: auto;
                padding: 1px;
                box-sizing: border-box;
                text-align: left;
            }
            .row::after{
                content: "";
                clear: both;
                display: table;
            }
            .header-row, .footer-row{
                background-color: orange;
                text-align: right;
            }
        </style>
    </head>
    <body>
        
        <div class="row header-row">
            <div class="column">
                <%@include file="headerPage.jsp" %>
            </div>
        </div>
            
            <div class="row">
                <div class="column">
                    <p class="red-text">Java Server Page (JSP) is a technology for controlling the content <br>
                        or appearance of web pages through the use of servlets, small <br>
                        programs that are specified in the Web page and run on the Web server <br>
                        to modify the Web page before it is sent to the user who requested it.</p>
                </div>
            </div>
            
            <div class="row footer-row">
                <div class="column">
                    <%@include file="footerPage.jsp" %>
                </div>
            </div>

    </body>
</html>
