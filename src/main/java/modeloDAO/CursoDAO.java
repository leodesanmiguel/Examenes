package modeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import configuracion.ConexionDB;
import interfaces.CursoInterface;
import modelo.Curso;

public class CursoDAO implements CursoInterface{

	public CursoDAO() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<Curso> listarCursos() {
		String sql= "select * from cursos";
		
		List<Curso> cursos = new ArrayList();
		
		try {
			Connection con= ConexionDB.ConectarDB();
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Curso curso=new Curso();
				curso.setIdCurso(rs.getInt(1));
				curso.setMateria(rs.getString(2));
				curso.setDocenteId(rs.getInt(3));
				curso.setSeccionId(rs.getInt(4));
				curso.setGradoId(rs.getInt(5));
				curso.setEstado(rs.getString(6));
				curso.setImagen(leerImagen(curso.getIdCurso()));
				cursos.add(curso);
			}
			
			
		} catch (Exception e) {
			System.out.println("Hubo un error en resulset \n" + sql + "\n" + e );
		}
		return cursos;
	}
	
	private String leerImagen(int idCurso) {
		String imagenMateria= "";
		switch (idCurso) {
		case 1:
		case 4:
			imagenMateria= "Matematica2";
			break;
		case 2: 
		case 5:
			imagenMateria= "Historia2";
			break;
		case 3:
		case 6:
			imagenMateria= "Lengua2";
			break;
		case 7: 
		case 8: 
		case 9: 
			imagenMateria= "tecno";
			break;
		case 10: 
			imagenMateria= "Matematica4";
			break;
		case 11: 
			imagenMateria= "Laboratorio_Programacion";
			break;
		case 12: 
			imagenMateria= "Matematica5";
			break;
		case 13:
			imagenMateria= "Historia5";
			break;
		case 14:
			imagenMateria= "Quimica5";
			break;
		default:
			imagenMateria= "Otra";
			break;
		}
		return "./vista/img/materias/" + imagenMateria + ".jpg";
	}

	@Override
	public Curso leerCurso(int idCurso) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int guardarCurso(Curso curso) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void borrarCurso(int idCurso) {
		// TODO Auto-generated method stub
		
	}

}
