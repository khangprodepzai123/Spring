<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>C++ Black Box Testing</title>
            <link rel="stylesheet" href="/css/index.css">

        </head>

        <body>
            <div class="container">
                <div class="header">
                    <h1>C++ Black Box Testing</h1>
                    <div class="mode-selector">
                        <label for="mode-select">Testing Mode:</label>
                        <select id="mode-select" name="mode">
                            <option value="black-box" selected>Black Box</option>
                            <option value="white-box">White Box</option>
                        </select>
                    </div>
                </div>

                <form action="/compile" method="post">
                    <div class="code-section">
                        <label for="code">C++ Code:</label>
                        <textarea id="code" name="code" placeholder="Nhập code C++ của bạn ở đây...">${code}</textarea>
                    </div>

                    <div class="test-cases">
                        <h2>Test Cases</h2>
                        <c:forEach items="${testCases}" var="testCase" varStatus="status">
                            <div class="test-case">
                                <div class="test-input">
                                    <span>Input:</span>
                                    <input type="text" name="inputData" value="${testCase.input}">
                                </div>
                                <div class="expected-output">
                                    <span>Expected Output:</span>
                                    <input type="text" name="expectedData" value="${testCase.expectedOutput}">
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                    <div class="button-group">
                        <input type="submit" value="Chạy kiểm thử">
                        <button class="add-test-case" type="submit" formaction="/addTestCase">Thêm test case</button>
                    </div>
                </form>
            </div>
        </body>

        </html>