package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class connect {

	private static Connection con;
	
	
	static{
		
		try{
		Class.forName("com.mysql.jdbc.Driver");
		
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myweb","root","root");
		}
		catch(Exception e){
			e.printStackTrace();
		}	
		
	}
	
public  static Connection getCon(){		
		return con;
		
	}
	
	
	
	
	
}
