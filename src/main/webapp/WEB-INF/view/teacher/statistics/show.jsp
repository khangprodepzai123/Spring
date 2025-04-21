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
                            <div class="mt-5">
                                <div class="row">
                                    <div class="col-12 mx-auto">
                                        <div class="d-flex justify-content-between">
                                            <h3>Table users</h3>
                                        </div>
                                        <hr />
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-hover">
                                                <thead class="table-dark">
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">Question</th>
                                                        <th scope="col">Link</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Điểm trung bình mỗi bài thi và số lượng người đã
                                                            làm bài đó.</td>
                                                        <td><a href="/question/1"
                                                                class="btn btn-primary btn-sm">View</a></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Question 2</td>
                                                        <td><a href="/question/2"
                                                                class="btn btn-primary btn-sm">View</a></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td>Question 3</td>
                                                        <td><a href="/question/3"
                                                                class="btn btn-primary btn-sm">View</a></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">4</th>
                                                        <td>Question 4</td>
                                                        <td><a href="/question/4"
                                                                class="btn btn-primary btn-sm">View</a></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">5</th>
                                                        <td>Question 5</td>
                                                        <td><a href="/question/5"
                                                                class="btn btn-primary btn-sm">View</a></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">6</th>
                                                        <td>Question 6</td>
                                                        <td><a href="/question/6"
                                                                class="btn btn-primary btn-sm">View</a></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">7</th>
                                                        <td>Question 7</td>
                                                        <td><a href="/question/7"
                                                                class="btn btn-primary btn-sm">View</a></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">8</th>
                                                        <td>Question 8</td>
                                                        <td><a href="/question/8"
                                                                class="btn btn-primary btn-sm">View</a></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">9</th>
                                                        <td>Question 9</td>
                                                        <td><a href="/question/9"
                                                                class="btn btn-primary btn-sm">View</a></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">10</th>
                                                        <td>Question 10</td>
                                                        <td><a href="/question/10"
                                                                class="btn btn-primary btn-sm">View</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
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