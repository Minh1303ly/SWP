package model;
import java.util.Date;

public class OrderDetails {
    private int id; // int
    private int product_id; // int
    private int shop_order_id; // int
    private int quantity; // int
    private float price; // float
    private Date created_at; // datetime
    private Date modified_at; // datetime

    // Constructor
    public OrderDetails(int product_id, int shop_order_id, int quantity, float price, Date created_at, Date modified_at) {
        this.product_id = product_id;
        this.shop_order_id = shop_order_id;
        this.quantity = quantity;
        this.price = price;
        this.created_at = created_at;
        this.modified_at = modified_at;
    }

    public OrderDetails() {
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

    public int getShop_order_id() {
        return shop_order_id;
    }

    public void setShop_order_id(int shop_order_id) {
        this.shop_order_id = shop_order_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
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
