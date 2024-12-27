<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator Result</title>
</head>
<body>
<h2>Calculation Result</h2>
<%
    String result = (String) request.getAttribute("result");
    String error = (String) request.getAttribute("error");

    if (error != null) {
%>
<p style="color: red;"><%= error %></p>
<%
} else {
%>
<p>Result: <%= result %></p>
<%
    }
%>
<br>
<a href="index.jsp">Back to Calculator</a>
</body>
</html>
