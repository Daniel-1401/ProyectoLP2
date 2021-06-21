package beans;

public class DiscoDuroDTO {
		
		public String codTipoDD, nomTipoDD;

		public String getCodTipoDD() {
			return codTipoDD;
		}

		public void setCodTipoDD(String codTipoDD) {
			this.codTipoDD = codTipoDD;
		}

		public String getNomTipoDD() {
			return nomTipoDD;
		}

		public void setNomTipoDD(String nomTipoDD) {
			this.nomTipoDD = nomTipoDD;
		}

		public DiscoDuroDTO(String codTipoDD, String nomTipoDD) {
			super();
			this.codTipoDD = codTipoDD;
			this.nomTipoDD = nomTipoDD;
		}

		public DiscoDuroDTO() {
			super();
		}
		
		
		
}
