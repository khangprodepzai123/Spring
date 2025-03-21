<!DOCTYPE html>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <link rel="stylesheet" href="/css/page.css">

            </head>

            <body>
                <div class="container">
                    <div id="head">
                        <h1>User Information</h1>
                        <div>
                            <button><a href="/admin/user/create">Create A user</a></button>
                        </div>
                    </div>
                    <div>
                        <table class="table table-bordered table-hover">
                            <thead>
                                <th>ID</th>
                                <th>Email</th>
                                <th>Full Name</th>
                                <th>Address</th>
                                <th>Phone</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>${user.id}</td>
                                    <td>${user.email}</td>
                                    <td>${user.fullName}</td>
                                    <td>${user.address}</td>
                                    <td>${user.phone}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </body>

            </html>