<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 
<!-- %=request.getAttribute("list") % -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <table>
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>published date</th>
        </tr>
 
    <!-- 
 	public String title;
	public String author;
	public Date published_date;
     -->
        <c:forEach var="book" items="${list}">
            <tr>
                <td><p>${book.title}</p></td>
                <td><p>${book.author}</p></td>               
                <td><p>${book.published_Date}</p></td>                 
            </tr>
        </c:forEach>
    </table>
</body>
</html>