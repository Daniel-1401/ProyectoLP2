package beans;

public class DiscoDuroDTO {
		
		public int codTipoDD;
		public String nomTipoDD;

		public int getCodTipoDD() {
			return codTipoDD;
		}

		public void setCodTipoDD(int codTipoDD) {
			this.codTipoDD = codTipoDD;
		}

		public String getNomTipoDD() {
			return nomTipoDD;
		}

		public void setNomTipoDD(String nomTipoDD) {
			this.nomTipoDD = nomTipoDD;
		}

		public DiscoDuroDTO(int codTipoDD, String nomTipoDD) {
			super();
			this.codTipoDD = codTipoDD;
			this.nomTipoDD = nomTipoDD;
		}

		public DiscoDuroDTO() {
			super();
		}
		
		
		
}
