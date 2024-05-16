package model;
import java.util.Date;

public class Rating {
    private int id; // int
    private int product_id; // int
    private int user_id; // int
    private int rating; // int
    private String comment; // text
    private Date created_at; // datetime
    private Date modified_at; // datetime

    // Constructor
    public Rating(int product_id, int user_id, int rating, String comment, Date created_at, Date modified_at) {
        this.product_id = product_id;
        this.user_id = user_id;
        this.rating = rating;
        this.comment = comment;
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

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
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
