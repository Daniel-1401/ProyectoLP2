package DAO;

import interfaces.administradorDAO;
import interfaces.carritoDAO;
import interfaces.categoriaDAO;
import interfaces.facturaDAO;
import interfaces.marcaDAO;
import interfaces.productoDAO;
import interfaces.usuarioDAO;

public abstract class DAOFactory {
	public static final int MYSQL = 1;
	
	public abstract administradorDAO	getAdministradorDAO();
	public abstract carritoDAO			getCarritoDAO();
	public abstract categoriaDAO		getCategoriaDAO();
	public abstract facturaDAO			getFacturaDAO();
	public abstract marcaDAO			getMarcaDAO();
	public abstract productoDAO			getProductoDAO();
	public abstract usuarioDAO			getUsuarioDAO();
	
	public static DAOFactory getDaoFactory(int bd) {
		switch (bd) {
		case MYSQL: 
			return new MySQLDAOFactory();
		default:
			return null;
		}
	}
}
