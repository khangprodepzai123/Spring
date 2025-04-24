<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="vi">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Fit NTU 2.0</title>


                <link rel="stylesheet" href="/css/client/css/fit.css">
                <script src="/js/client/js/fit.js"></script>

                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link
                    href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap"
                    rel="stylesheet">
                <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
                <link href="/css/admin/css/dash.css" rel="stylesheet" />
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
                    rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
                <link href="/css/client/css/rank.css" rel="stylesheet" />
                <!-- <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script> -->

            </head>

            <body>
                <!-- Thanh điều hướng -->
                <jsp:include page="/WEB-INF/view/client/layout/header.jsp" />

                <!-- Thanh điều hướng -->



                <!-- Nội dung chính -->

                <main>
                    <div class="leaderboard-header">
                        <img alt="Golden trophy held by two hands with orange ribbon flowing around" class="trophy"
                            src="images/client/images/cup.png" width="150" height="150">
                        <h1>LeaderBoard</h1>

                    </div>
                    <div class="search-container">
                        <div class="search-wrapper">
                            <input type="search" placeholder="Tìm tên người dùng">
                            <i class="fas fa-search"></i>
                        </div>
                    </div>
                    <div class="container-fluid px-4">



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


                <!-- Footer mới -->

                <jsp:include page="/WEB-INF/view/client/layout/footer.jsp" />
                <!-- Footer mới -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/admin/js/scripts.js"></script>


            </body>

            </html>