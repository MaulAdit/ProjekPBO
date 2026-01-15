package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConfig {
    public static Connection getConnection() {
        try {
            String url = "jdbc:postgresql://localhost:5432/absensi_mahasiswa";
            String user = "postgres";
            String pass = "faridaja06";
            return DriverManager.getConnection(url, user, pass);
        } catch (SQLException e) {
            System.out.println("Koneksi gagal: " + e.getMessage());
            return null;
        }
    }

    public static void main(String[] args) {
        if (DatabaseConfig.getConnection() != null) {
            System.out.println("Koneksi berhasil");
        }
    }
}