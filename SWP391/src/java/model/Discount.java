/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;
import lombok.Data;

/**
 *
 * @author tungl
 */
@Data
public class Discount {
    private int id;
    private String name;
    private String description;
    private int discountPercent;
    private boolean active;
    private Date createdAt;
    private Date modifiedAt;

    public Discount(int discountPercent, boolean active) {
        this.discountPercent = discountPercent;
        this.active = active;
    }
    
    
}