<%-- 
    Document   : Fahrenheit
    Created on : Apr 29, 2024, 9:54:46 PM
    Author     : HUSNA ZAHIRA S67554
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Convert temperature to Fahrenheit temperatures and via verse</h2>
        <form action="" method="post">
            <label for="temp">Enter Temperature:</label>
            <input type="number" id="temp" name="temperature" required>
            <select name="conversionType" id="conversionType">
                <option value="CtoF">Celsius to Fahrenheit</option>
                <option value="FtoC">Fahrenheit to Celsius</option>
            </select>
            <button type="submit">Convert</button>
        </form>
        
        <%
            if(request.getMethod().equals("POST")){
            double temperature = Double.parseDouble(request.getParameter("temperature"));
            String conversionType = request.getParameter("conversionType");
            double result;
            if(conversionType.equals("CtoF")){
            result = (9.0/5.0) * temperature + 32;
            out.println("<p>" + temperature + " Celcius is equal to " + result + "Fahrenheit</p>");
            } else{
                result = (5.0/9.0) * (temperature - 32);
                out.println("<p>" + temperature + " Fahrenheit is equal to " + result + " Celsius</p>");
            }
        }
    %>
        
    </body>
</html>
