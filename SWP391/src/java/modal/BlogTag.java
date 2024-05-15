/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modal;

/**
 *
 * @author Đạt
 */
public class BlogTag {
    private int blogId;
    private int tagId;

    public BlogTag() {
    }

    public BlogTag(int blogId, int tagId) {
        this.blogId = blogId;
        this.tagId = tagId;
    }

    public int getBlogId() {
        return blogId;
    }

    public void setBlogId(int blogId) {
        this.blogId = blogId;
    }

    public int getTagId() {
        return tagId;
    }

    public void setTagId(int tagId) {
        this.tagId = tagId;
    }

    @Override
    public String toString() {
        return "BlogTag{" + "blogId=" + blogId + ", tagId=" + tagId + '}';
    }
    
}
