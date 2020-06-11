import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
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

        List<Ad> ads = new ArrayList<>();

        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM ads");
            while(rs.next()) {
                //translating the ResultSet into a java obj of the type Ad
                ads.add(new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                ));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        return ads;
    }

    @Override
    public Long insert(Ad ad) {
        String query = String.format("INSERT INTO ads (user_id, title, description) VALUES (%s, '%s', '%s')", ad.getUserId(), ad.getTitle(), ad.getDescription());

        System.out.println("query = " + query);
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = statement.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return null;
    }
}
