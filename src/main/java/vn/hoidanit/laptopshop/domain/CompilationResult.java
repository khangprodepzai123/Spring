package vn.hoidanit.laptopshop.domain;

public class CompilationResult {
    private boolean success;
    private String output;
    private String errors;

    public CompilationResult(boolean success, String output, String errors) {
        this.success = success;
        this.output = output;
        this.errors = errors;
    }

    public boolean isSuccess() {
        return success;
    }

    public String getOutput() {
        return output;
    }

    public String getErrors() {
        return errors;
    }
}