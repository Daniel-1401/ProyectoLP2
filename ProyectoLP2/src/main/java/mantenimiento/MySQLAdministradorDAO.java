package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import beans.listarproductoDTO;
import interfaces.administradorDAO;
import util.conexionBD;

public class MySQLAdministradorDAO implements administradorDAO {

	@Override
	public ArrayList<listarproductoDTO> listarProd() {
		ArrayList<listarproductoDTO> listaProd = new ArrayList<listarproductoDTO>();
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;
		try {	
			con = conexionBD.getConexion();
			String sql = "{call ciberimpacto.ListarCursos()}"
					+ "";
			pst = con.prepareStatement(sql);
			rst = pst.executeQuery();
			while (rst.next()) {
				listarproductoDTO prod = new listarproductoDTO(	rst.getString(1),
																rst.getString(2),
																rst.getString(3),
																rst.getString(4),
																rst.getString(5),
																rst.getString(6),
																rst.getString(7),
																rst.getString(8),
																rst.getDouble(9));
				listaProd.add(prod);
			}
		}catch (Exception e) {
				System.out.println("Error al listar productos:" + e.getMessage());
		}finally {
				conexionBD.closeConexion(con);
			}
		return listaProd;
	}
}

