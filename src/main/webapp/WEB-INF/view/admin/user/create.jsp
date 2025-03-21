<!DOCTYPE html>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <link rel="stylesheet" href="/css/demo.css">
            </head>

            <body>
                <div class="container">


                    <form:form action="/admin/user/create" method="post" modelAttribute="newUser">
                        <table>
                            <th>
                                Create A user
                            </th>

                            <tr>
                                <td> <label for="email">Email</label></td>
                                <td>
                                    <form:input type="email" path="email" name="email" />
                                </td>

                            </tr>
                            <tr>
                                <td> <label for="password">Password</label>
                                </td>
                                <td>
                                    <form:input type="password" path="password" name="password" />
                                </td>
                            </tr>
                            <tr>
                                <td> <label for="phone">Phone Number</label>
                                </td>
                                <td>
                                    <form:input type="tel" path="phone" name="phone" />
                                </td>
                            </tr>
                            <tr>
                                <td><label for="name">Full Name</label></td>
                                <td>
                                    <form:input type="text" path="fullName" name="name" />
                                </td>
                            </tr>
                            <tr>
                                <td> <label for="address">Address</label>
                                </td>
                                <td>
                                    <form:input type="text" path="address" name="address" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <button type="submit">Create</button>
                                </td>
                            </tr>
                        </table>

                    </form:form>
                </div>


            </body>

            </html>