
package connection;

import java.sql.*;
import java.sql.DriverManager;
//import javax.swing.JOptionPane;

public class conec {

   // private static Object DriverManager;
    
    public static Connection connect(){
    
    
    
    try{
    
    Class.forName("com.mysql.jdbc.Driver");
    
   Connection sos = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbankmanagement","root","");
    return sos;
    }
    
    catch(Exception e){
    
        {
        return null;
        }
    }
    
    }
    
}
