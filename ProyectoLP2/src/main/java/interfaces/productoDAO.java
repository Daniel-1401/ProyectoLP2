package interfaces;

import beans.productoDTO;

public interface productoDAO {
	
	public int registrar (productoDTO prod);
	
	public int actualizar (productoDTO prod);
	
	public int eliminar (productoDTO prod);
	
}
