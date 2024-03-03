<%@ page import="java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quiz Results</title>
</head>
<body>
<%
    int score = 0;
    for (int i = 0; i < 5; i++) { // Assuming 5 questions as before
        String answer = request.getParameter("answer" + i);
        String[] questionParts = request.getParameter("question" + i).split("_");
        int correctAnswer = Integer.parseInt(questionParts[0]) + Integer.parseInt(questionParts[1]);

        if (answer != null && !answer.isEmpty() && Integer.parseInt(answer) == correctAnswer) {
            score++;
            out.println("<p>Question " + (i + 1) + ": Correct!</p>");
        } else {
            out.println("<p>Question " + (i + 1) + ": Wrong!</p>");
        }
    }
    out.println("<p>Your score is: " + score + "/" + 5 + "</p>");
%>
</body>
</html>
