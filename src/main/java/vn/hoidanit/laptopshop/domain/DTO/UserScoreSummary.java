package vn.hoidanit.laptopshop.domain.DTO;

public class UserScoreSummary {
    private Long userId; // Ánh xạ với ID
    private String userName; // Ánh xạ với HOTEN
    private Double averageScore; // Ánh xạ với DIEM_TRUNG_BINH

    // Constructor
    public UserScoreSummary() {
    }

    public UserScoreSummary(Long userId, String userName, Double averageScore) {
        this.userId = userId;
        this.userName = userName;
        this.averageScore = averageScore;
    }

    // Getters and Setters
    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Double getAverageScore() {
        return averageScore;
    }

    public void setAverageScore(Double averageScore) {
        this.averageScore = averageScore;
    }
}