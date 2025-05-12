<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>구구단 선택</title>
</head>
<body>
    <h2>구구단 선택</h2>
    <form action="guguResult.jsp" method="post">
        <label for="dan">단 선택:</label>
        <select name="dan" id="dan">
            <%
                for (int i = 2; i <= 9; i++) {
            %>
                <option value="<%= i %>"><%= i %>단</option>
            <%
                }
            %>
        </select>
        <input type="submit" value="출력">
    </form>
</body>
</html>
