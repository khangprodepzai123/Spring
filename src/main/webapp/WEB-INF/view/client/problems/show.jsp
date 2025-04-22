<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="vi">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Fit NTU 2.0</title>


                <!-- <link rel="stylesheet" href="/css/client/css/fit.css"> -->
                <script src="/js/client/js/fit.js"></script>

                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link
                    href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap"
                    rel="stylesheet">
                <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
                <!-- <link href="/css/admin/css/dash.css" rel="stylesheet" /> -->
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
                    rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
                <link href="/css/client/css/problems.css" rel="stylesheet" />

                <!-- <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script> -->

            </head>

            <body>
                <!-- Thanh điều hướng -->
                <jsp:include page="/WEB-INF/view/client/layout/header.jsp" />

                <!-- Thanh điều hướng -->



                <!-- Nội dung chính -->

                <main>
                    <!-- Decorative shapes top-left -->
                    <img alt="Decorative diamond shape with green and black colors" class="deco-diamond-left"
                        src="images/client/images/c1.png">
                    <img alt="Decorative square shape with yellow and black colors" class="deco-square-left"
                        src="images/client/images/c2.png">
                    <!-- Decorative shapes top-right -->
                    <img alt="Decorative triangle shape with yellow and black colors" class="deco-triangle-right"
                        src="images/client/images/c2.png">
                    <img alt="Decorative diagonal lines shape with black color" class="deco-lines-right"
                        src="images/client/images/c2.png">
                    <section class="intro">
                        <img alt="Illustration of a man with brown hair and beard working on a laptop with a blue background circle"
                            class="intro-image" src="images/client/images/k1.png">
                        <div class="intro-text">
                            <h1>Khám phá các bài code trên 3K</h1>
                            <p>Mở khóa nhiều bài tập hơn khi bạn tiến bộ trong quá trình luyện tập</p>
                        </div>
                    </section>
                    <!-- Search input -->
                    <form class="search-form">
                        <input type="search" placeholder="Tìm theo tên bài code">
                        <i class="fas fa-search"></i>
                    </form>
                    <div class="container-fluid px-4">
                        <!-- <h1 class="mt-4">Manage Problems</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                            <li class="breadcrumb-item active">Problems</li>
                        </ol> -->
                        <div class="mt-5">
                            <div class="row">
                                <div class="col-12 mx-auto">

                                    <table class=" table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Title</th>
                                                <th>Category</th>
                                                <th>Difficulity</th>


                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="problem" items="${problems1}">

                                                <tr>
                                                    <!-- <th>${problem.id}</th> -->
                                                    <td><a href="/problems/${problem.id}">${problem.id}</a></td>
                                                    <td>${problem.title}</td>
                                                    <td>${problem.category}</td>
                                                    <td>${problem.difficulity}</td>



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