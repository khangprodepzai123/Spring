package vn.hoidanit.laptopshop.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import vn.hoidanit.laptopshop.domain.DTO.ContestResultSummary;
import vn.hoidanit.laptopshop.domain.DTO.UserScoreSummary;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;

@Repository
public class StatisticsRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // RowMapper để ánh xạ thủ công các cột từ ResultSet
    private static final class ContestResultSummaryMapper implements RowMapper<ContestResultSummary> {
        @Override
        public ContestResultSummary mapRow(ResultSet rs, int rowNum) throws SQLException {
            ContestResultSummary summary = new ContestResultSummary();
            summary.setContestId(rs.getString("CONTEST_ID"));
            summary.setContestName(rs.getString("TEN_BAITHI"));
            summary.setCandidateCount(rs.getLong("SO_LUONG_THI_SINH"));
            summary.setAverageScore(rs.getDouble("DIEM_TRUNG_BINH"));
            return summary;
        }
    }

    public List<ContestResultSummary> getContestResultSummary() {
        String sql = """
                    SELECT
                        C.CONTEST_ID,
                        CT.TEN AS TEN_BAITHI,
                        COUNT(C.USER_ID) AS SO_LUONG_THI_SINH,
                        ROUND(AVG(C.DIEM), 2) AS DIEM_TRUNG_BINH
                    FROM CONTEST_RESULTS C
                    JOIN CONTESTS CT ON C.CONTEST_ID = CT.ID
                    WHERE C.TRANGTHAI = 'ĐÃ LÀM'
                    GROUP BY C.CONTEST_ID, CT.TEN
                """;

        return jdbcTemplate.query(sql, new ContestResultSummaryMapper());
    }

    // RowMapper cho UserScoreSummary
    private static final class UserScoreSummaryMapper implements RowMapper<UserScoreSummary> {
        @Override
        public UserScoreSummary mapRow(ResultSet rs, int rowNum) throws SQLException {
            UserScoreSummary summary = new UserScoreSummary();
            summary.setUserId(rs.getLong("ID")); // Sử dụng getLong vì ID là BIGINT
            summary.setUserName(rs.getString("HOTEN"));
            summary.setAverageScore(rs.getDouble("DIEM_TRUNG_BINH"));
            return summary;
        }
    }

    public List<UserScoreSummary> getTop5UsersByAverageScore() {
        String sql = """
                    SELECT
                        U.ID,
                        U.HOTEN,
                        ROUND(AVG(C.DIEM), 2) AS DIEM_TRUNG_BINH
                    FROM USERS U
                    JOIN CONTEST_RESULTS C ON U.ID = C.USER_ID
                    WHERE C.TRANGTHAI = 'ĐÃ LÀM'
                    GROUP BY U.ID, U.HOTEN
                    ORDER BY DIEM_TRUNG_BINH DESC
                    LIMIT 5
                """;
        return jdbcTemplate.query(sql, new UserScoreSummaryMapper());
    }

}
