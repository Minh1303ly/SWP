/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

/**
 *
 * @author Nhat Anh
 */
public class Filter {
    private String service;
    private String nameSearch;
    private String category;
    private String subCategory;
    private String[] color;
    private int[] size;
    private int[] price;

    public Filter() {
    }

    public Filter(String service, String nameSearch, String category, String subCategory, String[] color, int[] size, int[] price) {
        this.service = service;
        this.nameSearch = nameSearch;
        this.category = category.replace("_", " ");
        this.subCategory = subCategory.replace("_", " ");
        this.color = color;
        this.size = size;
        this.price = price;
    }

    
    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getNameSearch() {
        return nameSearch;
    }

    public void setNameSearch(String nameSearch) {
        this.nameSearch = nameSearch;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSubCategory() {
        return subCategory;
    }

    public void setSubCategory(String subCategory) {
        this.subCategory = subCategory;
    }

    public String[] getColor() {
        return color;
    }

    public void setColor(String[] color) {
        this.color = color;
    }

    public int[] getSize() {
        return size;
    }

    public void setSize(int[] size) {
        this.size = size;
    }

    public int[] getPrice() {
        return price;
    }

    public void setPrice(int[] price) {
        this.price = price;
    }
    
    
}
