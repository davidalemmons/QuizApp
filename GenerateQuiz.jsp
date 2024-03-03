<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Addition Quiz</title>
</head>
<body>
<%-- Generate random addition questions --%>
<%
    Random random = new Random();
    int numberOfQuestions = 5; // Change this for more or fewer questions
%>
<form action="submitQuiz.jsp" method="post">
    <% for (int i = 0; i < numberOfQuestions; i++) {
        int number1 = random.nextInt(10); // Generates a number between 0-9
        int number2 = random.nextInt(10); // Generates another number between 0-9
    %>
        <p><%= number1 %> + <%= number2 %> = <input type="text" name="answer<%= i %>" />
            <input type="hidden" name="question<%= i %>" value="<%= number1 + "_" + number2 %>" /></p>
    <% } %>
    <input type="submit" value="Submit" />
</form>
</body>
</html>
