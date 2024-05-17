/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nhat Anh
 */
public class SubProducts {
    private String name;
    private int price;
    private int[] size;
    private String[] color;
    private String description;
    private String img1;
    private String img2;
    private int rating;
    private int discount;
    private String discount_status;
    private String status;
    public String getDiscount_status() {
        return discount_status;
    }

    public void setDiscount_status(String discount_status) {
        this.discount_status = discount_status;
    }
    

    public SubProducts() {
    }

    public SubProducts(String name, int price, int[] size, String[] color, 
            String description, String img1, String img2, 
            int rating, int discount,String discount_status, String status) {
        this.name = name;
        this.price = price;
        this.size = size;
        this.color = color;
        this.description = description;
        this.img1 = img1;
        this.img2 = img2;
        this.rating = rating;
        this.discount = discount;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int[] getSize() {
        return size;
    }

    public void setSize(int[] size) {
        this.size = size;
    }

    public String[] getColor() {
        return color;
    }

    public void setColor(String[] color) {
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

    @Override
    public String toString() {
        return "SubProducts{" + "name=" + name + ", price=" + price + ", size=" + size + ", color=" + color + ", description=" + description + ", img1=" + img1 + ", img2=" + img2 + ", rating=" + rating + ", discount=" + discount + ", discount_status=" + discount_status + ", status=" + status + '}';
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
           
}
