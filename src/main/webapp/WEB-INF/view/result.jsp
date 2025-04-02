<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>C++ Compilation Results</title>
            <style>
                body {
                    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                    margin: 0;
                    padding: 20px;
                    background-color: #f5f5f5;
                    color: #333;
                }

                .container {
                    max-width: 1200px;
                    margin: 0 auto;
                    background: white;
                    padding: 20px;
                    border-radius: 8px;
                    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                }

                h1,
                h2 {
                    color: #2c3e50;
                }

                h1 {
                    text-align: center;
                    margin-bottom: 20px;
                }

                .summary {
                    background-color: #f8f9fa;
                    padding: 15px;
                    border-radius: 5px;
                    margin-bottom: 20px;
                    border-left: 5px solid #3498db;
                }

                .test-results {
                    margin-top: 20px;
                }

                .result-item {
                    margin-bottom: 15px;
                    padding: 15px;
                    border-radius: 5px;
                }

                .pass {
                    background-color: #d4f1db;
                    border-left: 5px solid #2ecc71;
                }

                .fail {
                    background-color: #fce1e0;
                    border-left: 5px solid #e74c3c;
                }

                .output-value {
                    font-family: Consolas, 'Courier New', monospace;
                    margin-top: 10px;
                    padding: 8px;
                    background-color: #f9f9f9;
                    border: 1px solid #eee;
                    border-radius: 3px;
                    white-space: pre-wrap;
                }

                .code-section {
                    margin-bottom: 20px;
                }

                textarea {
                    width: 100%;
                    height: 250px;
                    border: 1px solid #ddd;
                    border-radius: 4px;
                    padding: 10px;
                    font-family: Consolas, 'Courier New', monospace;
                    font-size: 14px;
                    resize: vertical;
                    background-color: #f8f8f8;
                }

                .button-group {
                    display: flex;
                    gap: 10px;
                    margin: 20px 0;
                }

                button,
                input[type="submit"] {
                    padding: 10px 20px;
                    background-color: #3498db;
                    color: white;
                    border: none;
                    border-radius: 4px;
                    cursor: pointer;
                    font-size: 16px;
                    transition: background-color 0.3s;
                }

                button:hover,
                input[type="submit"]:hover {
                    background-color: #2980b9;
                }

                .back-button {
                    background-color: #95a5a6;
                }

                .back-button:hover {
                    background-color: #7f8c8d;
                }

                .test-case {
                    display: none;
                }
            </style>
        </head>

        <body>
            <div class="container">
                <h1>Kết quả thực thi</h1>

                <div class="summary">
                    <h2>Tổng kết</h2>
                    <p>Đã vượt qua ${passedTests} / ${totalTests} test cases.</p>
                </div>

                <form action="/" method="get">
                    <div class="button-group">
                        <input type="submit" value="Quay lại chỉnh sửa">
                    </div>
                </form>

                <div class="code-section">
                    <h2>Code C++ đã thực thi</h2>
                    <textarea readonly>${code}</textarea>
                </div>

                <div class="test-results">
                    <h2>Chi tiết kết quả</h2>

                    <c:forEach items="${results}" var="result" varStatus="status">
                        <div class="result-item ${result.passed ? 'pass' : 'fail'}">
                            <h3>Test Case ${status.index + 1}: ${result.passed ? 'Passed' : 'Failed'}</h3>
                            <p><strong>Input:</strong> ${result.input}</p>
                            <p><strong>Expected Output:</strong> ${result.expectedOutput}</p>
                            <p><strong>Actual Output:</strong></p>
                            <div class="output-value">${result.actualOutput}</div>

                            <c:if test="${not empty result.error}">
                                <p><strong>Error:</strong></p>
                                <div class="output-value">${result.error}</div>
                            </c:if>
                        </div>

                    </c:forEach>
                </div>

                <form action="/" method="get">
                    <input type="submit" value="Quay lại chỉnh sửa">
                </form>

                <!-- Hidden form để lưu trữ test cases cho khi quay lại -->
                <form id="testCasesForm" action="/" method="post" style="display: none;">
                    <c:forEach items="${testCases}" var="testCase">
                        <div class="test-case">
                            <input type="hidden" name="inputData" value="${testCase.input}">
                            <input type="hidden" name="expectedData" value="${testCase.expectedOutput}">
                        </div>
                    </c:forEach>
                    <input type="hidden" name="code" value="${code}">
                </form>
            </div>
        </body>

        </html>