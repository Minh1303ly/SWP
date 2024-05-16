package model;
import java.util.Date;

public class ShoppingSession {
    private int id; // int
    private int user_id; // int
    private int total; // int
    private Date created_at; // datetime
    private Date modified_at; // datetime

    public ShoppingSession() {
    }

    // Constructor
    public ShoppingSession(int user_id, int total, Date created_at, Date modified_at) {
        this.user_id = user_id;
        this.total = total;
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

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
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

