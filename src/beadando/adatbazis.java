package beadando;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class adatbazis
{
    private static String url = "jdbc:mysql://localhost/";
    private static String dbname = "beadando";
    private static String driver = "com.mysql.jdbc.Driver";
    private static String username = "admin";
    private static String password = "admin";
    private static Connection con;    
    
    public static Connection getConnection()
    {
        try
        {
            Class.forName(driver);
            try
            {
                con = DriverManager.getConnection(url+dbname,username,password);
                System.out.println("Sikeresen csatlakozott az adatbázishoz");                
            }
            catch (SQLException e)
            {
                System.out.println("Nem sikerült csatlakozni az adatbázishoz!\n"+e);
            }
        }
        catch (ClassNotFoundException e)
        {
            System.out.println("Driver nem található\n" + e);
        }
        return con;    
    }    
}
