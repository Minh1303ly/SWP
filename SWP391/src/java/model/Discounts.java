package model;
import java.util.Date;

public class Discounts {
    private int id; // int
    private String name; // nvarchar(255)
    private String description; // text
    private int discount_percent; // int
    private boolean active; // bit
    private Date created_at; // datetime
    private Date modified_at; // datetime

    // Constructor
    public Discounts(String name, String description, int discount_percent, boolean active, Date created_at, Date modified_at) {
        this.name = name;
        this.description = description;
        this.discount_percent = discount_percent;
        this.active = active;
        this.created_at = created_at;
        this.modified_at = modified_at;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getDiscount_percent() {
        return discount_percent;
    }

    public void setDiscount_percent(int discount_percent) {
        this.discount_percent = discount_percent;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getModified_at() {
        return modified_at;
    }

    public void setModified_at(Date modified_at) {
        this.modified_at = modified_at;
    }
}

