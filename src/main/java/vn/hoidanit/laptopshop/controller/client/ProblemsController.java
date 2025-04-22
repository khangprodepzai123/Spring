package vn.hoidanit.laptopshop.controller.client;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import vn.hoidanit.laptopshop.domain.Problem;
import vn.hoidanit.laptopshop.domain.TestCase;
import vn.hoidanit.laptopshop.service.ProblemService;

@Controller
public class ProblemsController {
    private final ProblemService problemService;

    public ProblemsController(ProblemService problemService) {
        this.problemService = problemService;
    }

    @GetMapping("/problems")
    public String getProblemsPage(Model model) {
        List<Problem> problems = this.problemService.getAllProblems();
        model.addAttribute("problems1", problems);
        return "client/problems/show";
    }

    @GetMapping("/problems/P001")
    public String p001(Model model) {
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

    @GetMapping("/problems/P002")
    public String p002(Model model) {
        // Mã C++ mặc định để hiển thị trong trình soạn thảo
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
                + "    if (isPrime(n)) cout << \"YES\" << endl;\n"
                + "    else cout << \"NO\" << endl;\n"
                + "    return 0;\n"
                + "}";

        // Test cases mặc định
        List<TestCase> defaultTestCases = new ArrayList<>();
        defaultTestCases.add(new TestCase("7", "YES"));
        defaultTestCases.add(new TestCase("4", "NO"));
        defaultTestCases.add(new TestCase("13", "YES"));
        defaultTestCases.add(new TestCase("1", "NO"));

        model.addAttribute("code", defaultCode);
        model.addAttribute("testCases", defaultTestCases);

        return "index";
    }

    @GetMapping("/problems/P003")
    public String p003(Model model) {
        // Mã C++ mặc định để hiển thị trong trình soạn thảo
        String defaultCode = "// Viết code để đảo ngược chuỗi\n"
                + "#include <iostream>\n"
                + "#include <string>\n"
                + "using namespace std;\n\n"
                + "string reverseString(string s) {\n"
                + "    string result = s;\n"
                + "    int left = 0, right = s.length() - 1;\n"
                + "    while (left < right) {\n"
                + "        swap(result[left], result[right]);\n"
                + "        left++;\n"
                + "        right--;\n"
                + "    }\n"
                + "    return result;\n"
                + "}\n\n"
                + "int main() {\n"
                + "    string s;\n"
                + "    getline(cin, s);\n"
                + "    cout << reverseString(s) << endl;\n"
                + "    return 0;\n"
                + "}";

        // Test cases mặc định
        List<TestCase> defaultTestCases = new ArrayList<>();
        defaultTestCases.add(new TestCase("Hello", "olleH"));
        defaultTestCases.add(new TestCase("12345", "54321"));
        defaultTestCases.add(new TestCase("A B C", "C B A"));
        defaultTestCases.add(new TestCase("", ""));

        model.addAttribute("code", defaultCode);
        model.addAttribute("testCases", defaultTestCases);

        return "index";
    }

    @GetMapping("/problems/fib")
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

}
