<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>합계 결과</title>
</head>
<body>
<%
    try {
        int start = Integer.parseInt(request.getParameter("start"));
        int end = Integer.parseInt(request.getParameter("end"));
        int sum = 0;

        if (start <= end) {
            for (int i = start; i <= end; i++) {
                sum += i;
            }
        } else {
            for (int i = start; i >= end; i--) {
                sum += i;
            }
        }
%>
    <h2>결과</h2>
    <p><%= start %>부터 <%= end %>까지의 합은 <strong><%= sum %></strong>입니다.</p>
<%
    } catch (Exception e) {
%>
    <p>유효한 숫자를 입력하세요.</p>
<%
    }
%>

<a href="sumForm.jsp">다시 계산하기</a>
</body>
</html>
