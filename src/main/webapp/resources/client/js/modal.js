function openModal(modalId, contentUrl) {
    const modal = document.getElementById(modalId);
    const modalContent = modal.querySelector('.modal-content');

    fetch(contentUrl)
        .then(response => {
            if (!response.ok) {
                throw new Error(`Failed to load ${contentUrl}: ${response.statusText}`);
            }
            return response.text();
        })
        .then(data => {
            modalContent.innerHTML = `
          <span class="close" onclick="closeModal('${modalId}')">×</span>
          ${data}
        `;
            modal.style.display = 'block';

            // Kiểm tra và log để debug
            console.log(`Modal ${modalId} opened with content from ${contentUrl}`);

            // Thêm sự kiện cho nút "Đăng nhập"
            const loginButton = modalContent.querySelector('#login-submit');
            if (loginButton) {
                console.log("Login button found, attaching event listener...");
                loginButton.addEventListener('click', () => {
                    console.log("Login button clicked!");
                    // Lưu trạng thái đăng nhập
                    localStorage.setItem('isLoggedIn', 'true');
                    // Đóng modal
                    closeModal(modalId);
                    // Xóa hàm loadHeader() vì nó không được định nghĩa
                    // Nếu bạn cần loadHeader(), hãy định nghĩa nó
                    // Chuyển hướng đến profile.html
                    window.location.href = 'profile.html';
                });
            } else {
                console.error("Login button (#login-submit) not found in modal content!");
            }

            // Thêm sự kiện cho nút "Reset" trong forgot-password.html
            const resetButton = modalContent.querySelector('#reset-password');
            if (resetButton) {
                resetButton.addEventListener('click', () => {
                    closeModal(modalId);
                    openModal('changePasswordModal', 'change-password.html');
                });
            }

            // Thêm sự kiện cho nút "Change" trong change-password.html
            const changeButton = modalContent.querySelector('#change-password');
            if (changeButton) {
                changeButton.addEventListener('click', () => {
                    const newPassword = modalContent.querySelector('#new-password').value;
                    const confirmPassword = modalContent.querySelector('#confirm-password').value;
                    if (newPassword && confirmPassword && newPassword === confirmPassword) {
                        alert('Mật khẩu đã được đặt lại thành công!');
                        closeModal(modalId);
                    } else {
                        alert('Mật khẩu mới và xác nhận mật khẩu không khớp hoặc không được để trống!');
                    }
                });
            }
        })
        .catch(error => {
            console.error('Error loading form:', error);
            modalContent.innerHTML = `<p>Error loading form. Please try again later.</p>`;
            modal.style.display = 'block';
        });
}

function closeModal(modalId) {
    const modal = document.getElementById(modalId);
    modal.style.display = 'none';
}

function switchModal(closeId, openId) {
    closeModal(closeId);
    if (openId === 'loginModal') {
        openModal('loginModal', 'login.html');
    } else if (openId === 'signupModal') {
        openModal('signupModal', 'register.html');
    } else if (openId === 'forgotPasswordModal') {
        openModal('forgotPasswordModal', 'forgot-password.html');
    } else if (openId === 'changePasswordModal') {
        openModal('changePasswordModal', 'change-password.html');
    }
}

window.onclick = function (event) {
    if (event.target.classList.contains('modal')) {
        event.target.style.display = 'none';
    }
};