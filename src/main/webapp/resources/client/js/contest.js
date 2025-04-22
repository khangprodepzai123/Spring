const originalContent = document.getElementById('content-container').innerHTML;

function updateActiveNav(navId) {
    document.querySelectorAll('.nav-link').forEach(link => {
        link.classList.remove('active');
        if (link.getAttribute('data-nav') === navId) {
            link.classList.add('active');
        }
    });
}

function showContestDetail(contestId) {
    const contestsData = {
        "contest-1": {
            title: "Weekly Contest #1",
            time: "Chủ nhật 9:30 AM",
            description: `
        <p class="important-note-08">Lưu ý quan trọng</p>
        <p>Thời gian phạt 5 phút sẽ được áp dụng cho mỗi lần gửi sai.</p>
        <p>Để đảm bảo tính công bằng của cuộc thi, 3K sẽ ẩn testcase trong quá trình diễn ra cuộc thi kể cả nộp đúng.</p>
        <p>Xếp hạng cuối cùng của cuộc thi sẽ được cập nhật trong vòng 5 ngày sau cuộc thi.</p>
        <p>Các hành vi dưới đây được coi là vi phạm cuộc thi:</p>
        <p>Một người dùng nộp bài bằng nhiều tài khoản trong một cuộc thi.</p>
        <p>Nhiều tài khoản gửi mã tương tự cho cùng một bug.</p>
        <p>Tiết lộ đáp án cuộc thi trong các bài đăng thảo luận công khai trước khi cuộc thi kết thúc.</p>
        <p>Sử dụng các tools hoặc AI để tạo lời giải đều bị nghiêm cấm.</p>
      `,
            sidebar: ["Phương trình", "Giai thừa", "Dãy số", "Tích", "Đếm chữ số"]
        },
        "contest-2": {
            title: "Weekly Contest #2",
            time: "Chủ nhật 17:30 PM",
            description: `
        <p class="important-note-08">Lưu ý quan trọng</p>
        <p>Thời gian phạt 5 phút sẽ được áp dụng cho mỗi lần gửi sai.</p>
        <p>Để đảm bảo tính công bằng của cuộc thi, 3K sẽ ẩn testcase trong quá trình diễn ra cuộc thi kể cả nộp đúng.</p>
        <p>Xếp hạng cuối cùng của cuộc thi sẽ được cập nhật trong vòng 5 ngày sau cuộc thi.</p>
        <p>Các hành vi dưới đây được coi là vi phạm cuộc thi:</p>
        <p>Một người dùng nộp bài bằng nhiều tài khoản trong một cuộc thi.</p>
        <p>Nhiều tài khoản gửi mã tương tự cho cùng một bug.</p>
        <p>Tiết lộ đáp án cuộc thi trong các bài đăng thảo luận công khai trước khi cuộc thi kết thúc.</p>
        <p>Sử dụng các tools hoặc AI để tạo lời giải đều bị nghiêm cấm.</p>
      `,
            sidebar: ["Tổng hai số", "Dãy số", "Quân xe", "Phép nhân", "Đếm chữ số"]
        },
        "contest-3": {
            title: "Weekly Contest #3",
            time: "21/04/2025 13:30 PM",
            description: `
        <p class="important-note-08">Lưu ý quan trọng</p>
        <p>Thời gian phạt 5 phút sẽ được áp dụng cho mỗi lần gửi sai.</p>
        <p>Để đảm bảo tính công bằng của cuộc thi, 3K sẽ ẩn testcase trong quá trình diễn ra cuộc thi kể cả nộp đúng.</p>
        <p>Xếp hạng cuối cùng của cuộc thi sẽ được cập nhật trong vòng 5 ngày sau cuộc thi.</p>
        <p>Các hành vi dưới đây được coi là vi phạm cuộc thi:</p>
        <p>Một người dùng nộp bài bằng nhiều tài khoản trong một cuộc thi.</p>
        <p>Nhiều tài khoản gửi mã tương tự cho cùng một bug.</p>
        <p>Tiết lộ đáp án cuộc thi trong các bài đăng thảo luận công khai trước khi cuộc thi kết thúc.</p>
        <p>Sử dụng các tools hoặc AI để tạo lời giải đều bị nghiêm cấm.</p>
      `,
            sidebar: ["Đếm số nguyên", "Tích", "Giai thừa", "Dãy số", "Phương trình"]
        },
        "contest-4": {
            title: "Weekly Contest #4",
            time: "23/04/2025 13:30 PM",
            description: `
        <p class="important-note-08">Lưu ý quan trọng</p>
        <p>Thời gian phạt 5 phút sẽ được áp dụng cho mỗi lần gửi sai.</p>
        <p>Để đảm bảo tính công bằng của cuộc thi, 3K sẽ ẩn testcase trong quá trình diễn ra cuộc thi kể cả nộp đúng.</p>
        <p>Xếp hạng cuối cùng của cuộc thi sẽ được cập nhật trong vòng 5 ngày sau cuộc thi.</p>
        <p>Các hành vi dưới đây được coi là vi phạm cuộc thi:</p>
        <p>Một người dùng nộp bài bằng nhiều tài khoản trong một cuộc thi.</p>
        <p>Nhiều tài khoản gửi mã tương tự cho cùng một bug.</p>
        <p>Tiết lộ đáp án cuộc thi trong các bài đăng thảo luận công khai trước khi cuộc thi kết thúc.</p>
        <p>Sử dụng các tools hoặc AI để tạo lời giải đều bị nghiêm cấm.</p>
      `,
            sidebar: ["Phương trình", "Quân xe", "Tổng hai số", "Đếm chữ số", "Giai thừa"]
        },
        "contest-5": {
            title: "Weekly Contest #5",
            time: "25/04/2025 13:30 PM",
            description: `
        <p class="important-note-08">Lưu ý quan trọng</p>
        <p>Thời gian phạt 5 phút sẽ được áp dụng cho mỗi lần gửi sai.</p>
        <p>Để đảm bảo tính công bằng của cuộc thi, 3K sẽ ẩn testcase trong quá trình diễn ra cuộc thi kể cả nộp đúng.</p>
        <p>Xếp hạng cuối cùng của cuộc thi sẽ được cập nhật trong vòng 5 ngày sau cuộc thi.</p>
        <p>Các hành vi dưới đây được coi là vi phạm cuộc thi:</p>
        <p>Một người dùng nộp bài bằng nhiều tài khoản trong một cuộc thi.</p>
        <p>Nhiều tài khoản gửi mã tương tự cho cùng một bug.</p>
        <p>Tiết lộ đáp án cuộc thi trong các bài đăng thảo luận công khai trước khi cuộc thi kết thúc.</p>
        <p>Sử dụng các tools hoặc AI để tạo lời giải đều bị nghiêm cấm.</p>
      `,
            sidebar: ["Dãy số", "Phép nhân", "Tích", "Giai thừa", "Phương trình"]
        },
        "contest-6": {
            title: "Weekly Contest #6",
            time: "27/04/2025 7:30 AM",
            description: `
        <p class="important-note-08">Lưu ý quan trọng</p>
        <p>Thời gian phạt 5 phút sẽ được áp dụng cho mỗi lần gửi sai.</p>
        <p>Để đảm bảo tính công bằng của cuộc thi, 3K sẽ ẩn testcase trong quá trình diễn ra cuộc thi kể cả nộp đúng.</p>
        <p>Xếp hạng cuối cùng của cuộc thi sẽ được cập nhật trong vòng 5 ngày sau cuộc thi.</p>
        <p>Các hành vi dưới đây được coi là vi phạm cuộc thi:</p>
        <p>Một người dùng nộp bài bằng nhiều tài khoản trong một cuộc thi.</p>
        <p>Nhiều tài khoản gửi mã tương tự cho cùng một bug.</p>
        <p>Tiết lộ đáp án cuộc thi trong các bài đăng thảo luận công khai trước khi cuộc thi kết thúc.</p>
        <p>Sử dụng các tools hoặc AI để tạo lời giải đều bị nghiêm cấm.</p>
      `,
            sidebar: ["Đếm số chia hết", "Tổng hai số", "Quân xe", "Phương trình", "Dãy số"]
        },
        "contest-7": {
            title: "Weekly Contest #7",
            time: "29/04/2025 13:30 PM",
            description: `
        <p class="important-note-08">Lưu ý quan trọng</p>
        <p>Thời gian phạt 5 phút sẽ được áp dụng cho mỗi lần gửi sai.</p>
        <p>Để đảm bảo tính công bằng của cuộc thi, 3K sẽ ẩn testcase trong quá trình diễn ra cuộc thi kể cả nộp đúng.</p>
        <p>Xếp hạng cuối cùng của cuộc thi sẽ được cập nhật trong vòng 5 ngày sau cuộc thi.</p>
        <p>Các hành vi dưới đây được coi là vi phạm cuộc thi:</p>
        <p>Một người dùng nộp bài bằng nhiều tài khoản trong một cuộc thi.</p>
        <p>Nhiều tài khoản gửi mã tương tự cho cùng một bug.</p>
        <p>Tiết lộ đáp án cuộc thi trong các bài đăng thảo luận công khai trước khi cuộc thi kết thúc.</p>
        <p>Sử dụng các tools hoặc AI để tạo lời giải đều bị nghiêm cấm.</p>
      `,
            sidebar: ["Tích", "Dãy số", "Đếm chữ số", "Phép nhân", "Giai thừa"]
        },
        "contest-8": {
            title: "Weekly Contest #8",
            time: "05/05/2025 13:30 PM",
            description: `
        <p class="important-note-08">Lưu ý quan trọng</p>
        <p>Thời gian phạt 5 phút sẽ được áp dụng cho mỗi lần gửi sai.</p>
        <p>Để đảm bảo tính công bằng của cuộc thi, 3K sẽ ẩn testcase trong quá trình diễn ra cuộc thi kể cả nộp đúng.</p>
        <p>Xếp hạng cuối cùng của cuộc thi sẽ được cập nhật trong vòng 5 ngày sau cuộc thi.</p>
        <p>Các hành vi dưới đây được coi là vi phạm cuộc thi:</p>
        <p>Một người dùng nộp bài bằng nhiều tài khoản trong một cuộc thi.</p>
        <p>Nhiều tài khoản gửi mã tương tự cho cùng một bug.</p>
        <p>Tiết lộ đáp án cuộc thi trong các bài đăng thảo luận công khai trước khi cuộc thi kết thúc.</p>
        <p>Sử dụng các tools hoặc AI để tạo lời giải đều bị nghiêm cấm.</p>
      `,
            sidebar: ["Giai thừa", "Quân xe", "Tổng hai số", "Đếm số nguyên", "Phương trình"]
        }
    };

    const contest = contestsData[contestId] || {
        title: "Contest Not Found",
        time: "",
        description: "Không tìm thấy thông tin cuộc thi.",
        sidebar: []
    };

    const contestDetailHTML = `
    <section class="contest-detail-section-08">
      <button class="back-btn-08">
        <i class='bx bx-left-arrow-alt'></i>
        <span>Back</span>
      </button>
      <div class="contest-detail-header-08">
        <div>
          <h1 class="contest-detail-title-08">${contest.title}</h1>
          <p class="contest-detail-time-08">${contest.time}</p>
        </div>
        <img alt="Illustration of a laptop" class="contest-detail-image-08" src="/images/client/images/j1.png">
      </div>
      <div class="contest-detail-content-08">
        <section class="contest-detail-main-08">
          <h2>Chào mừng bạn đến với cuộc thi 3K lần thứ ${contestId.split('-')[1]}</h2>
          ${contest.description}
        </section>
        <aside class="contest-detail-sidebar-08">
          <h3>
            <i class='bx bx-folder-open'></i>
            <span>Câu hỏi</span>
          </h3>
          <ul>
            ${contest.sidebar.map(item => `
              <li>
                <span>${item}</span>
                <button aria-label="Go to ${item}" onclick="goToProblem('${item}')">
                  <i class='bx bx-right-arrow-alt'></i>
                </button>
              </li>
            `).join("")}
          </ul>
        </aside>
      </div>
    </section>
  `;

    document.getElementById('content-container').innerHTML = contestDetailHTML;
    updateActiveNav('nav-contests');

    document.querySelector('.back-btn-08').addEventListener('click', function () {
        document.getElementById('content-container').innerHTML = originalContent;
        updateActiveNav('nav-contests');
        attachContentEvents();
    });
}

function goToProblem(question) {
    const questionId = question.toLowerCase().replace(/\s+/g, '-');
    window.location.href = `problems.html?id=${questionId}`;
}

function attachContentEvents() {
    const contestCards = document.querySelectorAll('.contest-card-08');
    contestCards.forEach(card => {
        card.addEventListener('click', function () {
            const contestId = this.getAttribute('data-contest-id');
            showContestDetail(contestId);
        });
    });

    const contestItems = document.querySelectorAll('.contest-item-08');
    contestItems.forEach(item => {
        item.addEventListener('click', function (event) {
            if (event.target.closest('.register-button')) return;
            const contestId = this.getAttribute('data-contest-id');
            showContestDetail(contestId);
        });
    });
}

document.addEventListener('DOMContentLoaded', attachContentEvents);