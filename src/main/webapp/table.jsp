<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<% pageContext.setAttribute("newLineChar", "\n"); %>
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:import url="Sample_en.csv" var="data"/>

<c:set var="rows" value="${fn:split(data, newLineChar)}" />

<table border="1">
<c:forEach var="row" items="${rows}">
	<tr>
	<c:set var="cells" value="${fn:split(row,',')}" />
	<c:forEach var="cell" items="${cells}">
	<td><c:out value="${cell}"></c:out></td>
	</c:forEach>
	</tr>
</c:forEach>
</table>

</body>
</html>