<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
            <meta name="author" content="Hỏi Dân IT" />
            <title>Dashboard - Hỏi Dân IT</title>
            <link href="/css/admin/css/dash.css" rel="stylesheet" />
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        </head>

        <body class="sb-nav-fixed">
            <jsp:include page="../layout/header.jsp" />
            <div id="layoutSidenav">
                <jsp:include page="../layout/sidebar.jsp" />
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">
                            <h1 class="mt-4">Statistics</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item"><a href="/teacher">Dashboard</a></li>
                                <li class="breadcrumb-item active">Problem</li>
                            </ol>
                            <div class="container mt-5">
                                <h2 class="mb-4 text-center">Thống kê kết quả bài code</h2>
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped table-hover">
                                        <thead class="table-dark text-center">
                                            <tr>
                                                <th>ID</th>
                                                <th>Tên bài code</th>
                                                <th>Số lượt đúng</th>
                                                <th>Số lượt sai</th>
                                                <th>Tổng lượt nộp</th>
                                                <th>Tỷ lệ đúng (%)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="summary" items="${problemResultSummaries}">
                                                <tr>
                                                    <td class="text-center">${summary.problemId}</td>
                                                    <td>${summary.problemName}</td>
                                                    <td class="text-center">${summary.correctSubmissions}</td>
                                                    <td class="text-center">${summary.incorrectSubmissions}</td>
                                                    <td class="text-center">${summary.totalSubmissions}</td>
                                                    <td class="text-center">${summary.correctPercentage}</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>


                        </div>
                    </main>
                    <jsp:include page="../layout/footer.jsp" />
                </div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                crossorigin="anonymous"></script>
            <script src="/js/admin/js/scripts.js"></script>
        </body>

        </html>