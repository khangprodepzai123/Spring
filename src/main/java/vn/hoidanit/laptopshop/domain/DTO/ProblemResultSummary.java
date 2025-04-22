package vn.hoidanit.laptopshop.domain.DTO;

public class ProblemResultSummary {
    private String problemId; // Ánh xạ với PROBLEM_ID
    private String problemName; // Ánh xạ với TEN_BAICODE
    private Long correctSubmissions; // Ánh xạ với SO_LUOT_DUNG
    private Long incorrectSubmissions; // Ánh xạ với SO_LUOT_SAI
    private Long totalSubmissions; // Ánh xạ với TONG_LUOT_NOP
    private String correctPercentage; // Ánh xạ với TY_LE_DUNG

    // Constructor
    public ProblemResultSummary() {
    }

    public ProblemResultSummary(String problemId, String problemName, Long correctSubmissions,
            Long incorrectSubmissions, Long totalSubmissions, String correctPercentage) {
        this.problemId = problemId;
        this.problemName = problemName;
        this.correctSubmissions = correctSubmissions;
        this.incorrectSubmissions = incorrectSubmissions;
        this.totalSubmissions = totalSubmissions;
        this.correctPercentage = correctPercentage;
    }

    // Getters and Setters
    public String getProblemId() {
        return problemId;
    }

    public void setProblemId(String problemId) {
        this.problemId = problemId;
    }

    public String getProblemName() {
        return problemName;
    }

    public void setProblemName(String problemName) {
        this.problemName = problemName;
    }

    public Long getCorrectSubmissions() {
        return correctSubmissions;
    }

    public void setCorrectSubmissions(Long correctSubmissions) {
        this.correctSubmissions = correctSubmissions;
    }

    public Long getIncorrectSubmissions() {
        return incorrectSubmissions;
    }

    public void setIncorrectSubmissions(Long incorrectSubmissions) {
        this.incorrectSubmissions = incorrectSubmissions;
    }

    public Long getTotalSubmissions() {
        return totalSubmissions;
    }

    public void setTotalSubmissions(Long totalSubmissions) {
        this.totalSubmissions = totalSubmissions;
    }

    public String getCorrectPercentage() {
        return correctPercentage;
    }

    public void setCorrectPercentage(String correctPercentage) {
        this.correctPercentage = correctPercentage;
    }
}