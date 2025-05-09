<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hệ thống quản lý giáo dục</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .sidebar {
            min-height: 100vh;
            background-color: #343a40;
        }
        .nav-link {
            color: rgba(255, 255, 255, 0.75);
        }
        .nav-link:hover {
            color: white;
            background-color: rgba(255, 255, 255, 0.1);
        }
        .nav-link.active {
            color: white;
            background-color: #007bff;
        }
        .main-content {
            padding: 20px;
        }
        .card-header {
            font-weight: bold;
        }
        .sidebar-btn {
            background: none;
            border: none;
            color: white;
            padding: 10px 15px;
            width: 100%;
            text-align: left;
            font-size: 16px;
            border-radius: 0px;
            color: rgba(255, 255, 255, 0.75);
            display: flex;
            align-items: center;
        }
        .sidebar-btn:hover {
            color: white;
            background-color: rgba(255, 255, 255, 0.1);
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-2 sidebar p-0">
                <div class="text-left p-3 bg-dark">
                    <h4 class="text-white">Hệ thống quản lý</h4>
                </div>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active">
                            <i class="fas fa-tachometer-alt me-2"></i>Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">
                            <i class="fas fa-users me-2"></i>Tài khoản người dùng
                        </a>
                    </li>
                    <li class="nav-item">
                        <form method="get" action="admin">
                            <input type="hidden" name="action" value="studentList">
                            <button type="submit" class="sidebar-btn">
                                <i class="fas fa-user-graduate me-2"></i>
                                Thông tin sinh viên
                            </button>
                        </form>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">
                            <i class="fas fa-chalkboard-teacher me-2"></i>Thông tin giáo viên
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">
                            <i class="fas fa-school me-2"></i>Thông tin lớp học
                        </a>
                    </li>
                    <li class="nav-item mt-3">
                        <a class="nav-link">
                            <i class="fas fa-sign-out-alt me-2"></i>Đăng xuất
                        </a>
                    </li>
                </ul>
            </div>

            <!-- Main content -->
            <div class="col-md-10 main-content">
                <div class="tab-content">
                    <!-- Dashboard Tab -->
                    <div class="dashboard">
                        <h2 class="mb-4">Dashboard</h2>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="card text-white bg-primary mb-3">
                                    <div class="card-body">
                                        <h5 class="card-title">Tài khoản người dùng</h5>
                                        <p class="card-text display-6">1,024</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card text-white bg-success mb-3">
                                    <div class="card-body">
                                        <h5 class="card-title">Sinh viên</h5>
                                        <p class="card-text display-6">850</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card text-white bg-info mb-3">
                                    <div class="card-body">
                                        <h5 class="card-title">Giáo viên</h5>
                                        <p class="card-text display-6">45</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card text-white bg-warning mb-3">
                                    <div class="card-body">
                                        <h5 class="card-title">Lớp học</h5>
                                        <p class="card-text display-6">32</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>