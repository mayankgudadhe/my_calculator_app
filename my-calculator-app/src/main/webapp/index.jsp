<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
    <h2>Welcome to the Calculator</h2>
    <form action="CalculatorServlet" method="GET">
        <label for="num1">Enter first number:</label>
        <input type="text" id="num1" name="num1"><br><br>
        <label for="num2">Enter second number:</label>
        <input type="text" id="num2" name="num2"><br><br>
        <label for="operation">Select operation:</label>
        <select id="operation" name="operation">
            <option value="add">Add</option>
            <option value="subtract">Subtract</option>
            <option value="multiply">Multiply</option>
            <option value="divide">Divide</option>
        </select><br><br>
        <input type="submit" value="Calculate">
    </form>
</body>
</html>
