package vn.hoidanit.laptopshop.service;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.CompilationResult;
import vn.hoidanit.laptopshop.domain.TestCase;
import vn.hoidanit.laptopshop.domain.TestResult;

import java.io.*;
import java.nio.file.*;
import java.util.*;
import java.util.concurrent.*;

@Service
public class CompilerService {

    private final ExecutorService executorService = Executors.newFixedThreadPool(5);

    public CompilationResult compileCppCode(String code, Path tempDir) throws IOException {
        // Không tạo thư mục mới, dùng tempDir được truyền vào
        if (!Files.isWritable(tempDir)) {
            cleanupTempDirectory(tempDir);
            return new CompilationResult(false, "", "Lỗi: Không có quyền ghi vào thư mục " + tempDir);
        }

        Path cppFile = tempDir.resolve("solution.cpp");
        Files.write(cppFile, code.getBytes());

        System.out.println("Mã C++ được gửi:\n" + code);

        try {
            Path executableFile;
            if (System.getProperty("os.name").toLowerCase().contains("win")) {
                executableFile = tempDir.resolve("solution.exe");
            } else {
                executableFile = tempDir.resolve("solution");
            }

            String gppPath = "D:\\work\\c++\\bin\\g++.exe";
            File gppFile = new File(gppPath);
            if (!gppFile.exists() || !gppFile.canExecute()) {
                cleanupTempDirectory(tempDir);
                return new CompilationResult(false, "",
                        "Lỗi: Không tìm thấy hoặc không thể chạy g++.exe tại " + gppPath);
            }

            List<String> command = Arrays.asList(gppPath, "-std=c++17", "-o", executableFile.toString(),
                    cppFile.toString());
            System.out.println("Chạy lệnh g++: " + String.join(" ", command));

            ProcessBuilder pb = new ProcessBuilder(command);
            pb.directory(tempDir.toFile());

            Map<String, String> env = pb.environment();
            String currentPath = env.get("PATH");
            String minGWPath = "D:\\work\\c++\\bin";
            env.put("PATH", minGWPath + (currentPath != null ? ";" + currentPath : ""));
            System.out.println("PATH được đặt cho g++: " + env.get("PATH"));

            Process process = pb.start();

            StringBuilder stdout = new StringBuilder();
            StringBuilder stderr = new StringBuilder();

            try (BufferedReader stdoutReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                    BufferedReader stderrReader = new BufferedReader(new InputStreamReader(process.getErrorStream()))) {
                String line;
                while ((line = stdoutReader.readLine()) != null) {
                    stdout.append(line).append("\n");
                }
                while ((line = stderrReader.readLine()) != null) {
                    stderr.append(line).append("\n");
                }
            }

            boolean completed = process.waitFor(10, TimeUnit.SECONDS);
            if (!completed) {
                process.destroyForcibly();
                cleanupTempDirectory(tempDir);
                return new CompilationResult(false, "", "Biên dịch vượt quá thời gian cho phép (10 giây)");
            }

            int exitCode = process.exitValue();
            String stdoutStr = stdout.toString().trim();
            String stderrStr = stderr.toString().trim();

            System.out.println("g++ exit code: " + exitCode);
            System.out.println("stdout: " + stdoutStr);
            System.out.println("stderr: " + stderrStr);

            if (exitCode != 0) {
                cleanupTempDirectory(tempDir);
                String errorMessage = stderrStr.isEmpty() ? stdoutStr : stderrStr;
                String additionalInfo = Files.exists(executableFile) ? "File thực thi được tạo nhưng biên dịch thất bại"
                        : "Không tạo được file thực thi";
                return new CompilationResult(false, errorMessage, "Lỗi biên dịch từ g++: "
                        + (errorMessage.isEmpty() ? "Không có thông báo lỗi chi tiết. " + additionalInfo
                                : errorMessage));
            }

            Thread.sleep(500); // Chờ 0.5 giây để file thực thi được tạo

            if (!Files.exists(executableFile)) {
                System.out.println("File thực thi không tồn tại tại: " + executableFile.toString());
                cleanupTempDirectory(tempDir);
                return new CompilationResult(false, "", "Lỗi: Biên dịch thành công nhưng không tạo được file thực thi");
            } else {
                System.out.println("File thực thi được tạo tại: " + executableFile.toString());
            }

            return new CompilationResult(true, stdoutStr, "");
        } catch (IOException e) {
            cleanupTempDirectory(tempDir);
            return new CompilationResult(false, "", "Lỗi khi chạy g++: " + e.getMessage());
        } catch (InterruptedException e) {
            cleanupTempDirectory(tempDir);
            return new CompilationResult(false, "", "Quá trình biên dịch bị gián đoạn: " + e.getMessage());
        } catch (Exception e) {
            cleanupTempDirectory(tempDir);
            return new CompilationResult(false, "", "Lỗi hệ thống khi biên dịch: " + e.getMessage());
        }
    }

    public List<TestResult> runTestCases(String code, List<TestCase> testCases) {
        List<TestResult> results = new ArrayList<>();

        try {
            // Tạo thư mục tùy chỉnh một lần duy nhất
            String sessionId = UUID.randomUUID().toString();
            Path customDir = Paths.get("D:\\MyCompilerTemp");
            if (!Files.exists(customDir)) {
                Files.createDirectories(customDir);
            }
            Path tempDir = customDir.resolve("cpp-compiler-" + sessionId);
            Files.createDirectories(tempDir);

            // Lưu mã C++ vào file
            Path cppFile = tempDir.resolve("solution.cpp");
            Files.write(cppFile, code.getBytes());

            // Biên dịch mã C++ với tempDir
            CompilationResult compilationResult = compileCppCode(code, tempDir);

            if (!compilationResult.isSuccess()) {
                for (TestCase testCase : testCases) {
                    results.add(new TestResult(false, testCase.getInput(),
                            testCase.getExpectedOutput(), "",
                            "Biên dịch thất bại: " + compilationResult.getErrors()));
                }
                cleanupTempDirectory(tempDir);
                return results;
            }

            // Chạy từng test case với cùng tempDir
            for (TestCase testCase : testCases) {
                TestResult result = runTestCase(tempDir, testCase);
                results.add(result);
            }

            // Dọn dẹp thư mục tạm thời
            cleanupTempDirectory(tempDir);

        } catch (Exception e) {
            e.printStackTrace();
            for (TestCase testCase : testCases) {
                results.add(new TestResult(false, testCase.getInput(),
                        testCase.getExpectedOutput(), "",
                        "Lỗi hệ thống: " + e.getMessage()));
            }
        }

        return results;
    }

    private TestResult runTestCase(Path tempDir, TestCase testCase) {
        try {
            Path executableFile;
            if (System.getProperty("os.name").toLowerCase().contains("win")) {
                executableFile = tempDir.resolve("solution.exe");
            } else {
                executableFile = tempDir.resolve("solution");
            }

            System.out.println("Kiểm tra file thực thi tại: " + executableFile.toString());
            if (!Files.exists(executableFile)) {
                System.out.println("File thực thi không tồn tại trong runTestCase!");
                return new TestResult(false, testCase.getInput(),
                        testCase.getExpectedOutput(), "",
                        "Không tìm thấy file thực thi");
            }

            ProcessBuilder pb = new ProcessBuilder(executableFile.toString());
            pb.directory(tempDir.toFile());
            Map<String, String> env = pb.environment();
            String currentPath = env.get("PATH");
            String minGWPath = "D:\\work\\c++\\bin";
            env.put("PATH", minGWPath + (currentPath != null ? ";" + currentPath : ""));

            Process process = pb.start();

            // Gửi input
            System.out.println("Input gửi vào: " + testCase.getInput());
            try (OutputStream os = process.getOutputStream()) {
                String input = testCase.getInput();
                os.write(input.getBytes());
                os.write("\n".getBytes());
                os.flush();
                System.out.println("Input đã gửi thành công");
            }

            // Đọc output và error
            StringBuilder stdout = new StringBuilder();
            StringBuilder stderr = new StringBuilder();

            try (BufferedReader stdoutReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                    BufferedReader stderrReader = new BufferedReader(new InputStreamReader(process.getErrorStream()))) {
                String line;
                while ((line = stdoutReader.readLine()) != null) {
                    System.out.println("Đọc stdout: " + line);
                    stdout.append(line).append("\n");
                }
                while ((line = stderrReader.readLine()) != null) {
                    System.out.println("Đọc stderr: " + line);
                    stderr.append(line).append("\n");
                }
            }

            boolean completed = process.waitFor(10, TimeUnit.SECONDS);
            if (!completed) {
                process.destroyForcibly();
                System.out.println("Process bị hủy do timeout");
                return new TestResult(false, testCase.getInput(),
                        testCase.getExpectedOutput(), "",
                        "Thực thi vượt quá thời gian cho phép (10 giây)");
            }

            int exitCode = process.exitValue();
            System.out.println("Process exit code: " + exitCode);
            if (exitCode != 0) {
                return new TestResult(false, testCase.getInput(),
                        testCase.getExpectedOutput(), "",
                        "Chương trình kết thúc với mã lỗi: " + exitCode);
            }

            String output = stdout.toString().trim();
            String error = stderr.toString().trim();
            String expectedOutput = testCase.getExpectedOutput().trim();
            boolean passed = output.equals(expectedOutput);

            System.out.println("Output: " + output);
            System.out.println("Error: " + error);
            System.out.println("Expected Output: " + expectedOutput);
            System.out.println("Test passed: " + passed);

            return new TestResult(passed, testCase.getInput(),
                    testCase.getExpectedOutput(), output,
                    error.isEmpty() ? null : error);
        } catch (Exception e) {
            e.printStackTrace();
            return new TestResult(false, testCase.getInput(),
                    testCase.getExpectedOutput(), "",
                    "Lỗi thực thi: " + e.getMessage());
        }
    }

    private String readProcessOutput(InputStream inputStream) throws IOException {
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream))) {
            StringBuilder output = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                output.append(line).append("\n");
            }
            return output.toString();
        }
    }

    private void cleanupTempDirectory(Path tempDir) {
        try {
            Files.walk(tempDir)
                    .sorted(Comparator.reverseOrder())
                    .map(Path::toFile)
                    .forEach(File::delete);
        } catch (IOException e) {
            System.err.println("Không thể dọn dẹp thư mục tạm: " + e.getMessage());
        }
    }
}
