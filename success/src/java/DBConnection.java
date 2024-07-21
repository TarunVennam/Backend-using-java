import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import java.sql.Connection;

public class DBConnection {
    public static Connection getConnection() throws SQLException {
        
        String url = "jdbc:mysql://localhost:3306/library"; // Update with your DB URL
        String user = "yourUsername"; // Database username
        String password = "yourPassword"; // Database password
        return DriverManager.getConnection(url, user, password);
    }
}
