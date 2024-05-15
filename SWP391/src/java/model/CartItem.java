import java.util.Date;

public class CartItem {
    private int id; // int
    private int session_id; // int
    private int product_id; // int
    private int quantity; // int
    private String name; // nvarchar(255)
    private String description; // text
    private int discount_percent; // int
    private boolean active; // bit
    private Date created_at; // datetime
    private Date modified_at; // datetime

    
    public CartItem() {
    }

    // Constructor
    public CartItem(int session_id, int product_id, int quantity, String name, String description, int discount_percent, boolean active, Date created_at, Date modified_at) {
        this.session_id = session_id;
        this.product_id = product_id;
        this.quantity = quantity;
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

    public int getSession_id() {
        return session_id;
    }

    public void setSession_id(int session_id) {
        this.session_id = session_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
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
