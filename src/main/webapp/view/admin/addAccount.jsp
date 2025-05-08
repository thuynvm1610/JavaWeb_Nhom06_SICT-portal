<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Thêm tài khoản</title>
	</head>
	<body>
		<h2>Thêm tài khoản mới</h2>
		<c:if test="${not empty message}">
			<div style="color: red;">${message}</div>
		</c:if>
		<form method="post" action="${pageContext.request.contextPath}/admin">
			<input type="hidden" name="action" value="addAccount"/>

			<input type="text" name="accountID" placeholder="Mã tài khoản" value="${account.accountID}" required/><br><br>

			<input type="text" name="username" placeholder="Tên tài khoản" value="${account.username}" required/><br><br>

			<input type="text" name="password" placeholder="Mật khẩu" value="${account.password}" required/><br><br>
			
			<label for="role">Quyền đăng nhập:</label><br>
			<select name="role" onchange="toggleStudentID()">
			    <option value=student ${account.role == 'student' ? 'selected' : ''}>Student</option>
			    <option value="admin" ${account.role == 'admin' ? 'selected' : ''}>Admin</option>
			</select><br><br>
			
			<input type="text" name="studentID" placeholder="Mã SV" value="${account.studentID}"/><br><br>

			<button type="submit">Thêm</button>
			<a href="${pageContext.request.contextPath}/admin?action=classroomList">Huỷ</a>
		</form>
	</body>
</html>
