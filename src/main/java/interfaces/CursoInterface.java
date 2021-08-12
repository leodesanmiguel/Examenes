package interfaces;

import java.util.List;

import modelo.Curso;

public interface CursoInterface {
	public List<Curso> listarCursos();
	public Curso leerCurso(int idCurso);
	public int guardarCurso(Curso curso);
	public void borrarCurso(int  idCurso);

}
