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
                <link href="/css/client/css/contest.css" rel="stylesheet" />
                <!-- <link href="/css/admin/css/dash.css" rel="stylesheet" /> -->
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
                <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">

                <!-- <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script> -->

            </head>

            <body>
                <!-- Thanh điều hướng -->
                <jsp:include page="/WEB-INF/view/client/layout/header.jsp" />

                <!-- Thanh điều hướng -->



                <!-- Nội dung chính -->

                <main>
                    <div class="container-fluid px-4" id="content-container">
                        <section class="hero">
                            <img src="images/client/images/k3.jpg" alt="Illustration for 3K Contest" class="hero-image">
                        </section>
                        <section class="intro">
                            <h1>3K Contest</h1>
                            <p>Contest every week. Complete and see your ranking!</p>
                        </section>
                        <section class="featured-contests">
                            <div class="contest-card contest-card-08" data-contest-id="contest-1">
                                <img alt="Illustration representing Weekly Contest #1" class="contest-image"
                                    src="images/client/images/c2.jpg">
                                <div class="contest-info">
                                    <h2>Weekly Contest #1</h2>
                                    <p>Chủ nhật 9:30 AM</p>
                                </div>
                            </div>
                            <div class="contest-card contest-card-08" data-contest-id="contest-2">
                                <img alt="Illustration representing Weekly Contest #2" class="contest-image"
                                    src="images/client/images/c1.jpg">
                                <div class="contest-info">
                                    <h2>Weekly Contest #2</h2>
                                    <p>Chủ nhật 17:30 PM</p>
                                </div>
                            </div>
                        </section>
                        </ol>
                        <section class="contests-ranking">
                            <div class="contest-list">
                                <ul>
                                    <li>
                                        <div class="contest-item contest-item-08" data-contest-id="contest-3">
                                            <img alt="Illustration representing Weekly Contest #3"
                                                class="contest-thumbnail" src="images/client/images/c1.jpg">
                                            <div class="contest-details">
                                                <h3>Weekly Contest #3</h3>
                                                <p>21/04/2025 13:30 PM</p>
                                            </div>
                                        </div>
                                        <button class="register-button"><a href="/contests/CT003">Đăng ký</a></button>
                                    </li>
                                    <li>
                                        <div class="contest-item contest-item-08" data-contest-id="contest-4">
                                            <img alt="Illustration representing Weekly Contest #4"
                                                class="contest-thumbnail" src="images/client/images/c1.jpg">
                                            <div class="contest-details">
                                                <h3>Weekly Contest #4</h3>
                                                <p>23/04/2025 13:30 PM</p>
                                            </div>
                                        </div>
                                        <button class="register-button"><a href="/contests/CT004">Đăng ký</a></button>
                                    </li>
                                    <li>
                                        <div class="contest-item contest-item-08" data-contest-id="contest-5">
                                            <img alt="Illustration representing Weekly Contest #5"
                                                class="contest-thumbnail" src="images/client/images/c1.jpg">
                                            <div class="contest-details">
                                                <h3>Weekly Contest #5</h3>
                                                <p>25/04/2025 13:30 PM</p>
                                            </div>
                                        </div>
                                        <button class="register-button"><a href="/contests/CT005">Đăng ký</a></button>
                                    </li>
                                    <li>
                                        <div class="contest-item contest-item-08" data-contest-id="contest-6">
                                            <img alt="Illustration representing Weekly Contest #6"
                                                class="contest-thumbnail" src="images/client/images/c1.jpg">
                                            <div class="contest-details">
                                                <h3>Weekly Contest #6</h3>
                                                <p>27/04/2025 7:30 AM</p>
                                            </div>
                                        </div>
                                        <button class="register-button"><a href="/contests/CT006">Đăng ký</a></button>
                                    </li>
                                    <li>
                                        <div class="contest-item contest-item-08" data-contest-id="contest-7">
                                            <img alt="Illustration representing Weekly Contest #7"
                                                class="contest-thumbnail" src="images/client/images/c1.jpg">
                                            <div class="contest-details">
                                                <h3>Weekly Contest #7</h3>
                                                <p>29/04/2025 13:30 PM</p>
                                            </div>
                                        </div>
                                        <button class="register-button"><a href="/contests/CT007">Đăng ký</a></button>
                                    </li>
                                    <li>
                                        <div class="contest-item contest-item-08" data-contest-id="contest-8">
                                            <img alt="Illustration representing Weekly Contest #8"
                                                class="contest-thumbnail" src="images/client/images/c1.jpg">
                                            <div class="contest-details">
                                                <h3>Weekly Contest #8</h3>
                                                <p>05/05/2025 13:30 PM</p>
                                            </div>
                                        </div>
                                        <button class="register-button"><a href="/contests/CT008">Đăng ký</a></button>
                                    </li>
                                </ul>
                            </div>
                            <aside class="ranking">
                                <h2>
                                    <i class="fas fa-crown"></i>
                                    <span>Ranking</span>
                                </h2>
                                <ol>
                                    <li class="top-rank">
                                        <span>Nguyễn Quốc Gia Khang</span>
                                        <div class="rank-details">
                                            Rating: <span>4000</span> Attended: <span>100</span>
                                        </div>
                                    </li>
                                    <li class="top-rank">
                                        <span>Cải Trần Đăng Khôi</span>
                                        <div class="rank-details">
                                            Rating: <span>3500</span> Attended: <span>100</span>
                                        </div>
                                    </li>
                                    <li class="top-rank">
                                        <span>Nguyễn Quốc Khánh</span>
                                        <div class="rank-details">
                                            Rating: <span>3000</span> Attended: <span>100</span>
                                        </div>
                                    </li>
                                    <li>
                                        <span>Phan Sĩ Thành</span>
                                        <div class="rank-details">
                                            Rating: <span>2700</span> Attended: <span>100</span>
                                        </div>
                                    </li>
                                    <li>
                                        <span>Hữu Trọng</span>
                                        <div class="rank-details">
                                            Rating: <span>2500</span> Attended: <span>100</span>
                                        </div>
                                    </li>
                                    <li>
                                        <span>Huỳnh Thanh Trình</span>
                                        <div class="rank-details">
                                            Rating: <span>2400</span> Attended: <span>100</span>
                                        </div>
                                    </li>
                                    <li>
                                        <span>Phạm Minh Quang</span>
                                        <div class="rank-details">
                                            Rating: <span>2300</span> Attended: <span>100</span>
                                        </div>
                                    </li>
                                    <li>
                                        <span>Khiêm Nguyễn</span>
                                        <div class="rank-details">
                                            Rating: <span>2200</span> Attended: <span>100</span>
                                        </div>
                                    </li>
                                </ol>
                            </aside>
                        </section>
                    </div>
                </main>


                <!-- Footer mới -->

                <jsp:include page="/WEB-INF/view/client/layout/footer.jsp" />
                <!-- Footer mới -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/admin/js/scripts.js"></script>
                <script src="/js/client/js/contest.js"></script>



            </body>

            </html>