/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Đạt
 */
public class CartItem {
    private int id;
    private int sessionId;
    private int productId;
    private int quantity;
    private Date createdAt;
    private Date modifiedAt;

    public CartItem() {
    }

    public CartItem(int id, int sessionId, int productId, int quantity, Date createdAt, Date modifiedAt) {
        this.id = id;
        this.sessionId = sessionId;
        this.productId = productId;
        this.quantity = quantity;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
    }

    @Override
    public String toString() {
        return "CartItem{" + "id=" + id + ", sessionId=" + sessionId + ", productId=" + productId + ", quantity=" + quantity + ", createdAt=" + createdAt + ", modifiedAt=" + modifiedAt + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSessionId() {
        return sessionId;
    }

    public void setSessionId(int sessionId) {
        this.sessionId = sessionId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
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
