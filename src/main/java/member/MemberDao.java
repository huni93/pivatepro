package member;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MemberDao {
		   public Connection getConnection() {
		         Connection conn = null;
		         PreparedStatement pstmt = null;

		         try {
		            Class.forName("oracle.jdbc.OracleDriver");
		            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "kic", "1111");
		            return conn;
		         } catch (ClassNotFoundException e) {

		            e.printStackTrace();
		         } catch (SQLException e) {

		            e.printStackTrace();
		         }

		         return null;
		      }
		public int insertMember(Member member) throws UnsupportedEncodingException, SQLException {
		      	System.out.println(member);
		      Connection conn = getConnection();
		          
		         PreparedStatement pstmt = conn.prepareStatement("insert into member "
		        		  + "values (?,?,?,?,?,?, null)");
		         //mapping
		         pstmt.setString(1,member.getId());
		         pstmt.setString(2,member.getPassword());
		         pstmt.setString(3,member.getCheak());
		         pstmt.setString(4,member.getName());
		         pstmt.setString(5,member.getEmail());
		         pstmt.setString(6,member.getTel());
		         //4)excute
		         int num = pstmt.executeUpdate();		         		     
		         return num;
		                  
		   }
		}// class end

