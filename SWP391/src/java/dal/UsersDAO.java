/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import context.DBContext;
import dao.UserAddressDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.Roles;
import model.User;
import model.UserStatus;

/**
 *
 * @author Admin
 */
public class UsersDAO extends DBContext {

    UserAddressDAO uaDAO;

    public UsersDAO() {
        uaDAO = new UserAddressDAO();
    }

    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();
        String sql = "SELECT id, email, password, role_id, status_id, first_name, last_name, telephone, created_at, modified_at, gender FROM users";
        try (PreparedStatement statement = connection.prepareStatement(sql); ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setRole_id(resultSet.getInt("role_id"));
                user.setStatus_id(resultSet.getInt("status_id"));
                user.setFirst_name(resultSet.getString("first_name"));
                user.setLast_name(resultSet.getString("last_name"));
                user.setTelephone(resultSet.getString("telephone"));
                user.setCreated_at(resultSet.getDate("created_at"));
                user.setGender(resultSet.getBoolean("gender"));
                user.setModified_at(resultSet.getDate("modified_at"));

                user.setRole(getRoleById(user.getRole_id()));
                user.setUsersStatus(getUserStatusById(user.getStatus_id()));
                user.setUserAddress(uaDAO.getUserAddressById(user.getId()));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Xử lý ngoại lệ, có thể throw hoặc log
        }
        return users;
    }

    public List<User> filterCustomersByStatusAndSearch(Integer status, String searchTerm) {
        List<User> users = new ArrayList<>();
        String sql = "SELECT id, email, password, role_id, status_id, first_name, last_name, telephone, created_at, modified_at, gender FROM users WHERE (status_id = ? OR ? IS NULL) AND ((first_name LIKE ? OR last_name LIKE ? OR email LIKE ? OR telephone LIKE ?) OR ? IS NULL)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            if (status != null) {
                statement.setInt(1, status);
                statement.setInt(6, status);
            } else {
                statement.setNull(1, java.sql.Types.INTEGER);
                statement.setNull(6, java.sql.Types.INTEGER);
            }
            if (searchTerm != null) {
                statement.setString(3, "%" + searchTerm + "%");
                statement.setString(4, "%" + searchTerm + "%");
                statement.setString(5, "%" + searchTerm + "%");
                statement.setString(6, "%" + searchTerm + "%");
            } else {
                statement.setNull(3, java.sql.Types.VARCHAR);
                statement.setNull(4, java.sql.Types.VARCHAR);
                statement.setNull(5, java.sql.Types.VARCHAR);
                statement.setNull(6, java.sql.Types.VARCHAR);
            }
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    User user = new User();
                    user.setId(resultSet.getInt("id"));
                    user.setEmail(resultSet.getString("email"));
                    user.setPassword(resultSet.getString("password"));
                    user.setRole_id(resultSet.getInt("role_id"));
                    user.setStatus_id(resultSet.getInt("status_id"));
                    user.setFirst_name(resultSet.getString("first_name"));
                    user.setLast_name(resultSet.getString("last_name"));
                    user.setTelephone(resultSet.getString("telephone"));
                    user.setGender(resultSet.getBoolean("gender"));
                    user.setCreated_at(resultSet.getDate("created_at"));
                    user.setModified_at(resultSet.getDate("modified_at"));

                    user.setRole(getRoleById(user.getRole_id()));
                    user.setUsersStatus(getUserStatusById(user.getStatus_id()));
                    user.setUserAddress(uaDAO.getUserAddressById(user.getId()));
                    users.add(user);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Xử lý ngoại lệ, có thể throw hoặc log
        }
        return users;
    }

    public User getUserById(int userId) {
        User user = null;
        String sql = "SELECT id, email, password, role_id, status_id, first_name, last_name, telephone, created_at, modified_at, gender FROM users WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, userId);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    user = new User();
                    user.setId(resultSet.getInt("id"));
                    user.setEmail(resultSet.getString("email"));
                    user.setPassword(resultSet.getString("password"));
                    user.setRole_id(resultSet.getInt("role_id"));
                    user.setStatus_id(resultSet.getInt("status_id"));
                    user.setFirst_name(resultSet.getString("first_name"));
                    user.setLast_name(resultSet.getString("last_name"));
                    user.setTelephone(resultSet.getString("telephone"));
                    user.setGender(resultSet.getBoolean("gender"));
                    user.setCreated_at(resultSet.getDate("created_at"));
                    user.setModified_at(resultSet.getDate("modified_at"));

                    user.setRole(getRoleById(user.getRole_id()));
                    user.setUsersStatus(getUserStatusById(user.getStatus_id()));
                    user.setUserAddress(uaDAO.getUserAddressById(user.getId()));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Xử lý ngoại lệ, có thể throw hoặc log
        }
        return user;
    }

    public void addUser(User user) {
        String sql = "INSERT INTO users (email, password, role_id, status_id, first_name, last_name, telephone, created_at, modified_at, gender) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, user.getEmail());
            statement.setString(2, user.getPassword());
            statement.setInt(3, user.getRole_id());
            statement.setInt(4, user.getStatus_id());
            statement.setString(5, user.getFirst_name());
            statement.setString(6, user.getLast_name());
            statement.setString(7, user.getTelephone());
            statement.setDate(8, new java.sql.Date(user.getCreated_at().getTime())); // Assuming createdAt is a java.util.Date
            statement.setDate(9, new java.sql.Date(user.getModified_at().getTime())); // Assuming modifiedAt is a java.util.Date
            statement.setBoolean(10, user.isGender());

            // Execute the insert statement
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("A new user was inserted successfully!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception
        }
    }

    public List<Roles> getAllRoles() {
        List<Roles> roles = new ArrayList<>();
        String sql = "SELECT id, name FROM roles";
        try (PreparedStatement statement = connection.prepareStatement(sql); ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                Roles role = new Roles();
                role.setId(resultSet.getInt("id"));
                role.setName(resultSet.getString("name"));
                roles.add(role);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return roles;
    }

    public Roles getRoleById(int roleId) {
        Roles role = null;
        String sql = "SELECT id, name FROM roles WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, roleId);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    role = new Roles();
                    role.setId(resultSet.getInt("id"));
                    role.setName(resultSet.getString("name"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception
        }
        return role;
    }

    public List<UserStatus> getAllStatus() {
        List<UserStatus> statuses = new ArrayList<>();
        String sql = "SELECT id, name FROM user_status";
        try (PreparedStatement statement = connection.prepareStatement(sql); ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                UserStatus status = new UserStatus();
                status.setId(resultSet.getInt("id"));
                status.setName(resultSet.getString("name"));
                statuses.add(status);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception
        }
        return statuses;
    }

    // Method to get a user status by ID
    public UserStatus getUserStatusById(int userStatusId) {
        UserStatus userStatus = null;
        String sql = "SELECT id, name FROM user_status WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, userStatusId);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    userStatus = new UserStatus();
                    userStatus.setId(resultSet.getInt("id"));
                    userStatus.setName(resultSet.getString("name"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception
        }
        return userStatus;
    }

    public void insertUser(User u) {
        String sql = "INSERT INTO [dbo].[users]\n"
                + "           ([email]\n"//1
                + "           ,[password]\n"//2
                + "           ,[role_id]\n"//3
                + "           ,[status_id]\n"//4
                + "           ,[first_name]\n"//5
                + "           ,[last_name]\n"//6
                + "           ,[telephone]\n"//7
                + "           ,[created_at]\n"//8
                + "           ,[modified_at]\n"//9
                + "           ,[gender]\n"//10
                + "           ,[token])\n"//11
                + "     VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, u.getEmail());
            st.setString(2, u.getPassword());
            st.setInt(3, u.getRole_id());
            st.setInt(4, u.getStatus_id());
            st.setString(5, u.getFirst_name());
            st.setString(6, u.getLast_name());
            st.setString(7, u.getTelephone());

            java.util.Date utilDate = u.getCreated_at();
            java.sql.Date created_at = new java.sql.Date(utilDate.getTime());
            st.setDate(8, created_at);

            utilDate = u.getModified_at();
            java.sql.Date modified_at = new java.sql.Date(utilDate.getTime());
            st.setDate(9, modified_at);

            st.setBoolean(10, u.isGender());
            st.setString(11, u.getToken());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public User getUserByEmail(String email) {
        String sql = "SELECT [id]\n"//1
                + "      ,[email]\n"//2
                + "      ,[password]\n"//3
                + "      ,[role_id]\n"//4
                + "      ,[status_id]\n"//5
                + "      ,[first_name]\n"//6
                + "      ,[last_name]\n"//7
                + "      ,[telephone]\n"//8
                + "      ,[created_at]\n"//9
                + "      ,[modified_at]\n"//10
                + "      ,[gender]\n"//11
                + "      ,[token]\n"//12
                + "  FROM [dbo].[users]\n"
                + "  WHERE email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User u = new User();

                u.setId(rs.getInt(1));
                u.setEmail(rs.getString(2));
                u.setPassword(rs.getString(3));
                u.setRole_id(rs.getInt(4));
                u.setStatus_id(rs.getInt(5));
                u.setFirst_name(rs.getString(6));
                u.setLast_name(rs.getString(7));
                u.setTelephone(rs.getString(8));
                u.setCreated_at(rs.getDate(9));
                u.setModified_at(rs.getDate(10));
                u.setGender(rs.getBoolean(11));
                u.setToken(rs.getString(12));

                return u;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public void updateUser(User u) {
        String sql = "UPDATE [dbo].[users]\n"
                + "   SET [email] = ?\n"//1
                + "      ,[password] = ?\n"//2
                + "      ,[role_id] = ?\n"//3
                + "      ,[status_id] = ?\n"//4
                + "      ,[first_name] = ?\n"//5
                + "      ,[last_name] = ?\n"//6
                + "      ,[telephone] = ?\n"//7
                + "      ,[created_at] = ?\n"//8
                + "      ,[modified_at] = ?\n"//9
                + "      ,[gender] = ?\n"//10
                + " WHERE id = ?";//11
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, u.getEmail());
            st.setString(2, u.getPassword());
            st.setInt(3, u.getRole_id());
            st.setInt(4, u.getStatus_id());
            st.setString(5, u.getFirst_name());
            st.setString(6, u.getLast_name());
            st.setString(7, u.getTelephone());

            java.util.Date utilDate = new Date();
            java.sql.Date created_at = new java.sql.Date(utilDate.getTime());
            st.setDate(8, created_at);

            utilDate = new Date();
            java.sql.Date modified_at = new java.sql.Date(utilDate.getTime());
            st.setDate(9, modified_at);

            st.setBoolean(10, u.isGender());
            st.setInt(11, u.getId());

            st.executeUpdate();
        } catch (SQLException e) {

        }
    }


    public void updateUserActive(User u) {
        String sql = "UPDATE [dbo].[users]\n"
                + "   SET [status_id] = ?\n"//1
                + "      ,[modified_at] = ?\n"//2
                + " WHERE id = ?";//3
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setInt(1, u.getStatus_id());

            java.util.Date utilDate = new Date();
            java.sql.Date modified_at = new java.sql.Date(utilDate.getTime());
            st.setDate(2, modified_at);

            st.setInt(3, u.getId());

            st.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updateUserToken(User u) {
        String sql = "UPDATE [dbo].[users]\n"
                + "   SET [password] = ?\n"//1
                + "	  ,[modified_at] = ?\n"//2
                + "      ,[token] = ?\n"//3
                + " WHERE id = ?";//4
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, u.getPassword());
            
            java.util.Date utilDate = new Date();
            java.sql.Date modified_at = new java.sql.Date(utilDate.getTime());
            st.setDate(2, modified_at);

            st.setString(3, u.getToken());

            st.setInt(4, u.getId());

            st.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public static void main(String[] args) {
        UsersDAO udb = new UsersDAO();
        User u = new User("aaa", "bbb", 1, 1, "tu", "bui", true,"0123456789", new Date(), new Date(), "222222");
        udb.updateUserToken(u);
        
    }
}
