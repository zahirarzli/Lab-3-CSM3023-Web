<%-- 
    Document   : Rectangle
    Created on : Apr 29, 2024, 10:20:31 PM
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
        <h2>Rectangle Area Comparison</h2>
        <form action="" method="post">
            <label for="rect1Length">Rectangle 1 Length:</label>
            <input type="number" id="rect1Length" name="rect1Length" step="0.01" required><br>
            <label for="rect1Width">Rectangle 1 Width:</label>
            <input type="number" id="rect1Width" name="rect1Width" step="0.01" required><br>
            <label for="rect2Length">Rectangle 2 Length:</label>
            <input type="number" id="rect2Length" name="rect2Length" step="0.01" required><br>
            <label for="rect2Width">Rectangle 2 Width:</label>
            <input type="number" id="rect2Width" name="rect2Width" step="0.01" required><br>
            <button type="submit">Compare Areas</button>
        </form>
        
        <%
            if(request.getMethod().equals("POST")){
            double rect1Length = Double.parseDouble(request.getParameter("rect1Length"));
            double rect1Width = Double.parseDouble(request.getParameter("rect1Width"));
            double rect2Length = Double.parseDouble(request.getParameter("rect2Length"));
            double rect2Width = Double.parseDouble(request.getParameter("rect2Width"));
            
            double rect1Area = rect1Length * rect1Width;
            double rect2Area = rect2Length * rect2Width;
            
            out.println("<p>Rectangle 1 Area: " + String.format("%.2f", rect1Area) + "</p>");
            out.println("<p>Rectangle 2 Area: " + String.format("%.2f", rect1Area) + "</p>");
            
            if(rect1Area > rect2Area){
            out.println("<p>Rectangle 1 has a greater area.</p>");
            } else if (rect1Area > rect2Area){
                out.println("<p>Rectangle 1 has a greater area.</p>");
            } else{
                out.println("<p>Both rectangles have the same area.</p>");
            }
        }
        %>
        
    </body>
</html>
