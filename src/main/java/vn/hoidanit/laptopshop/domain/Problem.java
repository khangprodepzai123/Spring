package vn.hoidanit.laptopshop.domain;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "problems")
public class Problem {
    @Id
    private String id;
    private String title;
    private String description;
    private String defaultcode;

    private String category;
    private String difficulity;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDefaultcode() {
        return defaultcode;
    }

    public void setDefaultcode(String defaultcode) {
        this.defaultcode = defaultcode;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDifficulity() {
        return difficulity;
    }

    public void setDifficulity(String difficulity) {
        this.difficulity = difficulity;
    }

}
