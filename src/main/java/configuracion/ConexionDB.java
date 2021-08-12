package configuracion;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexionDB {

	private static Connection conx;
	private static final String bd="examenes";
	private static final String user="root";
	private static final String password="root1234";
	private static final String driver="com.mysql.cj.jdbc.Driver";
	private static final String server="jdbc:mysql://localhost:3316/" + bd;
	
	public static Connection ConectarDB() {
		try {
			Class.forName(driver);
			conx=DriverManager.getConnection(server, user, password);
			
		} catch (Exception e){
			System.out.println("Error al conectar con la base "+ bd + "\n");
			System.out.println("Causa: " + e.getCause() +"\n");
			System.out.println(e.getStackTrace());
	
		}
		return conx;
	}
	
	/*
	public static void main(String[] args) {
		System.out.println(ConectarDB());
	}
	*/
}
