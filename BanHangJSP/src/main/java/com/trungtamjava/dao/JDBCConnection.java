package com.trungtamjava.dao;

import java.sql.*;

public class JDBCConnection {

    public static final String HOSTNAME = "localhost";
    public static final String PORT = "1433";
    public static final String DBNAME = "DAM_Summer2023";
    public static final String USERNAME = "sa";
    public static final String PASSWORD = "123456";

   
    public static Connection getConnection() {

        // Create a variable for the connection string.
        String connectionUrl = "jdbc:sqlserver://" + HOSTNAME + ":" + PORT + ";"
                + "databaseName=" + DBNAME + ";encrypt=true;trustservercertificate=true;";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            System.out.println("Kết nối thành công");
            return DriverManager.getConnection(connectionUrl, USERNAME, PASSWORD);
        } // Handle any errors that may have occurred.
        catch (ClassNotFoundException | SQLException e) {
            System.out.println("Kết nối thất bại");
            e.printStackTrace(System.out);
        }
        return null;
    }
    
  
   
}
