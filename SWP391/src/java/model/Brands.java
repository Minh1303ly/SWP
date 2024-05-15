import java.util.Date;

public class Brands{
    private int id;
    private int status_id;
    private String name;
    private Date created_at;
    private Date modified_at;
    public Brands() {
    }
    public Brands(int status_id, String name, Date created_at, Date modified_at) {
        this.status_id = status_id;
        this.name = name;
        this.created_at = created_at;
        this.modified_at = modified_at;
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
    public void setStatus_id(int status_id) {
        this.status_id = status_id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
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