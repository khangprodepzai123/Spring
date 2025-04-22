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
                            src="images/client/images/pngegg.png" width="150" height="150">
                        <h1>LeaderBoard</h1>

                    </div>
                    <div class="search-container">
                        <div class="search-wrapper">
                            <input type="search" placeholder="Tìm tên người dùng">
                            <i class="fas fa-search"></i>
                        </div>
                    </div>
                    <div class="container-fluid px-4">

                        <div class="mt-5">
                            <div class="row">
                                <div class="col-12 mx-auto">
                                    <div class="d-flex justify-content-between">
                                        <h3>Table users</h3>

                                    </div>

                                    <hr />
                                    <table class=" table table-bordered table-hover ">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Email</th>
                                                <th>Full Name</th>

                                                <th>Score</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="user" items="${users1}">

                                                <tr>
                                                    <th>${user.id}</th>
                                                    <td>${user.email}</td>
                                                    <td>${user.fullName}</td>

                                                    <td>${user.sobaicode}</td>


                                                </tr>

                                            </c:forEach>

                                        </tbody>
                                    </table>
                                </div>

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