/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import context.DBContext;
import dto.ErrorStatus;
import dto.PermissionDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Stream;
import model.Url;

/**
 *
 * @author Admin
 */
public class AuthorizeDAO extends DBContext {

    private UrlDAO uDao;

    public AuthorizeDAO() {
        uDao = new UrlDAO();
    }

    /**
     * Checks if a given role, possibly null, has access to a specified URL.
     *
     * @param roleId The ID of the role to check, can be null.
     * @param urlPath The URL path to check.
     * @return an ErrorStatus object representing the status of the check.
     * @throws SQLException If an SQL error occurs.
     */
    public ErrorStatus checkAccess(Integer roleId, String urlPath) throws SQLException {
        try {
            Url u = uDao.getUrlByUrl(urlPath);
            if (u == null) {
                return new ErrorStatus(404, "URL not found: " + urlPath);
            }

            // If the URL doesn't require access, allow access
            if (!u.isAccess()) {
                return new ErrorStatus(200, "Access granted");
            }

            // Check if the user is a super admin or admin with special permissions
            List<PermissionDTO> flag = getRolesAndUrls(6, urlPath);
            if (roleId != null) {
                switch (roleId) {
                    case 5:
                        return flag == null ? new ErrorStatus(200, "Access granted") : new ErrorStatus(403, "Access denied for role 5");
                    case 6:
                        return new ErrorStatus(200, "Access granted");
                    default:
                        break;
                }
            }

            // If the URL requires access but no role is provided, deny access
            if (roleId == null) {
                return new ErrorStatus(403, "Access denied: No role provided");
            }

            // Check if the specific role has access to the URL
            List<PermissionDTO> permissions = getRolesAndUrls(roleId, urlPath);
            if (!permissions.isEmpty()) {
                return new ErrorStatus(200, "Access granted");
            } else {
                return new ErrorStatus(403, "Access denied: Role does not have access");
            }
        } catch (SQLException ex) {
            return new ErrorStatus(500, "SQL Error: " + ex.getMessage());
        } catch (Exception ex) {
            return new ErrorStatus(500, "General Error: " + ex.getMessage());
        }
    }

    /**
     * Retrieves a list of roles and URLs based on the given role and URL.
     *
     * @param role The role ID.
     * @param url The URL.
     * @return A list of PermissionDTO objects.
     * @throws SQLException If an SQL error occurs.
     */
    public List<PermissionDTO> getRolesAndUrls(int role, String url) throws SQLException {
        List<PermissionDTO> results = new ArrayList<>();
        String query = "SELECT p.roleId, u.url, r.name, u.access "
                + "FROM Url u "
                + "FULL JOIN Permission p ON u.id = p.urlId "
                + "FULL JOIN roles r ON r.id = p.roleId "
                + "WHERE u.url = ? AND r.id = ?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, url);
            statement.setInt(2, role);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    int roleId = resultSet.getInt("roleId");
                    String urlStr = resultSet.getString("url");
                    String roleName = resultSet.getString("name");
                    boolean access = resultSet.getBoolean("access");
                    PermissionDTO p = new PermissionDTO();
                    p.setRoleId(roleId);
                    p.setUrl(urlStr);
                    p.setRoleName(roleName);
                    p.setAccess(access);
                    results.add(p);
                }
            }
        } catch (SQLException ex) {
            throw new SQLException("Error fetching roles and URLs", ex);
        }

        return results;
    }

    public static void main(String[] args) {
        AuthorizeDAO dao = new AuthorizeDAO();
        try {
            System.out.println(dao.checkAccess(6, "/abc"));
        } catch (Exception ex) {
            Logger.getLogger(AuthorizeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
