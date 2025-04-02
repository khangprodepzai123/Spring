package vn.hoidanit.laptopshop.domain;

public class TestResult {
    private boolean passed;
    private String input;
    private String expectedOutput;
    private String actualOutput;
    private String error;

    public TestResult(boolean passed, String input, String expectedOutput, String actualOutput, String error) {
        this.passed = passed;
        this.input = input;
        this.expectedOutput = expectedOutput;
        this.actualOutput = actualOutput;
        this.error = error;
    }

    public boolean isPassed() {
        return passed;
    }

    public String getInput() {
        return input;
    }

    public String getExpectedOutput() {
        return expectedOutput;
    }

    public String getActualOutput() {
        return actualOutput;
    }

    public String getError() {
        return error;
    }
}
