<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!-- <header>
            <div class="logo"><img src="images/client/images/ntu.jpg" alt=""></div>

            <nav>
                <ul>
                    <li><a href="/home" class="active"><i class='bx bxs-home'></i> Home</a></li>
                    <li><a href="/problems"><i class='bx bxs-grid'></i> Problems</a></li>
                    <li><a href="/contests"><i class='bx bxs-book-content'></i> Contests</a></li>

                    <li><a href="/rank"><i class='bx bxs-bar-chart-alt-2'></i> Rank</a></li>
                    <li><a href="/about"><i class='bx bxs-bar-chart-alt-1'></i> About Us</a></li>

                </ul>
            </nav>
            <button id="loginBtn" class="login-btn">Login</button>
        </header> -->

        <header>
            <div class="logo">3K</div>
            <nav>
                <a href="/home" class="nav-link">
                    <i class="fas fa-home"></i>
                    <span>Home</span>
                </a>
                <a href="/problems" class="nav-link">
                    <i class="fas fa-th-large"></i>
                    <span>Problems</span>
                </a>
                <a href="/contests" class="nav-link">
                    <i class="fas fa-clipboard-list"></i>
                    <span>Contests</span>
                </a>
                <a href="/rank" class="nav-link">
                    <i class="fas fa-chart-bar"></i>
                    <span>Rank</span>
                </a>
                <a href="/about" class="nav-link">
                    <i class="fas fa-comments"></i>
                    <span>About Us</span>
                </a>
            </nav>
            <div class="auth-buttons">
                <button class="signup" onclick="openModal('signupModal', 'register.html')">Sign up</button>
                <button class="login" onclick="openModal('loginModal', 'login.html')">Login</button>
            </div>

        </header>