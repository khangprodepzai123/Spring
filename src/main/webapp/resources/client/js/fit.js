document.addEventListener("DOMContentLoaded", function () {
    let loginModal = document.getElementById("loginForm");
    let lostPasswordModal = document.getElementById("lostPasswordForm");
    const passwordInput = document.getElementById("password");
    const togglePassword = document.getElementById("toggle-password");


    // Khi bấm vào nút Login
    document.querySelector(".login-btn").addEventListener("click", function () {
        loginModal.style.display = "flex";
    });

    // Khi bấm vào "Forgot Password?"
    document.querySelector(".forgot-password").addEventListener("click", function (event) {
        event.preventDefault();
        loginModal.style.display = "none"; // Ẩn form login
        lostPasswordModal.style.display = "flex"; // Hiện form lost password
    });

    // Khi bấm nút đóng (×) trong form Login
    document.querySelector(".close-btn").addEventListener("click", function () {
        loginModal.style.display = "none";
    });

    // Khi bấm nút đóng (×) trong form Lost Password
    document.querySelector(".close-lost").addEventListener("click", function () {
        lostPasswordModal.style.display = "none";
    });

    // Khi bấm ra ngoài modal, ẩn nó đi
    window.addEventListener("click", function (event) {
        if (event.target === loginModal) {
            loginModal.style.display = "none";
        }
        if (event.target === lostPasswordModal) {
            lostPasswordModal.style.display = "none";
        }
    });

});
document.addEventListener("DOMContentLoaded", function () {
    // Bảng dịch
    const translations = {
        en: {
            "nav-home": "Home",
            "nav-problems": "Problems",
            "nav-contests": "Contests",
            "nav-status": "Status",
            "nav-rank": "Rank",
            "nav-about": "About",
            "btn-login": "Login",
            "announcements-title": "Announcements",
            "announcements-text": "Log in to the system",
            "btn-refresh": "Refresh",
            "hero-title": "Welcome to NTU Online 2.0",
            "hero-text": "Join to solve problems, compete, and improve your coding skills.",
            "cta-btn": "Get Started",
            "featured-title": "Featured Problems",
            "problem-1-title": "Sum of Two Numbers",
            "problem-1-difficulty": "Difficulty: Easy",
            "solve-btn": "Solve Now",
            "contests-title": "Upcoming Contests",
            "contest-1-title": "NTU Coding Challenge #1",
            "leaderboard-title": "Top Coders",
            "view-more": "View Full Leaderboard"
        },
        vi: {
            "nav-home": "Trang chủ",
            "nav-problems": "Bài tập",
            "nav-contests": "Cuộc thi",
            "nav-status": "Trạng thái",
            "nav-rank": "Xếp hạng",
            "nav-about": "Giới thiệu",
            "btn-login": "Đăng nhập",
            "announcements-title": "Thông báo",
            "announcements-text": "Đăng nhập hệ thống",
            "btn-refresh": "Làm mới",
            "hero-title": "Chào mừng đến với NTU Online 2.0",
            "hero-text": "Tham gia giải bài tập, thi đấu, và nâng cao kỹ năng lập trình của bạn.",
            "cta-btn": "Bắt đầu ngay",
            "featured-title": "Bài tập nổi bật",
            "problem-1-title": "Tổng hai số",
            "problem-1-difficulty": "Độ khó: Dễ",
            "solve-btn": "Giải ngay",
            "contests-title": "Cuộc thi sắp tới",
            "contest-1-title": "NTU Coding Challenge #1",
            "leaderboard-title": "Top coder",
            "view-more": "Xem bảng đầy đủ"
        }
    };

    // Lấy select ngôn ngữ
    const languageSelect = document.getElementById("language-select");

    // Hàm cập nhật ngôn ngữ
    function updateLanguage(lang) {
        const translation = translations[lang] || translations["vi"]; // Mặc định tiếng Việt
        for (const [id, text] of Object.entries(translation)) {
            const element = document.getElementById(id);
            if (element) {
                element.textContent = text;
            }
        }
    }

    // Sự kiện thay đổi ngôn ngữ
    languageSelect.addEventListener("change", function () {
        updateLanguage(this.value);
    });

    // Khởi tạo ngôn ngữ mặc định
    updateLanguage("vi");
});
document.addEventListener("DOMContentLoaded", function () {
    const filterButtons = document.querySelectorAll(".filter-btn");

    filterButtons.forEach(button => {
        button.addEventListener("click", function () {
            // Xóa class active khỏi tất cả nút
            filterButtons.forEach(btn => btn.classList.remove("active"));
            // Thêm class active cho nút được nhấn
            this.classList.add("active");

            // Giả lập lọc dữ liệu (thay bằng logic thực tế nếu có backend)
            const filter = this.getAttribute("data-filter");
            console.log(`Lọc theo: ${filter}`);
            // Ở đây bạn có thể gọi API hoặc cập nhật danh sách rank dựa trên filter
        });
    });
});
document.addEventListener("DOMContentLoaded", function () {
    const homeSection = document.getElementById("home-section");
    const rankSection = document.getElementById("rank-section");
    const viewFullRank = document.getElementById("view-full-rank");
    const backToHome = document.getElementById("back-to-home");

    // Khi nhấn "Xem bảng đầy đủ"
    viewFullRank.addEventListener("click", function (e) {
        e.preventDefault(); // Ngăn reload trang
        homeSection.style.display = "none";
        rankSection.style.display = "block";
        setTimeout(() => {
            homeSection.classList.add("hidden");
            rankSection.classList.remove("hidden");
        }, 10); // Delay nhỏ để hiệu ứng mượt mà
    });

    // Khi nhấn "Quay lại Trang chủ"
    backToHome.addEventListener("click", function (e) {
        e.preventDefault();
        rankSection.style.display = "none";
        homeSection.style.display = "block";
        setTimeout(() => {
            rankSection.classList.add("hidden");
            homeSection.classList.remove("hidden");
        }, 10);
    });
});