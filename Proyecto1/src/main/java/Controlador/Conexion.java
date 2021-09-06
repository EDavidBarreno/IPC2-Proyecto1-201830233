package Controlador;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    private String username = "david";
    private String password = "0503";
    private String host = "localhost";
    private String port = "3306";
    private String dataBase = "mi_muebleria";
    private String className = "com.mysql.cj.jdbc.Driver";
    private String url = "jdbc:mysql://"+host+":"+port+"/"+dataBase+"?serverTimezone=UTC";
    private Connection con;

    public Conexion(){
        try{
            Class.forName(className);
            con = DriverManager.getConnection(url, username, password);
        }catch (ClassNotFoundException e){
            System.err.println("ERROR "+e);

        }catch (SQLException e){
            System.err.println("ERROR "+e);
        }

    }

    public Connection getConexion(){
        return con;
    }

}

