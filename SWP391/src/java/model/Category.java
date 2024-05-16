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
public class Category {
    private int id;
    private int statusId;
    private String name;
    private Date createdAt;
    private Date modifiedAt;

    public Category() {
    }

    public Category(int id, int statusId, String name, Date createdAt, Date modifiedAt) {
        this.id = id;
        this.statusId = statusId;
        this.name = name;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
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
        return "Category{" + "id=" + id + ", statusId=" + statusId + ", name=" + name + ", createdAt=" + createdAt + ", modifiedAt=" + modifiedAt + '}';
    }
    
}
