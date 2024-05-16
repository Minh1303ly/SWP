package model;
import java.util.Date;
public class Categories {

    private int id; 
    private int status_id;
    private String name;
    private Date createdAt;
    private Date modifiedAt;

    public Categories(int status_id, String name, Date createdAt, Date modifiedAt) {
        this.status_id = status_id;
        this.name = name;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
    }
    public Categories() {
    }
    
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getStatus_id() {
        return status_id;
    }
    public void setStatus_id(int statusId) {
        this.status_id = statusId;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public Date getCreatedAt() {
        return createdAt;
    }
    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }
    public Date getModifiedAt() {
        return modifiedAt;
    }
    public void setModifiedAt(Date modifiedAt) {
        this.modifiedAt = modifiedAt;
    }

    @Override
    public String toString() {
        return "Categories{" + "id=" + id + ", status_id=" + status_id + ", name=" + name + ", createdAt=" + createdAt + ", modifiedAt=" + modifiedAt + '}';
    }
    
}
