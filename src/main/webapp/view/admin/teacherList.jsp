<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Danh sách sinh viên</title>
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
		<h2>Danh sách giáo viên</h2>
		<!-- Hiển thị thông báo nếu có -->
		<c:if test="${not empty message}">
			<div style="color: red;">${message}</div>
		</c:if>
		<!-- Form tìm kiếm -->
		<form method="get" action="admin">
			<input type="hidden" name="action" value="searchTeacher" /> 
			<input type="text" name="teacherID" placeholder="Nhập mã giáo viên..." />
			<button type="submit">Tìm kiếm</button>
		</form>
		<!-- Nút thêm mới -->
		<form method="get" action="admin">
			<input type="hidden" name="action" value="addTeacherForm" /> 
			<button type="submit">Thêm giáo viên</button>
		</form>
		<!-- Bảng hiển thị giáo viên -->
		<table>
			<thead>
				<tr>
					<th>Mã GV</th>
					<th>Họ tên</th>
					<th>Giới tính</th>
					<th>Ngày sinh</th>
					<th>Email</th>
					<th>Thao tác</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="t" items="${teacherList}">
					<tr>
						<td>${t.teacherID}</td>
						<td>${t.name}</td>
						<td>${t.gender}</td>
						<td>${t.dob}</td>
						<td>${t.email}</td>
						<td>
							<div style="display: flex; gap: 5px;">
								<form method="get" action="admin">
									<input type="hidden" name="action" value="updateTeacherForm"/>
									<input type="hidden" name="teacherID" value="${t.teacherID}"/>
									<button type="submit">Sửa</button>
								</form>
								<form method="post" action="admin">
									<input type="hidden" name="action" value="deleteTeacher"/>
									<input type="hidden" name="teacherID" value="${t.teacherID}"/>
									<button type="submit" onclick="return confirm('Bạn có chắc muốn xóa giáo viên này?');">Xóa</button>
								</form>
							</div>
                        </td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>
