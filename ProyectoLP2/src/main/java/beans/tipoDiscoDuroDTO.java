package beans;

public class tipoDiscoDuroDTO {
	
	public int codDD;
	public String codMarca, capacidad, codTipoDD;
	
	public int getCodDD() {
		return codDD;
	}

	public void setCodDD(int codDD) {
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

	public tipoDiscoDuroDTO(int codDD, String codMarca, String capacidad, String codTipoDD) {
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
