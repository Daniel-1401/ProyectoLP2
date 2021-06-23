package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;

import beans.productosDTO;
import interfaces.productoDAO;
import util.conexionBD;

public class MySQLProductoDAO implements productoDAO {

	@Override
	public int registrar(productosDTO prod) {
		
		return 0;
	}

	@Override
	public int actualizar(productosDTO prod) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int eliminar(String codigo) {
		// TODO Auto-generated method stub
		return 0;
	}


}
