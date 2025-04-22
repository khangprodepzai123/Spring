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
                <link rel="stylesheet" href="/css/client/css/home.css">
                <!-- <script src="/js/client/js/fit.js"></script> -->

                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
                    rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap"
                    rel="stylesheet">

                <!-- <link
                    href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap"
                    rel="stylesheet">
                <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
                    rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap"
                    rel="stylesheet"> -->
                <!-- <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script> -->

            </head>

            <body>
                <!-- Thanh điều hướng -->
                <jsp:include page="/WEB-INF/view/client/layout/header.jsp" />

                <!-- Thanh điều hướng -->

                <section class="banner">
                    <h1>Chào mừng đến với NTU Online 2.0</h1>
                    <p>Tham gia giải bài tập, thi đấu và nâng cao kỹ năng lập trình của bạn.</p>
                    <button class="start-button">Bắt đầu ngay</button>
                </section>



                <!-- Nội dung chính -->

                <main>
                    <!-- Programming section -->

                    <section class="programming-section">
                        <div class="programming-text">
                            <h2>Get really good at programming.</h2>
                            <p>Thành thạo ngôn ngữ lập trình mà bạn mong muốn với phương pháp học tập độc đáo kết hợp
                                với thực hành của
                                chúng tôi cực kỳ hiệu quả.</p>
                            <button class="action-button">Bắt đầu nào</button>
                        </div>
                        <div class="programming-image">
                            <img alt="img" src="images/client/images/r1.png">
                        </div>
                    </section>
                    <!-- Latest announcements -->
                    <section class="announcements">
                        <h3>Thông báo mới nhất</h3>
                        <div class="announcement-list">
                            <article>
                                <h4>Cuộc thi lập trình tháng 4</h4>
                                <p>Tham gia ngay để nhận giải thưởng hấp dẫn! Thời gian: 30/4/2025.</p>
                                <p>Bởi admin - 02/04/2025</p>
                            </article>
                            <article>
                                <h4>Cập nhật bài code mới</h4>
                                <p>Bài code mới tên: Tính tổng 2 số nguyên đã được thêm lúc 08:30 01/04/2025</p>
                                <p>Bởi admin - 01/04/2025</p>
                            </article>
                        </div>
                    </section>
                    <!-- Featured exercises -->
                    <section class="exercises">
                        <h3>Bài tập nổi bật</h3>
                        <div class="exercise-grid">
                            <article>
                                <h4>Tổng hai số</h4>
                                <p>Độ khó: dễ</p>
                                <button class="action-button">Làm ngay</button>
                            </article>
                            <article>
                                <h4>Tổng hai số</h4>
                                <p>Độ khó: dễ</p>
                                <button class="action-button">Làm ngay</button>
                            </article>
                            <article>
                                <h4>Tổng hai số</h4>
                                <p>Độ khó: dễ</p>
                                <button class="action-button">Làm ngay</button>
                            </article>
                        </div>
                    </section>
                    <!-- Upcoming contest -->
                    <section class="contest">
                        <h3>Cuộc thi sắp tới</h3>
                        <article>
                            <h4>Kiểm tra định kỳ tháng 4</h4>
                            <p>Ngày: 23/04/2025 - 13h30</p>
                            <button class="action-button">Đăng ký</button>
                        </article>
                    </section>
                    <!-- Special note section -->
                    <section class="features">
                        <h3>Chưa thấy gì đặc biệt ?</h3>
                        <p>Tôi sẽ cho bạn thêm lí do để chọn website của chúng tôi làm nơi để rèn luyện kỹ năng lập
                            trình</p>
                        <div class="feature-grid">
                            <article>
                                <img src="images/client/images/books.png">
                                <h4>Thư viện bài tập phong phú</h4>
                                <p>Hàng ngàn bài tập về cấu trúc dữ liệu và thuật toán, được phân loại theo độ khó, giúp
                                    bạn học và thực hành
                                    một cách hệ thống.</p>
                            </article>
                            <article>
                                <img src="images/client/images/code.png">
                                <h4>Hỗ trợ nhiều ngôn ngữ lập trình</h4>
                                <p>Cho phép bạn luyện tập với ngôn ngữ bạn thành thạo hoặc muốn khám phá.</p>
                            </article>
                            <article>
                                <img src="images/client/images/building.png">
                                <h4>Sự chuẩn bị tốt cho phỏng vấn kỹ thuật</h4>
                                <p>Các bài tập của website thường tương tự với những câu hỏi trong phỏng vấn tại các
                                    công ty công nghệ lớn.
                                </p>
                            </article>
                        </div>
                    </section>
                </main>


                <!-- Footer mới -->

                <jsp:include page="/WEB-INF/view/client/layout/footer.jsp" />
                <!-- Footer mới -->

                <!-- Modals -->
                <div id="loginModal" class="modal">
                    <div class="modal-content"></div>
                </div>
                <div id="signupModal" class="modal">
                    <div class="modal-content"></div>
                </div>
                <div id="forgotPasswordModal" class="modal">
                    <div class="modal-content"></div>
                </div>
                <div id="changePasswordModal" class="modal">
                    <div class="modal-content"></div>
                </div>





            </body>

            </html>