<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>계산 결과</title>
</head>
<body>
<%
    try {
        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));
        String op = request.getParameter("operator");
        double result = 0;

        switch (op) {
            case "+": result = num1 + num2; break;
            case "-": result = num1 - num2; break;
            case "*": result = num1 * num2; break;
            case "/":
                if (num2 != 0) {
                    result = (double) num1 / num2;
                } else {
                    out.println("<p>0으로 나눌 수 없습니다.</p>");
                    return;
                }
                break;
            default:
                out.println("<p>유효하지 않은 연산자입니다.</p>");
                return;
        }
%>
    <h2>계산 결과</h2>
    <p><%= num1 %> <%= op %> <%= num2 %> = <strong><%= result %></strong></p>
<%
    } catch (Exception e) {
%>
    <p>숫자를 제대로 입력하세요.</p>
<%
    }
%>
    <a href="calcForm.jsp">다시 계산하기</a>
</body>
</html>
