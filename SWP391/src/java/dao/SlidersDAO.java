/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.LinkedList;
import java.util.List;
import model.Slider;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Nhat Anh
 */
public class SlidersDAO extends DBContext {

    /**
     * Use to get all element slider
     *
     * @return list slider
     */
    public List<Slider> getAll() {
        List<Slider> list = new LinkedList<>();
        String sql = "SELECT * FROM sliders";
        try (PreparedStatement pre = connection.prepareStatement(sql,
                ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY); ResultSet rs = pre.executeQuery()) {
            while (rs.next()) {
                list.add(new Slider(rs.getInt(1), rs.getInt(2),
                        rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6),
                        rs.getString(7)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(SlidersDAO.class.getName())
                    .log(Level.SEVERE, "Error fetching products", ex);
        }
        return list;
    }

    /**
     * Use to get all information random slider
     *
     * @return all information of a random slider
     */
    public Slider getRadom() {
        List<Slider> ls = getAll();
        Slider slider = ls.get((int) (Math.random() * (ls.size() - 1) + 1));
        return slider;
    }

    public Slider getSliderById(int id) {
        Slider slider = null;
        String sql = "SELECT [Id], [title], [img], [backLink], [slider_status] FROM sliders WHERE id = ?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    slider = new Slider();
                    slider.setId(rs.getInt("id"));
                    slider.setTitle(rs.getString("title"));
                    slider.setImage(rs.getString("img"));
                    slider.setBackLink(rs.getString("backLink"));
                    slider.setStatus(rs.getString("slider_status"));
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(SlidersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return slider;
    }

    public List<Slider> getSliders(String status, String search, int page, int pageSize) {
        List<Slider> sliders = new ArrayList<>();
        int start = (page - 1) * pageSize;
        String sql = "SELECT [Id], [title], [img], [backLink], [slider_status] FROM [dbo].[sliders] WHERE 1=1";

        // Add conditions for status and search
        if (status != null && !status.isEmpty()) {
            sql += " AND [slider_status] = ?";
        }
        if (search != null && !search.isEmpty()) {
            sql += " AND ([title] LIKE ? OR [backLink] LIKE ?)";
        }

        // Add pagination
        sql += " ORDER BY [Id] OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            int index = 1;
            if (status != null && !status.isEmpty()) {
                ps.setString(index++, status);
            }
            if (search != null && !search.isEmpty()) {
                ps.setString(index++, "%" + search + "%");
                ps.setString(index++, "%" + search + "%");
            }
            ps.setInt(index++, start);
            ps.setInt(index, pageSize);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Slider slider = new Slider();
                    slider.setId(rs.getInt("Id"));
                    slider.setTitle(rs.getString("title"));
                    slider.setImage(rs.getString("img"));
                    slider.setBackLink(rs.getString("backLink"));
                    slider.setStatus(rs.getString("slider_status"));
                    sliders.add(slider);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(SlidersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sliders;
    }

    /**
     * Updates the status of a specific slider.
     *
     * @param sliderId The ID of the slider to update.
     * @param newStatus The new status to set.
     * @return boolean indicating success or failure.
     */
    public boolean updateSliderStatus(int sliderId, String newStatus) {
        String sql = "UPDATE sliders SET slider_status = ? WHERE Id = ?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, newStatus);
            ps.setInt(2, sliderId);
            int affectedRows = ps.executeUpdate();
            return affectedRows > 0; // return true if the update was successful
        } catch (SQLException ex) {
            Logger.getLogger(SlidersDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false; // return false on error
        }
    }

    public int countSliders(String status, String search) {
        // Base SQL statement to count sliders
        String sql = "SELECT COUNT(*) FROM sliders WHERE 1=1";

        // List to store parameters for the query to avoid SQL injection
        List<String> parameters = new ArrayList<>();

        // Conditional filtering by status
        if (status != null && !status.isEmpty()) {
            sql += " AND slider_status = ?";
            parameters.add(status);
        }

        // Conditional filtering by search term
        if (search != null && !search.isEmpty()) {
            sql += " AND (title LIKE ? OR backLink LIKE ?)";
            parameters.add("%" + search + "%");
            parameters.add("%" + search + "%");
        }

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            // Set the parameters in the PreparedStatement
            for (int i = 0; i < parameters.size(); i++) {
                ps.setString(i + 1, parameters.get(i));
            }

            // Execute the query
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(SlidersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0; // Return 0 if there's an exception or no rows counted
    }

    public static void main(String[] args) {
        SlidersDAO cs = new SlidersDAO();
        System.out.println(cs.getSliderById(1));
    }

}
