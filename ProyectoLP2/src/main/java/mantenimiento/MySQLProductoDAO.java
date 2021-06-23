package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;

import beans.productosDTO;
import interfaces.productoDAO;
import util.conexionBD;

public class MySQLProductoDAO implements productoDAO {

	@Override
	public int registrar(productosDTO prod) {
		int resultado = 0;
		Connection conexion = null;
		PreparedStatement ps = null;
		try {
			conexion = conexionBD.getConexion();
			String sentencia = "call sp_insertar_producto(?,?,?,?,?,?,?,?,?,?);";
			ps = conexion.prepareStatement(sentencia);
			ps.setString(1, prod.getCodigoProducto());
			ps.setString(2, prod.getModeloProducto());
			ps.setString(3, prod.getCategoria());
			ps.setString(4, prod.getMarca());
			ps.setString(5, prod.getDescripcionPantalla());
			ps.setString(6, prod.getCpu());
			ps.setString(7, prod.getGpu());
			ps.setString(8, prod.getDiscoDuro());
			ps.setString(9, prod.getSistemaOperativo());
			ps.setDouble(9, prod.getPrecioVenta());
			resultado = ps.executeUpdate();
		}catch (Exception e) {
			System.out.println("Error al registrar producto -> " + e.getMessage());
		}finally {
			conexionBD.closeConexion(conexion);
		}
		return resultado;
	}

	@Override
	public int actualizar(productosDTO prod) {
		int resultado = 0;
		Connection conexion = null;
		PreparedStatement ps = null;
		try {
			conexion = conexionBD.getConexion();
			String sentencia = "call sp_ActualizarProducto(?,?,?,?);";
			ps = conexion.prepareStatement(sentencia);
			ps.setString(1, prod.getCodigoProducto());
			ps.setString(2, prod.getDiscoDuro());
			ps.setString(3, prod.getSistemaOperativo());
			ps.setDouble(4, prod.getPrecioVenta());
			resultado = ps.executeUpdate();
		}catch (Exception e) {
			System.out.println("Error al actualizar producto -> " + e.getMessage());
		}finally {
			conexionBD.closeConexion(conexion);
		}
		return resultado;
	}

	@Override
	public int eliminar(String codigo) {
		// TODO Auto-generated method stub
		return 0;
	}


}
