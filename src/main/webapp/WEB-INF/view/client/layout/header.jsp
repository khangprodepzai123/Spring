<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <header>
            <div class="logo"><img src="images/client/images/ntu.jpg" alt=""></div>

            <nav>
                <ul>
                    <li><a href="#" class="active"><i class='bx bxs-home'></i> Home</a></li>
                    <li><a href="/problems"><i class='bx bxs-grid'></i> Problems</a></li>
                    <li><a href="#"><i class='bx bxs-book-content'></i> Contests</a></li>
                    <li><a href="#"><i class='bx bx-pulse'></i> Status</a></li>
                    <!-- <li class="dropdown">
                        <a href="#"><i class='bx bxs-bar-chart-alt-2'></i> Rank ▼</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Top 10</a></li>
                            <li><a href="#">School Rankings</a></li>
                        </ul>
                    </li> -->
                    <li><a href="/rank"><i class='bx bxs-bar-chart-alt-2'></i> Rank</a></li>
                    <li class="dropdown">
                        <a href="#"><i class='bx bxs-message-alt-error'></i> About ▼</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <button id="loginBtn" class="login-btn">Login</button>
        </header>