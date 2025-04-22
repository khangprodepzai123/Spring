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
                <!-- <script src="/js/client/js/fit.js"></script> -->

                <!-- <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link
                    href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap"
                    rel="stylesheet">
                <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'> -->
                <!-- <link href="/css/admin/css/dash.css" rel="stylesheet" /> -->
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
                    rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
                <link href="/css/client/css/about.css" rel="stylesheet" />

                <!-- <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script> -->

            </head>

            <body>
                <!-- Thanh điều hướng -->
                <jsp:include page="/WEB-INF/view/client/layout/header.jsp" />

                <!-- Thanh điều hướng -->



                <!-- Nội dung chính -->
                <main>
                    <section class="intro">
                        <h1>3K</h1>
                        <p>Chúng tôi xây dựng một nơi mà bất kỳ ai cũng có thể học tập và rèn luyện kỹ năng lập trình
                            một cách miễn phí.</p>
                    </section>
                    <section class="purpose">
                        <div class="purpose-text">
                            <div class="purpose-header">
                                <!-- <img src="images/chart-polar-thin.png" alt="purpose"> -->
                                <p class="purpose-title">Mục đích</p>
                            </div>
                            <p>Chúng tôi ở đây để giúp mọi người phát triển kỹ năng lập trình của bản thân bất kể là
                                ngôn ngữ nào. Chúng tôi muốn chia sẻ kinh nghiệm, kiến thức, cảm hứng đối với lập trình
                                để mọi người cảm thấy lập trình thú vị đến nhường nào.</p>
                        </div>
                        <img alt="img" class="purpose-image" src="images/client/images/a2.png">
                    </section>
                    <section class="goals">
                        <article>
                            <div class="goal-number">1</div>
                            <p class="goal-title">Đạt trình độ cao</p>
                            <p class="goal-text">Chúng tôi muốn mọi người trải nghiệm niềm vui của lập trình, hài lòng
                                với kết quả đạt.</p>
                        </article>
                        <article>
                            <div class="goal-number">2</div>
                            <p class="goal-title">Đạt trình độ cao</p>
                            <p class="goal-text">Chúng tôi muốn mọi người trải nghiệm niềm vui của lập trình, hài lòng
                                với kết quả đạt.</p>
                        </article>
                        <article>
                            <div class="goal-number">3</div>
                            <p class="goal-title">Đạt trình độ cao</p>
                            <p class="goal-text">Chúng tôi muốn mọi người trải nghiệm niềm vui của lập trình, hài lòng
                                với kết quả đạt.</p>
                        </article>
                    </section>
                    <section class="principles">
                        <div class="principles-header">
                            <img src="images/client/images/a3.png">
                            <h2>Nguyên tắc</h2>
                        </div>
                        <ul>
                            <li>
                                <img src="images/client/images/a4.png">
                                <p>3K phải thú vị, thử thách và thật sự có giá trị.</p>
                            </li>
                            <li>
                                <img src="images/client/images/a4.png">
                                <p>3K nên khuyến khích phát triển tư duy, giao tiếp rõ ràng và thấu cảm đồng thời nhấn
                                    mạnh giá trị của việc học hỏi cùng nhau.</p>
                            </li>
                            <li>
                                <img src="images/client/images/a4.png">
                                <p>3K phải an toàn về mặt kỹ thuật và tạo điều kiện cho sự phát triển kỹ năng.</p>
                            </li>
                            <li>
                                <img src="images/client/images/a4.png">
                                <p>3K tập trung vào hành trình học hỏi không phải đích đến. Quá trình và sự thích thú
                                    trong học tập quan trọng hơn kết quả.</p>
                            </li>
                        </ul>
                    </section>
                    <section class="mission">
                        <div class="mission-text">
                            <div class="mission-header">
                                <img src="images/client/images/Vector.png" alt="">
                                <p class="mission-title">Hãy giúp chúng tôi mang niềm vui lập trình đến với mọi người, ở
                                    mọi nơi</p>
                            </div>
                            <p>Hãy lan tỏa năng lượng của chúng tôi tới những người đang lạc lối trên con đường học lập
                                trình, tới những người đang tìm kiếm một bến đỗ để học hỏi, trau dồi kỹ năng lập trình.
                            </p>
                        </div>
                        <img src="images/client/images/a1.png" alt="img">
                    </section>
                </main>




                <!-- Footer mới -->

                <jsp:include page="/WEB-INF/view/client/layout/footer.jsp" />
                <!-- Footer mới -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/admin/js/scripts.js"></script>


            </body>

            </html>