package beans;

public class usuarioDTO {
		public String codUsu;
		public int codTipoUsu;
		public String email, contraseña, nomUsu, apeUsu;
		public String getCodUsu() {
			return codUsu;
		}
		public void setCodUsu(String codUsu) {
			this.codUsu = codUsu;
		}
		public int getCodTipoUsu() {
			return codTipoUsu;
		}
		public void setCodTipoUsu(int codTipoUsu) {
			this.codTipoUsu = codTipoUsu;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getContraseña() {
			return contraseña;
		}
		public void setContraseña(String contraseña) {
			this.contraseña = contraseña;
		}
		public String getNomUsu() {
			return nomUsu;
		}
		public void setNomUsu(String nomUsu) {
			this.nomUsu = nomUsu;
		}
		public String getApeUsu() {
			return apeUsu;
		}
		public void setApeUsu(String apeUsu) {
			this.apeUsu = apeUsu;
		}
		public usuarioDTO(String codUsu, int codTipoUsu, String email, String contraseña, String nomUsu,
				String apeUsu) {
			super();
			this.codUsu = codUsu;
			this.codTipoUsu = codTipoUsu;
			this.email = email;
			this.contraseña = contraseña;
			this.nomUsu = nomUsu;
			this.apeUsu = apeUsu;
		}
		
		public usuarioDTO() {
			super();
		}
		
		
		
}
