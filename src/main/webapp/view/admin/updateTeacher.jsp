<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Chỉnh sửa giáo viên</title>
	</head>
	<body>
		<h2>Chỉnh sửa thông tin giáo viên</h2>
		<c:if test="${not empty message}">
			<div style="color: red;">${message}</div>
		</c:if>
		<form action="admin" method="post">
			<input type="hidden" name="action" value="updateTeacher" />
			<input type="hidden" name="teacherID" value="${teacher.teacherID}"/>
		
			<label>Họ tên:</label>
			<input type="text" name="name" value="${teacher.name}" required/><br/>
		
			<label>Giới tính:</label>
			<select name="gender">
				<option value="Nam" ${teacher.gender == 'Nam' ? 'selected' : ''}>Nam</option>
			    <option value="Nữ" ${teacher.gender == 'Nữ' ? 'selected' : ''}>Nữ</option>
			</select><br/>
		
			<label>Ngày sinh:</label>
			<input type="date" name="dob" value="${teacher.dob}" required/><br/>
		
			<label>Email:</label>
			<input type="email" name="email" value="${teacher.email}" required/><br/>
		
			<button type="submit">Cập nhật</button>
		</form>
	</body>
</html>
