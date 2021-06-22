package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import beans.cpuDTO;
import interfaces.cpuDAO;
import util.conexionBD;

public class MySQLCpuDAO implements cpuDAO{

	@Override
	public ArrayList<cpuDTO> listarCPU() {
		ArrayList<cpuDTO> listarCPU = new ArrayList<cpuDTO>();
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;
		try {
			con = conexionBD.getConexion();
			String sql = "Select * from tb_CPU";
			pst = con.prepareStatement(sql);
			rst= pst.executeQuery();
			while (rst.next()) {
				cpuDTO cpu = new cpuDTO(rst.getInt(1),
										rst.getString(2),
										rst.getString(3),
										rst.getString(4));
				listarCPU.add(cpu);
			}
		} catch (Exception e) {
			System.out.println("Error al listar CPU's:" +e.getMessage());
		}finally {
			conexionBD.closeConexion(con);
		}
		return listarCPU;
	}

}
