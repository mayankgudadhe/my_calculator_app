let currentInput = "";
let operator = "";
let previousInput = "";

function appendNumber(number) {
    currentInput += number;
    document.getElementById("display").value = currentInput;
}

function appendOperator(op) {
    if (currentInput === "") return;
    if (previousInput !== "") {
        calculate();
    }
    operator = op;
    previousInput = currentInput;
    currentInput = "";
}

function clearDisplay() {
    currentInput = "";
    previousInput = "";
    operator = "";
    document.getElementById("display").value = "";
}

function calculate() {
    if (previousInput === "" || currentInput === "") return;
    let result;
    switch (operator) {
        case "+":
            result = parseFloat(previousInput) + parseFloat(currentInput);
            break;
        case "-":
            result = parseFloat(previousInput) - parseFloat(currentInput);
            break;
        case "*":
            result = parseFloat(previousInput) * parseFloat(currentInput);
            break;
        case "/":
            result = parseFloat(previousInput) / parseFloat(currentInput);
            break;
        default:
            return;
    }
    document.getElementById("display").value = result;
    currentInput = result.toString();
    previousInput = "";
    operator = "";
}
