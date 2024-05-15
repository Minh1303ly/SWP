import java.util.Date;

public class Products {
    private int id;
    private int category_id;
    private int discount_id;
    private int status_id;
    private int brand_id;
    private String name;
    private int quantity;
    private float price;
    private String size;
    private String color;
    private String description;
    private String img1;
    private String img2;
    private Date created_at;
    private Date modified_at;

    

    public Products(int category_id, int discount_id, int status_id, int brand_id, String name, int quantity,
            float price, String size, String color, String description, String img1, String img2, Date created_at,
            Date modified_at) {
        this.category_id = category_id;
        this.discount_id = discount_id;
        this.status_id = status_id;
        this.brand_id = brand_id;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.size = size;
        this.color = color;
        this.description = description;
        this.img1 = img1;
        this.img2 = img2;
        this.created_at = created_at;
        this.modified_at = modified_at;
    }

    public Products() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    // Getters and Setters
    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public int getDiscount_id() {
        return discount_id;
    }

    public void setDiscount_id(int discount_id) {
        this.discount_id = discount_id;
    }

    public int getStatus_id() {
        return status_id;
    }

    public void setStatus_id(int status_id) {
        this.status_id = status_id;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
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

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
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

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getModified_at() {
        return modified_at;
    }

    public void setModified_at(Date modified_at) {
        this.modified_at = modified_at;
    }
}
