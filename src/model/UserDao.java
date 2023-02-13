package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDao {
	
	private Connection getConn() throws ClassNotFoundException, SQLException {
		//step1
		Class.forName("com.mysql.jdbc.Driver");

		//step2
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","abc123");

		return con;
	}
	
	
	public int insertDb(User u) throws ClassNotFoundException, SQLException
	{
		Connection con=getConn();
		
		String sql="insert into user_tbl (uid, uname, upass) values(?,?,?);";
		PreparedStatement pt =con.prepareStatement(sql);
		pt.setInt(1,u.getId());
		pt.setString(2,u.getName());
		pt.setString(3,u.getPass());
		
		int a=pt.executeUpdate();
		
		con.close();
		return a;
	}

}
