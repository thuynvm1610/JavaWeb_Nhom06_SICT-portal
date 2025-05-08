<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Danh sách lớp học</title>
		<style>
			table {
				border-collapse: collapse;
				width: 50%;
			}
			
			th, td {
				border: 1px solid black;
				padding: 5px;
				text-align: left;
			}
			
			th {
				background-color: #f2f2f2;
			}
		</style>
	</head>
	<body>
		<h2>Danh sách tài khoản</h2>
		<!-- Hiển thị thông báo nếu có -->
		<c:if test="${not empty message}">
			<div style="color: red;">${message}</div>
		</c:if>
		<!-- Form tìm kiếm -->
		<form method="get" action="admin">
			<input type="hidden" name="action" value="searchAccount" /> 
			<input type="text" name="accountID" placeholder="Nhập mã tài khoản..." />
			<button type="submit">Tìm kiếm</button>
		</form>
		<!-- Nút thêm mới -->
		<form method="get" action="admin">
			<input type="hidden" name="action" value="addAccountForm" /> 
			<button type="submit">Thêm tài khoản</button>
		</form>
		<!-- Bảng hiển thị tải khoản -->
		<table>
			<thead>
				<tr>
					<th>Mã tài khoản</th>
					<th>Tên tài khoản</th>
					<th>Mật khẩu</th>
					<th>Quyền đăng nhập</th>
					<th>Mã SV</th>
					<th>Thao tác</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="a" items="${accountList}">
					<tr>
						<td>${a.accountID}</td>
						<td>${a.username}</td>
						<td>${a.password}</td>
						<td>${a.role}</td>
						<td>${a.studentID}</td>
						<td>
							<div style="display: flex; gap: 5px;">
								<form method="get" action="admin">
									<input type="hidden" name="action" value="updateAccountForm"/>
									<input type="hidden" name="accountID" value="${a.accountID}"/>
									<button type="submit">Sửa</button>
								</form>
								<form method="post" action="admin">
									<input type="hidden" name="action" value="deleteAccount"/>
									<input type="hidden" name="accountID" value="${a.accountID}"/>
									<button type="submit" onclick="return confirm('Bạn có chắc muốn xóa sinh viên này?');">Xóa</button>
								</form>
							</div>
                        </td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>
