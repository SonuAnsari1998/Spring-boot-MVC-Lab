<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.nit.model.ProductModel"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List<ProductModel> list=(List<ProductModel>)request.getAttribute("list");
	for(ProductModel p:list){
		out.println(p);
	}
	%>
</body>
</html>