 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Connection;

import View.Home;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author GIA KIET
 */
public class ConnectDB {
    
    public static String TDN, MK;
   /* public static Connection getJDBCConnection(String hostName, String sid,
            String userName, String password) throws ClassNotFoundException,
            SQLException{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        String connectionURL = "jdbc:oracle:thin:@" + hostName + ":1521:" + sid;

        Connection conn = DriverManager.getConnection(connectionURL, userName,
                password);
        return conn;
    }
    
    public static Connection getJDBCConnection() throws SQLException, ClassNotFoundException {
        String hostName = "localhost";
        String sid = "orcl";
        String userName = "c##temp";
        String password = "temp123";
//        String userName = "c##bookstore";
//        String password = "123456";
        return getJDBCConnection(hostName, sid, userName, password);
    }*/
    
    public ConnectDB(String TenDNHome, String MatKhauHome){
        this.TDN = TenDNHome;
        this.MK = MatKhauHome;
    }
    
    public static Connection getJDBCConnection(String hostName, String service, String pluggableDB,
            String userName, String password) throws ClassNotFoundException, SQLException {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        String connectionURL = "jdbc:oracle:thin:@" + hostName + ":1521/" + service + "?service_name=" + pluggableDB;

        Connection conn = DriverManager.getConnection(connectionURL, userName, password);
        return conn;
}

    public static Connection getJDBCConnection() throws SQLException, ClassNotFoundException {
        Home home = new Home(TDN, MK, 1);
        int getDatabaseTheoRole = home.getCV();
        System.out.println(home.getCV());
        if(getDatabaseTheoRole == 4){
            String userName = "qly";
            String hostName = "localhost";
            String service = "sach";
            String pluggableDB = "sach";
            String password = "pass";
            new Home(TDN, MK, 4);
            return getJDBCConnection(hostName, service, pluggableDB, userName, password);
        } else if (getDatabaseTheoRole == 3) {
            String hostName = "localhost";
            String service = "sach";
            String pluggableDB = "sach";
            String password = "pass";
            String userName = "nv";
            return getJDBCConnection(hostName, service, pluggableDB, userName, password);
        } else if (getDatabaseTheoRole == 2) {
            String hostName = "localhost";
            String service = "sach";
            String pluggableDB = "sach";
            String password = "pass";
            String userName = "nvk";
            return getJDBCConnection(hostName, service, pluggableDB, userName, password);
        } else {
            String hostName = "localhost";
            String service = "sach";
            String pluggableDB = "sach";
            String password = "pass";
            String userName = "kt";
            return getJDBCConnection(hostName, service, pluggableDB, userName, password);
        } 
}
    
    public static void main(String[] args)throws SQLException,
          ClassNotFoundException {
          System.out.println("Get connection ... ");
          Connection conn = getJDBCConnection();
          System.out.println("Get connection " + conn);
          System.out.println("Done!");
  }
}
