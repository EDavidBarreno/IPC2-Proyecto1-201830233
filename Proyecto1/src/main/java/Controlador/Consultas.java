package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLOutput;

public class Consultas  extends Conexion{

    public boolean autenticaicon(String usuario, String contraseña){
        PreparedStatement pst = null;
        ResultSet rs = null;

        try{
            String consulta = "select * from usuarios where nombre_usuario = ? and password_usuario = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, contraseña);

            rs = pst.executeQuery();

            if(rs.next()){
                return true;
            }
        }catch (Exception e){
            System.err.println("ERROR"+ e);
        }finally {
            try{
                if(getConexion() != null) getConexion().close();
                if(pst != null) pst.close();
                if(rs != null) rs.close();
            }catch (Exception e){
                System.err.println("ERROR"+ e);
            }
        }
        return false;
    }

    /*public static void main(String[] args) {
        Consultas co = new Consultas();
        System.out.println(co.autenticaicon("David","123456"));
    }*/

    public boolean registrar(String usuario, String contraseña, String tipo){
        PreparedStatement pst = null;

        try{
            String consultas ="insert into usuarios (nombre_usuario, password_usuario, tipo_usuario) values (?, ?, ?)";
            pst = getConexion().prepareStatement(consultas);
            pst.setString(1, usuario);
            pst.setString(2, contraseña);
            pst.setString(3, tipo);

            if(pst.executeUpdate() ==1){
                return true;
            }
        }catch (Exception ex){
            System.err.println("ERROR1" + ex);
        }finally {
            try{
                if(getConexion() != null) getConexion().close();
                if(pst != null) pst.close();
            }catch (Exception e){
                System.err.println("ERROR2" + e);
            }


        }
        return false;
    }

    /*public static void main(String[] args) {
        Consultas co = new Consultas();
        co.registrar("Felipe", "123456", "1");
    }*/
}
