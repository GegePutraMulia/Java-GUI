package uts;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Shun
 */
    public class Koneksi {
    private static Connection koneksi;

    public static Connection getKoneksi() {
        if (koneksi == null) {
            try {
                String url = "jdbc:mysql://localhost:3306/absen_k";
                String user = "root";
                String password = "";
                koneksi = DriverManager.getConnection(url, user, password);
                System.out.println("Koneksi Sukses");
            } catch (SQLException e) {
                // Tangani pengecualian saat koneksi gagal
                System.out.println("Error koneksi ke database: " + e.getMessage());
            }
        }
        return koneksi;
    }

    public static void main(String args[]) {
        Connection connection = getKoneksi();

        try {            
            connection.createStatement().executeQuery("SELECT 1");
            System.out.println("Koneksi ke Database bekerja");
        } catch (SQLException e) {
            System.out.println("Error eksekusi query: " + e.getMessage());
        } finally {
            
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                
                System.out.println("Error closing connection: " + e.getMessage());
            }
        }
    }
}