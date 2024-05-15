/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modal;

import java.util.Date;

/**
 *
 * @author Đạt
 */
public class OrderDetail {
    private int id;
    private int productId;
    private int shopOrderId;
    private int quantity;
    private float price;
    private Date createdAt;
    private Date modifiedAt;

    public OrderDetail() {
    }

    public OrderDetail(int id, int productId, int shopOrderId, int quantity, float price, Date createdAt, Date modifiedAt) {
        this.id = id;
        this.productId = productId;
        this.shopOrderId = shopOrderId;
        this.quantity = quantity;
        this.price = price;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "id=" + id + ", productId=" + productId + ", shopOrderId=" + shopOrderId + ", quantity=" + quantity + ", price=" + price + ", createdAt=" + createdAt + ", modifiedAt=" + modifiedAt + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getShopOrderId() {
        return shopOrderId;
    }

    public void setShopOrderId(int shopOrderId) {
        this.shopOrderId = shopOrderId;
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
    
}
