package com.calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class CalculatorServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Simple HTML form for input
        out.println("<html><body>");
        out.println("<h2>Calculator</h2>");
        out.println("<form method='POST'>");
        out.println("Enter first number: <input type='text' name='num1'><br>");
        out.println("Enter second number: <input type='text' name='num2'><br>");
        out.println("Operation: <select name='operation'>");
        out.println("<option value='add'>Add</option>");
        out.println("<option value='subtract'>Subtract</option>");
        out.println("<option value='multiply'>Multiply</option>");
        out.println("<option value='divide'>Divide</option>");
        out.println("</select><br>");
        out.println("<input type='submit' value='Calculate'>");
        out.println("</form>");
        
        String num1 = request.getParameter("num1");
        String num2 = request.getParameter("num2");
        String operation = request.getParameter("operation");
        
        if (num1 != null && num2 != null && operation != null) {
            try {
                double n1 = Double.parseDouble(num1);
                double n2 = Double.parseDouble(num2);
                double result = 0;
                
                switch (operation) {
                    case "add":
                        result = n1 + n2;
                        break;
                    case "subtract":
                        result = n1 - n2;
                        break;
                    case "multiply":
                        result = n1 * n2;
                        break;
                    case "divide":
                        if (n2 != 0) {
                            result = n1 / n2;
                        } else {
                            out.println("<p>Cannot divide by zero!</p>");
                        }
                        break;
                }
                out.println("<p>Result: " + result + "</p>");
            } catch (NumberFormatException e) {
                out.println("<p>Invalid input!</p>");
            }
        }
        
        out.println("</body></html>");
    }
}
