<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculator</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="calculator">
        <input type="text" id="display" disabled="true" class="display" />

        <div class="buttons">
            <button class="button" onclick="appendNumber(7)">7</button>
            <button class="button" onclick="appendNumber(8)">8</button>
            <button class="button" onclick="appendNumber(9)">9</button>
            <button class="button" onclick="appendOperator('+')">+</button>
            
            <button class="button" onclick="appendNumber(4)">4</button>
            <button class="button" onclick="appendNumber(5)">5</button>
            <button class="button" onclick="appendNumber(6)">6</button>
            <button class="button" onclick="appendOperator('-')">-</button>
            
            <button class="button" onclick="appendNumber(1)">1</button>
            <button class="button" onclick="appendNumber(2)">2</button>
            <button class="button" onclick="appendNumber(3)">3</button>
            <button class="button" onclick="appendOperator('*')">*</button>
            
            <button class="button" onclick="appendNumber(0)">0</button>
            <button class="button" onclick="clearDisplay()">C</button>
            <button class="button" onclick="calculate()">=</button>
            <button class="button" onclick="appendOperator('/')">/</button>
        </div>
    </div>

    <script src="calculator.js"></script>
</body>
</html>
