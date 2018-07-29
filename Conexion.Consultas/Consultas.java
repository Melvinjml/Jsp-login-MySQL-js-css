package Conexion.Consultas;

import java.sql.*;

public class Consultas extends ConexionDB {

    public static final String TABLA_LOGIN = "usuarios";
    private static PreparedStatement pst = null;
    private static ResultSet rs = null;
    private static Statement stmt = null;

    public static ConexionDB cdb;

    /*------------------------------------------------------------------------------------------------------------------------------------------------------------*/
 /*------------------------------------------------------------------------------------------------------------------------------------------------------------*/
 /*------------------------------------------------------------------------------------------------------------------------------------------------------------*/
    public boolean verificacionLogin(String usuario, String password) {

        try {
            //Manera correcta de hacerlo y no pasando los valores en una sola consulta.
            String consulta = "select * from usuarios where usuario = ? and password = ? ";

            //le pasamos la consulta al pst
            pst = getConnection().prepareStatement(consulta);

            //Le pasamos los parametros usuarios y password
            pst.setString(1, usuario);
            pst.setString(2, password);

            //Ejecutamos la consulta y Guardamos el resultado de la consulta con ResultSet
            rs = pst.executeQuery();

            //Si tiene un registro devuelve true
            if (rs.absolute(1)) {
                return true;
            }

        } catch (Exception e) {

            System.err.println("ERROR: " + e);
        //CERRAR CONEXIONES
        } finally {
            try {
                if (getConnection() != null) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }

            } catch (SQLException ex) {
                System.err.println("ERROR: " + ex);
            }
        }

        return false;
    }

    /*------------------------------------------------------------------------------------------------------------------------------------------------------------*/
 /*------------------------------------------------------------------------------------------------------------------------------------------------------------*/
 /*------------------------------------------------------------------------------------------------------------------------------------------------------------*/
    public boolean registrarUsuario(String usuario, String password, String email, String tlf) {

        try {
            String consulta = "insert into usuarios (usuario,password,email,tlf) values (?,?,?,?)";

            //cremos ala instacion  de la conexion, preparamos nuestra consulta
            pst = getConnection().prepareStatement(consulta);

            pst.setString(1, usuario);
            pst.setString(2, password);
            pst.setString(3, email);
            pst.setString(4, tlf);

            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (Exception e) {
            System.err.println("ERROR:" + e);
// CERRAR CONEXIONES 
        } finally {
            try {
                if (getConnection() != null) {
                    getConnection().close();

                }
                if (pst != null) {
                    pst.close();
                }

            } catch (Exception e) {
                System.err.println("ERROR: " + e);
            }

        }

        return false;
    }
}
