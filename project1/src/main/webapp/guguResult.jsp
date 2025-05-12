<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>구구단 결과</title>
</head>
<body>
    <h2>선택한 구구단 결과</h2>
<%
    String danStr = request.getParameter("dan");
    try {
        int dan = Integer.parseInt(danStr);
        if (dan >= 2 && dan <= 9) {
%>
        <h3><%= dan %>단</h3>
        <ul>
        <%
            for (int i = 1; i <= 9; i++) {
        %>
            <li><%= dan %> × <%= i %> = <%= dan * i %></li>
        <%
            }
        %>
        </ul>
<%
        } else {
%>
        <p>2단부터 9단 사이의 숫자만 선택하세요.</p>
<%
        }
    } catch (NumberFormatException e) {
%>
    <p>숫자를 선택하세요.</p>
<%
    }
%>
    <a href="guguForm.jsp">다시 선택하기</a>
</body>
</html>
