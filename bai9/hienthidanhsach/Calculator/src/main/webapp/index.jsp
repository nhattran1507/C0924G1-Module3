<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h2>Calculator Application</h2>
<form action="CalculatorServlet" method="post">
    <%--@declare id="num1"--%><%--@declare id="num2"--%><%--@declare id="operation"--%><label for="num1">Number 1:</label>
    <input type="number" name="num1" required>
    <br><br>
    <label for="num2">Number 2:</label>
    <input type="number" name="num2" required>
    <br><br>
    <label for="operation">Operation:</label>
    <select name="operation">
        <option value="add">Add (+)</option>
        <option value="subtract">Subtract (-)</option>
        <option value="multiply">Multiply (*)</option>
        <option value="divide">Divide (/)</option>
    </select>
    <br><br>
    <button type="submit">Calculate</button>
</form>
</body>
</html>
