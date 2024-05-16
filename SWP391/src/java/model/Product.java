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
public class Product {
    private int id;
    private int categoryId;
    private int discountId;
    private int statusId;
    private int brandId;
    private String name;
    private int quantity;
    private double price;
    private String size;
    private String color;
    private String description;
    private String img1;
    private String img2;
    private Date createdAt;
    private Date modifiedAt;

    public Product() {
    }

    public Product(int id, int categoryId, int discountId, int statusId, int brandId, String name, int quantity, double price, String size, String color, String description, String img1, String img2, Date createdAt, Date modifiedAt) {
        this.id = id;
        this.categoryId = categoryId;
        this.discountId = discountId;
        this.statusId = statusId;
        this.brandId = brandId;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.size = size;
        this.color = color;
        this.description = description;
        this.img1 = img1;
        this.img2 = img2;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", categoryId=" + categoryId + ", discountId=" + discountId + ", statusId=" + statusId + ", brandId=" + brandId + ", name=" + name + ", quantity=" + quantity + ", price=" + price + ", size=" + size + ", color=" + color + ", description=" + description + ", img1=" + img1 + ", img2=" + img2 + ", createdAt=" + createdAt + ", modifiedAt=" + modifiedAt + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getDiscountId() {
        return discountId;
    }

    public void setDiscountId(int discountId) {
        this.discountId = discountId;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
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
