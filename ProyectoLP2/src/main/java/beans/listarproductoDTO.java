package beans;

public class listarproductoDTO {
	
	public String 	codigo, modelo ,categoria, marca, procesador, tarjetaGrafica, almacenamiento, sistemaOperativo;
	
	public double precioV;

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getProcesador() {
		return procesador;
	}

	public void setProcesador(String procesador) {
		this.procesador = procesador;
	}

	public String getTarjetaGrafica() {
		return tarjetaGrafica;
	}

	public void setTarjetaGrafica(String tarjetaGrafica) {
		this.tarjetaGrafica = tarjetaGrafica;
	}

	public String getAlmacenamiento() {
		return almacenamiento;
	}

	public void setAlmacenamiento(String almacenamiento) {
		this.almacenamiento = almacenamiento;
	}

	public String getSistemaOperativo() {
		return sistemaOperativo;
	}

	public void setSistemaOperativo(String sistemaOperativo) {
		this.sistemaOperativo = sistemaOperativo;
	}

	public double getPrecioV() {
		return precioV;
	}

	public void setPrecioV(double precioV) {
		this.precioV = precioV;
	}

	public listarproductoDTO(String codigo, String modelo, String categoria, String marca, String procesador,
			String tarjetaGrafica, String almacenamiento, String sistemaOperativo, double precioV) {
		super();
		this.codigo = codigo;
		this.modelo = modelo;
		this.categoria = categoria;
		this.marca = marca;
		this.procesador = procesador;
		this.tarjetaGrafica = tarjetaGrafica;
		this.almacenamiento = almacenamiento;
		this.sistemaOperativo = sistemaOperativo;
		this.precioV = precioV;
	}

	public listarproductoDTO() {
		super();
	}
	
	
	
}
