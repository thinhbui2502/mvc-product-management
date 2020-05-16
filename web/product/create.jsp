<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/05/2020
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Thêm sản phẩm mới</title>
    <style>
        .message {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
<h1>Tạo sản phẩm mới</h1>
<p>
    <c:if test='${requestScope["message"]!=null}'>
        <span class="message">${requestScope['message']}</span>
    </c:if>
</p>
<p>
    <a href="/products">Quay lại danh sách sản phẩm</a>
</p>
<form method="post">
    <fieldset>
        <legend>Thong tin</legend>
        <table>
            <tr>
                <td>Tên:</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Giá:</td>
                <td><input type="number" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Mô tả:</td>
                <td><input type="text" name="description" id="description"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Tạo sản phẩm mới"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
