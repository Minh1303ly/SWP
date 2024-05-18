/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nhat Anh
 */
public class Slider {
    private int id;
    private String title;
    private String image;
    private String backLink;
    private int status;
    private String note;

    public Slider(int id, String title, String image, String backLink, int status, String note) {
        this.id = id;
        this.title = title;
        this.image = image;
        this.backLink = backLink;
        this.status = status;
        this.note = note;
    }

    public Slider() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getBackLink() {
        return backLink;
    }

    public void setBackLink(String backLink) {
        this.backLink = backLink;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "Sliders{" + "id=" + id + ", title=" + title + ", image=" + image + ", backLink=" + backLink + ", status=" + status + ", note=" + note + '}';
    }
    
}
