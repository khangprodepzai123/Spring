package vn.hoidanit.laptopshop.domain.DTO;

public class UserRankingSummary {
    private Long userId; // Ánh xạ với U.ID
    private String fullName; // Ánh xạ với U.HOTEN
    private String email; // Ánh xạ với U.EMAIL
    private Long problemCount; // Ánh xạ với SOBAICODE

    // Constructor
    public UserRankingSummary() {
    }

    public UserRankingSummary(Long userId, String fullName, String email, Long problemCount) {
        this.userId = userId;
        this.fullName = fullName;
        this.email = email;
        this.problemCount = problemCount;
    }

    // Getters and Setters
    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getProblemCount() {
        return problemCount;
    }

    public void setProblemCount(Long problemCount) {
        this.problemCount = problemCount;
    }
}