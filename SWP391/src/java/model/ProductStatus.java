package model;
public class ProductStatus{
    private int id;
    private String name;

    
    public ProductStatus(String name) {
        this.name = name;
    }
    public ProductStatus() {
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
    
}