package interfaces;


import beans.productosDTO;

public interface productoDAO {
	
	public int registrar (productosDTO prod);
	
	public int actualizar (productosDTO prod);
	
	public int eliminar (productosDTO prod);
	
}
