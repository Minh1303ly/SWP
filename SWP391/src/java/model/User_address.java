/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class User_address {
    private int id;
    private int user_id;
    private String address_line;
    private String city;
    private String country;

    public User_address() {
    }

    public User_address(int user_id, String address_line, String city, String country) {
        this.user_id = user_id;
        this.address_line = address_line;
        this.city = city;
        this.country = country;
    }

    public User_address(String address_line, String city, String country) {
        this.address_line = address_line;
        this.city = city;
        this.country = country;
    }

    public User_address(int id, int user_id, String address_line, String city, String country) {
        this.id = id;
        this.user_id = user_id;
        this.address_line = address_line;
        this.city = city;
        this.country = country;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getAddress_line() {
        return address_line;
    }

    public void setAddress_line(String address_line) {
        this.address_line = address_line;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
    
    
}
