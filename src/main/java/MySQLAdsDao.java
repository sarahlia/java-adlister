import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.List;

public class MySQLAdsDao implements Ads{
    private Connection connection = null;

    //constructor with the connection
    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Ad> all() {
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM ads");
            while(rs.next()) {
                System.out.println("rs.getLong() = " + rs.getLong());
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        return null;
    }

    @Override
    public Long insert(Ad ad) {
        return null;
    }
}
