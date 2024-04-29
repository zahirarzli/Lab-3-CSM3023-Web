<%-- 
    Document   : processCalculateCarLoan
    Created on : Apr 17, 2024, 10:06:03 PM
    Author     : HUSNA ZAHIRA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loan Application Form</title>
    </head>
    <body>
        <h1>Perform Car Loan Calculation</h1>
        
        <%
            int amount = Integer.parseInt(request.getParameter("amount"));
            int period = Integer.parseInt(request.getParameter("period"));
            
            double annualInterestRate = (period < 5) ? 0.028 : 0.045;
            double monthlyInterestRate = annualInterestRate / 12;
            int numberOfPayments = period * 12;
            double monthlyPayment = (amount * monthlyInterestRate * Math.pow(1 + monthlyInterestRate, numberOfPayments) - 1);
            double totalLoan = monthlyPayment * numberOfPayments;
        %>
        
        <form>
            <fieldset>
                <h3>Details of Car Loan:</h3>
                <p>Loan Request: <%= amount %></p>
                <p>Period of payment: <%= period %></p>
                <p>Total Loan (+ interest):  <%= String.format("%.2f", totalLoan) %></p>
            </fieldset>
        </form>
    </body>
</html>
