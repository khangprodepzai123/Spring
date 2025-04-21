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
                <link rel="stylesheet" href="/css/client/css/home.css">
                <script src="/js/client/js/fit.js"></script>

                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link
                    href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap"
                    rel="stylesheet">
                <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
                    rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap"
                    rel="stylesheet">
                <!-- <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script> -->

            </head>

            <body>
                <!-- Thanh điều hướng -->
                <jsp:include page="/WEB-INF/view/client/layout/header.jsp" />

                <!-- Thanh điều hướng -->



                <!-- Nội dung chính -->

                <main>

                    <!-- Programming section -->
                    <section class="programming-section">
                        <div class="programming-text">
                            <h2>Get really good at programming.</h2>
                            <p>Thành thạo ngôn ngữ lập trình mà bạn mong muốn với phương pháp học tập độc đáo kết hợp
                                với thực hành của chúng tôi cực kì hiệu quả.</p>
                            <button class="action-button">Bắt đầu nào</button>
                        </div>
                        <div class="programming-image">
                            <img alt="Illustration of four people programming in an office with purple chairs and computer screens showing code and charts"
                                src="https://storage.googleapis.com/a1aa/image/033d0854-2b25-44ad-8428-fc3579c15bf1.jpg"
                                width="400" height="220" loading="lazy">
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
                                <p>bài code mới tên: Tính tổng 2 số nguyên đã được thêm lúc 08:30 01/04/2025</p>
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
                                <i class="fas fa-book-open"></i>
                                <h4>Thư viện bài tập phong phú</h4>
                                <p>Hàng ngàn bài tập về cấu trúc dữ liệu và thuật toán, được phân loại theo độ khó, giúp
                                    bạn học và thực hành một cách hệ thống.</p>
                            </article>
                            <article>
                                <i class="fas fa-code"></i>
                                <h4>Hỗ trợ nhiều ngôn ngữ lập trình</h4>
                                <p>Cho phép bạn luyện tập với ngôn ngữ bạn thành thạo hoặc muốn khám phá.</p>
                            </article>
                            <article>
                                <i class="fas fa-building"></i>
                                <h4>Sự chuẩn bị tốt cho phỏng vấn kỹ thuật</h4>
                                <p>Các bài tập của website thường tương tự với những câu hỏi trong phỏng vấn tại các
                                    công ty công nghệ lớn.</p>
                            </article>
                        </div>
                    </section>
                </main>

                <!-- Form đăng nhập mới -->
                <div id="loginForm" class="modal">
                    <div class="modal-content">
                        <span class="close-btn" onclick="closeLogin()">×</span>
                        <div class="card">
                            <input value="" class="blind-check" type="checkbox" id="blind-input" name="blindcheck"
                                hidden="" />
                            <label for="blind-input" class="blind_input">
                                <span class="hide">Hide</span>
                                <span class="show">Show</span>
                            </label>
                            <form class="form">
                                <div class="title">Sign In</div>
                                <label class="label_input" for="email-input">Email</label>
                                <input spellcheck="false" class="input" type="email" placeholder="Enter your email"
                                    name="email" id="email-input" />
                                <div class="frg_pss">
                                    <label class="label_input" for="password-input">Password</label>
                                    <a href="#" class="forgot-password">Forgot password?</a>
                                </div>
                                <input spellcheck="false" class="input" type="text" name="password"
                                    id="password-input" />
                                <button class="submit" type="button">Login</button>
                            </form>
                            <label for="blind-input" class="avatar">
                                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" viewBox="0 0 64 64"
                                    id="monkey">
                                    <ellipse cx="53.7" cy="33" rx="8.3" ry="8.2" fill="#89664c"></ellipse>
                                    <ellipse cx="53.7" cy="33" rx="5.4" ry="5.4" fill="#ffc5d3"></ellipse>
                                    <ellipse cx="10.2" cy="33" rx="8.2" ry="8.2" fill="#89664c"></ellipse>
                                    <ellipse cx="10.2" cy="33" rx="5.4" ry="5.4" fill="#ffc5d3"></ellipse>
                                    <g fill="#89664c">
                                        <path
                                            d="m43.4 10.8c1.1-.6 1.9-.9 1.9-.9-3.2-1.1-6-1.8-8.5-2.1 1.3-1 2.1-1.3 2.1-1.3-20.4-2.9-30.1 9-30.1 19.5h46.4c-.7-7.4-4.8-12.4-11.8-15.2">
                                        </path>
                                        <path
                                            d="m55.3 27.6c0-9.7-10.4-17.6-23.3-17.6s-23.3 7.9-23.3 17.6c0 2.3.6 4.4 1.6 6.4-1 2-1.6 4.2-1.6 6.4 0 9.7 10.4 17.6 23.3 17.6s23.3-7.9 23.3-17.6c0-2.3-.6-4.4-1.6-6.4 1-2 1.6-4.2 1.6-6.4">
                                        </path>
                                    </g>
                                    <path
                                        d="m52 28.2c0-16.9-20-6.1-20-6.1s-20-10.8-20 6.1c0 4.7 2.9 9 7.5 11.7-1.3 1.7-2.1 3.6-2.1 5.7 0 6.1 6.6 11 14.7 11s14.7-4.9 14.7-11c0-2.1-.8-4-2.1-5.7 4.4-2.7 7.3-7 7.3-11.7"
                                        fill="#e0ac7e"></path>
                                    <g fill="#3b302a" class="monkey-eye-nose">
                                        <path
                                            d="m35.1 38.7c0 1.1-.4 2.1-1 2.1-.6 0-1-.9-1-2.1 0-1.1.4-2.1 1-2.1.6.1 1 1 1 2.1">
                                        </path>
                                        <path
                                            d="m30.9 38.7c0 1.1-.4 2.1-1 2.1-.6 0-1-.9-1-2.1 0-1.1.4-2.1 1-2.1.5.1 1 1 1 2.1">
                                        </path>
                                        <ellipse cx="40.7" cy="31.7" rx="3.5" ry="4.5" class="monkey-eye-r"></ellipse>
                                        <ellipse cx="23.3" cy="31.7" rx="3.5" ry="4.5" class="monkey-eye-l"></ellipse>
                                    </g>
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" viewBox="0 0 64 64"
                                    id="monkey-hands">
                                    <path fill="#89664C" d="M9.4,32.5L2.1,61.9H14c-1.6-7.7,4-21,4-21L9.4,32.5z"></path>
                                    <path fill="#FFD6BB"
                                        d="M15.8,24.8c0,0,4.9-4.5,9.5-3.9c2.3,0.3-7.1,7.6-7.1,7.6s9.7-8.2,11.7-5.6c1.8,2.3-8.9,9.8-8.9,9.8 s10-8.1,9.6-4.6c-0.3,3.8-7.9,12.8-12.5,13.8C11.5,43.2,6.3,39,9.8,24.4C11.6,17,13.3,25.2,15.8,24.8">
                                    </path>
                                    <path fill="#89664C" d="M54.8,32.5l7.3,29.4H50.2c1.6-7.7-4-21-4-21L54.8,32.5z">
                                    </path>
                                    <path fill="#FFD6BB"
                                        d="M48.4,24.8c0,0-4.9-4.5-9.5-3.9c-2.3,0.3,7.1,7.6,7.1,7.6s-9.7-8.2-11.7-5.6c-1.8,2.3,8.9,9.8,8.9,9.8 s-10-8.1-9.7-4.6c0.4,3.8,8,12.8,12.6,13.8c6.6,1.3,11.8-2.9,8.3-17.5C52.6,17,50.9,25.2,48.4,24.8">
                                    </path>
                                </svg>
                            </label>
                        </div>
                    </div>
                </div>

                <!-- Form quên mật khẩu giữ nguyên -->
                <div id="lostPasswordForm" class="modal">
                    <div class="modal-content">
                        <span class="close-btn close-lost">&times;</span>
                        <h2>Lost Password</h2>
                        <div class="input-group">
                            <i class='bx bxs-key'></i>
                            <input type="email" placeholder="Your Email Address" required>
                        </div>
                        <p class="error-msg">email is required</p>
                        <div class="input-group">
                            <i class='bx bxs-edit-alt'></i>
                            <input type="text" placeholder="Captcha" required>
                            <img src="captcha.png" alt="Captcha">
                        </div>
                        <p class="error-msg">captcha is required</p>
                        <button class="submit-btn">Send Password Reset Email</button>
                    </div>
                </div>
                <!-- Phần Rank (ẩn ban đầu) -->
                <section id="rank-section" class="rank-section" style="display: none;">
                    <h1 class="rank-title">Bảng xếp hạng</h1>
                    <div class="rank-filters">
                        <button class="filter-btn active" data-filter="all">Mọi thời đại</button>
                        <button class="filter-btn" data-filter="month">Tháng này</button>
                        <button class="filter-btn" data-filter="week">Tuần này</button>
                    </div>
                    <div class="rank-table">
                        <div class="rank-header">
                            <span>Thứ hạng</span>
                            <span>Tên người dùng</span>
                            <span>Điểm số</span>
                            <span>Bài đã giải</span>
                        </div>
                        <div class="rank-list">
                            <div class="rank-item rank-top-1">
                                <span class="rank-position"><i class="bx bxs-medal"></i> 1</span>
                                <span class="rank-username">coderMaster</span>
                                <span class="rank-score">2500</span>
                                <span class="rank-solved">120</span>
                            </div>
                            <div class="rank-item rank-top-2">
                                <span class="rank-position"><i class="bx bxs-medal"></i> 2</span>
                                <span class="rank-username">proCoder</span>
                                <span class="rank-score">2300</span>
                                <span class="rank-solved">110</span>
                            </div>
                            <div class="rank-item rank-top-3">
                                <span class="rank-position"><i class="bx bxs-medal"></i> 3</span>
                                <span class="rank-username">algoNinja</span>
                                <span class="rank-score">2100</span>
                                <span class="rank-solved">105</span>
                            </div>
                            <div class="rank-item">
                                <span class="rank-position">4</span>
                                <span class="rank-username">codeRiser</span>
                                <span class="rank-score">1900</span>
                                <span class="rank-solved">95</span>
                            </div>
                            <div class="rank-item">
                                <span class="rank-position">5</span>
                                <span class="rank-username">newbiePro</span>
                                <span class="rank-score">1700</span>
                                <span class="rank-solved">85</span>
                            </div>
                        </div>
                    </div>
                    <a href="#" id="back-to-home" class="view-full-btn">Quay lại Trang chủ</a>
                </section>
                <!-- Footer mới -->

                <jsp:include page="/WEB-INF/view/client/layout/footer.jsp" />
                <!-- Footer mới -->


            </body>

            </html>