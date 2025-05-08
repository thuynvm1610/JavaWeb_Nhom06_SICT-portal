<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Chỉnh sửa lớp học</title>
	</head>
	<body>
		<h2>Chỉnh sửa thông tin lớp học</h2>
		<c:if test="${not empty message}">
			<div style="color: red;">${message}</div>
		</c:if>
		<form action="admin" method="post">
			<input type="hidden" name="action" value="updateClassroom" required/>
			<input type="hidden" name="classroomID" value="${classroom.classroomID}"/>
		
			<label>Tên lớp:</label>
			<input type="text" name="name" value="${classroom.name}" required/><br/>
		
			<label>Mã GV:</label>
			<input type="text" name="teacherID" value="${classroom.teacherID}" required/><br/>
		
			<button type="submit">Cập nhật</button>
		</form>
	</body>
</html>
