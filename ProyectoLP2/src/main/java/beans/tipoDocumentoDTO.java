package beans;

public class tipoDocumentoDTO {
	
	public String codTipoDoc, nomTipoDoc;

	public String getCodTipoDoc() {
		return codTipoDoc;
	}

	public void setCodTipoDoc(String codTipoDoc) {
		this.codTipoDoc = codTipoDoc;
	}

	public String getNomTipoDoc() {
		return nomTipoDoc;
	}

	public void setNomTipoDoc(String nomTipoDoc) {
		this.nomTipoDoc = nomTipoDoc;
	}

	public tipoDocumentoDTO(String codTipoDoc, String nomTipoDoc) {
		super();
		this.codTipoDoc = codTipoDoc;
		this.nomTipoDoc = nomTipoDoc;
	}

	public tipoDocumentoDTO() {
		super();
	}
	
	
	

}
