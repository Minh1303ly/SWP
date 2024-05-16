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
public class Discount {
    private int id;
    private String name;
    private String description;
    private int discountPercent;
    private boolean active;
    private Date createdAt;
    private Date modifiedAt;

    public Discount() {
    }

    public Discount(int id, String name, String description, int discountPercent, boolean active, Date createdAt, Date modifiedAt) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.discountPercent = discountPercent;
        this.active = active;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
    }

    @Override
    public String toString() {
        return "Discount{" + "id=" + id + ", name=" + name + ", description=" + description + ", discountPercent=" + discountPercent + ", active=" + active + ", createdAt=" + createdAt + ", modifiedAt=" + modifiedAt + '}';
    }

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

    public int getDiscountPercent() {
        return discountPercent;
    }

    public void setDiscountPercent(int discountPercent) {
        this.discountPercent = discountPercent;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
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
