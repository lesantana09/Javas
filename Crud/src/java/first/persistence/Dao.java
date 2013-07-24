package first.persistence;

import java.sql.*;

public class Dao 
{
    Connection con;
    PreparedStatement pstmt;
    ResultSet rs;
    
   public void OpenDatabase()throws Exception
   {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/crud_jsp2";
        String user = "root";
        String password = "";
        con = DriverManager.getConnection(url,user,password);
   }
   
   public void CloseDatabase()throws Exception
   {
       if(con != null)
       {
           con.close();
       }
   }
   
    
}
