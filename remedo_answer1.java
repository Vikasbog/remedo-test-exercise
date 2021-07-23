import java.sql.*;

	public class Question1 {
	public static void main(String[] args) throws Exception {
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql.remedoapp.com/remedo-database","remedo","mypass");
      
      Statement stmt = con.createStatement();
      String query = "SELECT users.user_id, users.address,  transactions.total_invoice_amount, transactions.invoice_amount_paid, transactions.remedo_commission FROM usersINNER JOIN transactions ON users.user_id = transactions.user_id";
      ResultSet rs = stmt.executeQuery(query);
      System.out.println("User_ID   Address   Total_invoice_amount  Invoice_amount_paid   Remedo_commission ");
      
      while (rs.next()) {
         String address = rs.getString("address");
         int total_invoice_amount = rs.getInt("total_invoice_amount");
		 int invoice_amount_paid = rs.getInt("invoice_amount_paid");
		 int remedo_commission = rs.getInt("remedo_commission");
         int user_id = rs.getInt("user_id");
         System.out.println(user_id+ "   " +address+"   "+total_invoice_amount+"   "+invoice_amount_paid+"  "+remedo_commission);
      }
      System.out.println();
      System.out.println();
   }
}
