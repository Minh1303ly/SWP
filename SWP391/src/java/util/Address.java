/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

/**
 *
 * @author Nhat Anh
 */
public class Address {
    
    private String province;
    private String district;
    private String commune;

    public Address(String address) {
        String[] location = address.split(",");
        this.province = location[0];
        this.district = location[1];
        this.commune = location.length==3?location[2]:null;
    }

    public Address(String province, String district) {
        this.province = province;
        this.district = district;
    }

    public Address(String province, String district, String commune) {
        this.province = province;
        this.district = district;
        this.commune = commune;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getCommune() {
        return commune;
    }

    public void setCommune(String commune) {
        this.commune = commune;
    }

    @Override
    public String toString() {
        return province+","+ district + (commune==null?"":"," + commune);
    }
    
    public static void main(String[] args) {
        String a ="1,2";
        Address address = new Address(a);
        System.out.println(address);
        System.out.println(address.commune==null?"y":"m");
    }
}
