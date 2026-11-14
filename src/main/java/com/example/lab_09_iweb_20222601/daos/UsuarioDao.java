package com.example.lab_09_iweb_20222601.daos;

import com.example.lab_09_iweb_20222601.beans.Usuario;
import jakarta.servlet.http.HttpServlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UsuarioDao extends BaseDao {

    Usuario usuario = null;
    String sql = "select * from usuario where email = ? and password_hash = ?";

    try(Connection conn = this.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql)){

    }

    catch (SQLException ex){
        ex.printStackTrace();
    }
}
