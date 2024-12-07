<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String quizId = request.getParameter("quizId");
        String[] correctAnswers = null;

        if ("1".equals(quizId)) {
            correctAnswers = new String[] {
                "4 bytes", "class", "false", "start()", "20"
            };
        } else if ("2".equals(quizId)) {
            correctAnswers = new String[] {
                "Number of characters printed", "int *ptr;", "<stdio.h>", "bool", "Memory size in bytes"
            };
        }

        int score = 0;
        for (int i = 0; i < correctAnswers.length; i++) {
            String selectedAnswer = request.getParameter("q" + (i + 1));
            if (selectedAnswer != null && selectedAnswer.equals(correctAnswers[i])) {
                score++;
            }
        }

        out.println("<div class='score'>Your Score: " + score + " / " + correctAnswers.length + "</div>");
    }
%>
