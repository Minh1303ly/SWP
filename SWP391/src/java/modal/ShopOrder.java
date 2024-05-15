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
public class ShopOrder {
     private int id;
    private int userId;
    private int statusId;
    private String email;
    private String address;
    private float orderTotal;
    private String recipient;
    private String recipientPhone;
    private Date createdAt;
    private Date modifiedAt;

    public ShopOrder() {
    }

    @Override
    public String toString() {
        return "ShopOrder{" + "id=" + id + ", userId=" + userId + ", statusId=" + statusId + ", email=" + email + ", address=" + address + ", orderTotal=" + orderTotal + ", recipient=" + recipient + ", recipientPhone=" + recipientPhone + ", createdAt=" + createdAt + ", modifiedAt=" + modifiedAt + '}';
    }

    public ShopOrder(int id, int userId, int statusId, String email, String address, float orderTotal, String recipient, String recipientPhone, Date createdAt, Date modifiedAt) {
        this.id = id;
        this.userId = userId;
        this.statusId = statusId;
        this.email = email;
        this.address = address;
        this.orderTotal = orderTotal;
        this.recipient = recipient;
        this.recipientPhone = recipientPhone;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public float getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(float orderTotal) {
        this.orderTotal = orderTotal;
    }

    public String getRecipient() {
        return recipient;
    }

    public void setRecipient(String recipient) {
        this.recipient = recipient;
    }

    public String getRecipientPhone() {
        return recipientPhone;
    }

    public void setRecipientPhone(String recipientPhone) {
        this.recipientPhone = recipientPhone;
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
