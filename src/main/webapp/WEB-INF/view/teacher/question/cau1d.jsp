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
                                <h2 class="mb-4 text-center">Xếp hạng users theo số bài code</h2>
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped align-middle">
                                        <thead class="table-primary text-center">
                                            <tr>
                                                <th>ID</th>
                                                <th>Họ tên</th>
                                                <th>Email</th>
                                                <th>Số bài code</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="summary" items="${userRankingSummaries}">
                                                <tr>
                                                    <td class="text-center">
                                                        <c:out value="${summary.userId}" />
                                                    </td>
                                                    <td>
                                                        <c:out value="${summary.fullName}" />
                                                    </td>
                                                    <td>
                                                        <c:out value="${summary.email}" />
                                                    </td>
                                                    <td class="text-center">
                                                        <c:out value="${summary.problemCount}" />
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            <c:if test="${empty userRankingSummaries}">
                                                <tr>
                                                    <td colspan="4" class="text-center text-muted">Không có dữ liệu xếp
                                                        hạng.</td>
                                                </tr>
                                            </c:if>
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