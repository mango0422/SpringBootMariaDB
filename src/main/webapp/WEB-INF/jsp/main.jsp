<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MAIN PAGE</title>
</head>
<body>
    <h1>Books(SpringBoot + MariaDB, MyBatis)</h1>
    <table>
    <tr>
    <th>name</th>
    <th>property</th>
    <th>length</th>
    </tr>    
    <tr> <td> title </td><td> string </td><td>80</td> </tr>
    <tr> <td> author </td><td> string </td><td>40</td> </tr>
    <tr> <td> published_date </td><td> Date </td><td>yyyy-MM-dd</td> </tr>
    </table>
</body>
</html>