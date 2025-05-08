<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Thêm giáo viên</title>
	</head>
	<body>
		<h2>Thêm giáo viên mới</h2>
		<c:if test="${not empty message}">
			<div style="color: red;">${message}</div>
		</c:if>
		<form method="post" action="${pageContext.request.contextPath}/admin">
			<input type="hidden" name="action" value="addTeacher"/>

			<input type="text" name="teacherID" placeholder="Mã GV" value="${teacher.teacherID}" required/><br><br>

			<input type="text" name="name" placeholder="Họ tên" value="${teacher.name}" required/><br><br>

			<label for="gender">Giới tính:</label><br> 
			<select name="gender">
			    <option value="Nam" ${teacher.gender == 'Nam' ? 'selected' : ''}>Nam</option>
			    <option value="Nữ" ${teacher.gender == 'Nữ' ? 'selected' : ''}>Nữ</option>
			</select><br><br>

			<label for="gender">Ngày sinh:</label><br> 
			<input type="date" name="dob" placeholder="Ngày sinh" value="${teacher.dob}" required/><br><br>

			<input type="email" name="email" placeholder="Email" value="${teacher.email}" required/><br><br>

			<button type="submit">Thêm</button>
			<a href="${pageContext.request.contextPath}/admin?action=teacherList">Huỷ</a>
		</form>
	</body>
</html>
