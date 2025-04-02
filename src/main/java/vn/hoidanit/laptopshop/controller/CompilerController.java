package vn.hoidanit.laptopshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import vn.hoidanit.laptopshop.service.CompilerService;
import vn.hoidanit.laptopshop.domain.CompilationResult;
import vn.hoidanit.laptopshop.domain.TestCase;
import vn.hoidanit.laptopshop.domain.TestResult;

import java.util.ArrayList;
import java.util.List;

@Controller
public class CompilerController {

    @Autowired
    private CompilerService compilerService;

    @GetMapping("/")
    public String getHome() {
        return "home";
    }

    @GetMapping("/cau1")
    public String index(Model model) {
        // Mã C++ mặc định để hiển thị trong trình soạn thảo
        String defaultCode = "// Viết code để tính tổng của 2 số\n"
                + "#include <iostream>\n"
                + "using namespace std;\n\n"
                + "int sum(int a, int b) {\n"
                + "    return a + b;\n"
                + "}\n\n"
                + "int main() {\n"
                + "    int a, b;\n"
                + "    cin >> a >> b;\n"
                + "    cout << sum(a, b) << endl;\n"
                + "    return 0;\n"
                + "}";

        // Test cases mặc định
        List<TestCase> defaultTestCases = new ArrayList<>();
        defaultTestCases.add(new TestCase("5 7", "12"));
        defaultTestCases.add(new TestCase("10 -3", "7"));

        model.addAttribute("code", defaultCode);
        model.addAttribute("testCases", defaultTestCases);

        return "index";
    }

    @GetMapping("/cau2")
    public String cau2(Model model) {
        String defaultCode = "// Viết code để tính tích của 2 số\n"
                + "#include <iostream>\n"
                + "using namespace std;\n\n"
                + "int multiply(int a, int b) {\n"
                + "    return a * b;\n"
                + "}\n\n"
                + "int main() {\n"
                + "    int a, b;\n"
                + "    cin >> a >> b;\n"
                + "    cout << multiply(a, b) << endl;\n"
                + "    return 0;\n"
                + "}";

        List<TestCase> defaultTestCases = new ArrayList<>();
        defaultTestCases.add(new TestCase("3 4", "12"));
        defaultTestCases.add(new TestCase("5 -2", "-10"));

        model.addAttribute("code", defaultCode);
        model.addAttribute("testCases", defaultTestCases);

        return "index";
    }

    @GetMapping("/cau3")
    public String cau3(Model model) {
        // Mã C++ mặc định để tính số Fibonacci thứ n
        String defaultCode = "// Viết code để tính số Fibonacci thứ n\n"
                + "#include <iostream>\n"
                + "using namespace std;\n\n"
                + "long long fibonacci(int n) {\n"
                + "    if (n <= 0) return 0;\n"
                + "    if (n == 1) return 1;\n"
                + "    long long a = 0, b = 1;\n"
                + "    for (int i = 2; i <= n; i++) {\n"
                + "        long long temp = a + b;\n"
                + "        a = b;\n"
                + "        b = temp;\n"
                + "    }\n"
                + "    return b;\n"
                + "}\n\n"
                + "int main() {\n"
                + "    int n;\n"
                + "    cin >> n;\n"
                + "    cout << fibonacci(n) << endl;\n"
                + "    return 0;\n"
                + "}";

        // Test cases mặc định cho bài toán tính số Fibonacci
        List<TestCase> defaultTestCases = new ArrayList<>();
        defaultTestCases.add(new TestCase("0", "0")); // F(0) = 0
        defaultTestCases.add(new TestCase("1", "1")); // F(1) = 1
        defaultTestCases.add(new TestCase("5", "5")); // F(5) = 5 (0, 1, 1, 2, 3, 5)
        defaultTestCases.add(new TestCase("10", "55")); // F(10) = 55 (0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55)

        // Thêm dữ liệu vào model để hiển thị trong view
        model.addAttribute("code", defaultCode);
        model.addAttribute("testCases", defaultTestCases);

        return "index"; // Sử dụng cùng view "index" như /cau1 và /cau2
    }

    @GetMapping("/cau4")
    public String cau4(Model model) {
        // Mã C++ mặc định để kiểm tra số nguyên tố
        String defaultCode = "// Viết code để kiểm tra số nguyên tố\n"
                + "#include <iostream>\n"
                + "using namespace std;\n\n"
                + "bool isPrime(int n) {\n"
                + "    if (n <= 1) return false;\n"
                + "    for (int i = 2; i * i <= n; i++) {\n"
                + "        if (n % i == 0) return false;\n"
                + "    }\n"
                + "    return true;\n"
                + "}\n\n"
                + "int main() {\n"
                + "    int n;\n"
                + "    cin >> n;\n"
                + "    if (isPrime(n)) cout << \"true\" << endl;\n"
                + "    else cout << \"false\" << endl;\n"
                + "    return 0;\n"
                + "}";

        // Test cases mặc định cho bài toán kiểm tra số nguyên tố
        List<TestCase> defaultTestCases = new ArrayList<>();
        defaultTestCases.add(new TestCase("2", "true")); // 2 là số nguyên tố
        defaultTestCases.add(new TestCase("4", "false")); // 4 không phải số nguyên tố
        defaultTestCases.add(new TestCase("17", "true")); // 17 là số nguyên tố
        defaultTestCases.add(new TestCase("0", "false")); // 0 không phải số nguyên tố

        // Thêm dữ liệu vào model để hiển thị trong view
        model.addAttribute("code", defaultCode);
        model.addAttribute("testCases", defaultTestCases);

        return "index"; // Sử dụng cùng view "index" như các câu trước
    }

    @GetMapping("/cau5")
    public String cau5(Model model) {
        // Mã C++ mặc định để sinh hoán vị bằng quay lui
        String defaultCode = "// Sinh tất cả hoán vị của n số từ 1 đến n bằng quay lui\n"
                + "#include <iostream>\n"
                + "using namespace std;\n\n"
                + "int n;\n"
                + "int arr[100];\n"
                + "bool used[100];\n\n"
                + "void print() {\n"
                + "    for (int i = 1; i <= n; i++) {\n"
                + "        cout << arr[i];\n"
                + "        if (i < n) cout << \" \";\n"
                + "    }\n"
                + "    cout << endl;\n"
                + "}\n\n"
                + "void backtrack(int k) {\n"
                + "    if (k > n) {\n"
                + "        print();\n"
                + "        return;\n"
                + "    }\n"
                + "    for (int i = 1; i <= n; i++) {\n"
                + "        if (!used[i]) {\n"
                + "            arr[k] = i;\n"
                + "            used[i] = true;\n"
                + "            backtrack(k + 1);\n"
                + "            used[i] = false;\n"
                + "        }\n"
                + "    }\n"
                + "}\n\n"
                + "int main() {\n"
                + "    cin >> n;\n"
                + "    for (int i = 1; i <= n; i++) used[i] = false;\n"
                + "    backtrack(1);\n"
                + "    return 0;\n"
                + "}";

        // Test cases mặc định cho bài toán sinh hoán vị
        List<TestCase> defaultTestCases = new ArrayList<>();
        defaultTestCases.add(new TestCase("2", "1 2\n2 1")); // Hoán vị của {1, 2}
        defaultTestCases.add(new TestCase("3", "1 2 3\n1 3 2\n2 1 3\n2 3 1\n3 1 2\n3 2 1")); // Hoán vị của {1, 2, 3}

        // Thêm dữ liệu vào model để hiển thị trong view
        model.addAttribute("code", defaultCode);
        model.addAttribute("testCases", defaultTestCases);

        return "index"; // Sử dụng cùng view "index" như các câu trước
    }

    @PostMapping("/compile")
    public String compile(@RequestParam("code") String code,
            @RequestParam("inputData") List<String> inputs,
            @RequestParam("expectedData") List<String> expectedOutputs,
            Model model) {

        List<TestCase> testCases = new ArrayList<>();

        // Tạo list test cases từ dữ liệu được gửi từ form
        for (int i = 0; i < inputs.size(); i++) {
            TestCase testCase = new TestCase();
            testCase.setInput(inputs.get(i));

            // Đảm bảo rằng có đủ expected outputs cho mỗi input
            if (i < expectedOutputs.size()) {
                testCase.setExpectedOutput(expectedOutputs.get(i));
            } else {
                testCase.setExpectedOutput("");
            }

            testCases.add(testCase);
        }

        // Chạy các test cases
        List<TestResult> results = compilerService.runTestCases(code, testCases);

        // Trả về mọi thứ để có thể hiển thị lại trong view
        model.addAttribute("code", code);
        model.addAttribute("testCases", testCases);
        model.addAttribute("results", results);

        // Tính tổng kết kết quả
        int totalTests = results.size();
        int passedTests = 0;
        for (TestResult result : results) {
            if (result.isPassed()) {
                passedTests++;
            }
        }

        model.addAttribute("totalTests", totalTests);
        model.addAttribute("passedTests", passedTests);

        return "result";
    }

    @PostMapping("/addTestCase")
    public String addTestCase(@RequestParam("code") String code,
            @RequestParam("inputData") List<String> inputs,
            @RequestParam("expectedData") List<String> expectedOutputs,
            Model model) {

        List<TestCase> testCases = new ArrayList<>();

        // Tạo list test cases từ dữ liệu được gửi từ form
        for (int i = 0; i < inputs.size(); i++) {
            TestCase testCase = new TestCase();
            testCase.setInput(inputs.get(i));

            // Đảm bảo rằng có đủ expected outputs cho mỗi input
            if (i < expectedOutputs.size()) {
                testCase.setExpectedOutput(expectedOutputs.get(i));
            } else {
                testCase.setExpectedOutput("");
            }

            testCases.add(testCase);
        }

        // Thêm một test case trống mới
        testCases.add(new TestCase("", ""));

        model.addAttribute("code", code);
        model.addAttribute("testCases", testCases);

        return "index";
    }
}
