package vn.hoidanit.laptopshop.domain.DTO;

public class ContestResultSummary {
    private String contestId; // Ánh xạ với CONTEST_ID
    private String contestName; // Ánh xạ với TEN_BAITHI
    private Long candidateCount; // Ánh xạ với SO_LUONG_THI_SINH
    private Double averageScore; // Ánh xạ với DIEM_TRUNG_BINH

    // Constructor
    public ContestResultSummary() {
    }

    public ContestResultSummary(String contestId, String contestName, Long candidateCount, Double averageScore) {
        this.contestId = contestId;
        this.contestName = contestName;
        this.candidateCount = candidateCount;
        this.averageScore = averageScore;
    }

    // Getters and Setters
    public String getContestId() {
        return contestId;
    }

    public void setContestId(String contestId) {
        this.contestId = contestId;
    }

    public String getContestName() {
        return contestName;
    }

    public void setContestName(String contestName) {
        this.contestName = contestName;
    }

    public Long getCandidateCount() {
        return candidateCount;
    }

    public void setCandidateCount(Long candidateCount) {
        this.candidateCount = candidateCount;
    }

    public Double getAverageScore() {
        return averageScore;
    }

    public void setAverageScore(Double averageScore) {
        this.averageScore = averageScore;
    }
}