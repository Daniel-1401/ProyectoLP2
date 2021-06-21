package beans;

public class clienteDTO {

	public String codCli, codusuario, numRUC, direccion, codPais, codCiudad, codTipoDoc,
					telefono;

	public String getCodCli() {
		return codCli;
	}

	public void setCodCli(String codCli) {
		this.codCli = codCli;
	}

	public String getCodusuario() {
		return codusuario;
	}

	public void setCodusuario(String codusuario) {
		this.codusuario = codusuario;
	}

	public String getNumRUC() {
		return numRUC;
	}

	public void setNumRUC(String numRUC) {
		this.numRUC = numRUC;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getCodPais() {
		return codPais;
	}

	public void setCodPais(String codPais) {
		this.codPais = codPais;
	}

	public String getCodCiudad() {
		return codCiudad;
	}

	public void setCodCiudad(String codCiudad) {
		this.codCiudad = codCiudad;
	}

	public String getCodTipoDoc() {
		return codTipoDoc;
	}

	public void setCodTipoDoc(String codTipoDoc) {
		this.codTipoDoc = codTipoDoc;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	

	public clienteDTO(String codCli, String codusuario, String numRUC, String direccion, String codPais,
			String codCiudad, String codTipoDoc, String telefono) {
		super();
		this.codCli = codCli;
		this.codusuario = codusuario;
		this.numRUC = numRUC;
		this.direccion = direccion;
		this.codPais = codPais;
		this.codCiudad = codCiudad;
		this.codTipoDoc = codTipoDoc;
		this.telefono = telefono;
	}

	public clienteDTO() {
		super();
	}
	
	
	
	
	
}
