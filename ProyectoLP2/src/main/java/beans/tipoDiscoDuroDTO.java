package beans;

public class tipoDiscoDuroDTO {
	
	public String codDD, codMarca, capacidad, codTipoDD;

	
	
	public String getCodDD() {
		return codDD;
	}

	public void setCodDD(String codDD) {
		this.codDD = codDD;
	}

	public String getCodMarca() {
		return codMarca;
	}

	public void setCodMarca(String codMarca) {
		this.codMarca = codMarca;
	}

	public String getCapacidad() {
		return capacidad;
	}

	public void setCapacidad(String capacidad) {
		this.capacidad = capacidad;
	}

	public String getCodTipoDD() {
		return codTipoDD;
	}

	public void setCodTipoDD(String codTipoDD) {
		this.codTipoDD = codTipoDD;
	}

	public tipoDiscoDuroDTO(String codDD, String codMarca, String capacidad, String codTipoDD) {
		super();
		this.codDD = codDD;
		this.codMarca = codMarca;
		this.capacidad = capacidad;
		this.codTipoDD = codTipoDD;
	}

	public tipoDiscoDuroDTO() {
		super();
	}

	
	
}
