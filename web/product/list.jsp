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
    <title>Product List</title>
</head>
<body>
<h1>Products List</h1>
<p>
    <a href="/products?action=create">Nhập sản phẩm mới</a>
</p>
<table border="solid 1px">
    <tr>
    <td>Sản phẩm</td>
    <td>Giá SP</td>
    <td>Mô tả</td>
    <td>Sửa</td>
    <td>Xóa</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td><a href="/products?action=edit&id${product.getId()}">edit</a></td>
            <td><a href="/products?action=delete&id${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
