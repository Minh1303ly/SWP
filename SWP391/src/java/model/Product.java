/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;
import lombok.Data;



@Data
public class Product {
    private int id;
    private int categoryId;
    private int discountId;
    private int statusId;
    private int brandId;
    private String name;
    private int quantity;
    private float price;
    private String size;
    private String color;
    private String description;
    private String img1;
    private String img2;
    private Date createdAt;
    private Date modifiedAt;

    private Brand brand;
    private Discount discount;
    private ProductStatus productStatus;
    private Category categories;
    
   
}