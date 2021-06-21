package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;

import beans.productoDTO;
import interfaces.productoDAO;
import util.conexionBD;

public class MySQLProductoDAO implements productoDAO {

	@Override
	public int registrar(productoDTO prod) {
		int rlst = 0;
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = conexionBD.getConexion();
			String sql = "{call AgregarProducto()}";
			pst=con.prepareStatement(sql);
			pst.setString	(1, prod.getCodProd());
			pst.setString	(2, prod.getModelProd());
			pst.setString	(3, prod.getCodCategoria());
			pst.setString	(4, prod.getCodMarca());
			pst.setString	(5, prod.getDesProd());
			pst.setString	(6, prod.getCodCPU());
			pst.setString	(7, prod.getCodGPU());
			pst.setString	(8, prod.getCodDD());
			pst.setString	(9, prod.getCodSO());
			pst.setDouble	(10,prod.getPrecioV());
		} catch (Exception e) {
			System.out.println("Error al registrar solicitud:" + e.getMessage());
		} finally {
			conexionBD.closeConexion(con);
		}
		return rlst;
	}

	@Override
	public int actualizar(productoDTO prod) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int eliminar(productoDTO prod) {
		// TODO Auto-generated method stub
		return 0;
	}

}
