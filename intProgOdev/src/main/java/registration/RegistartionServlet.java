package registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegistartionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
//mysgl veritabanına veri eklemesi yapıldığı manager sınıfı

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String password= request.getParameter("pass");
		String contact= request.getParameter("contact");
		RequestDispatcher dispatcher=null;
		Connection con= null;
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/mehmet","root","");
			PreparedStatement pst=con.prepareStatement("insert into users(uname,upwd,uemail,umobile) values(?,?,?,?)");
			pst.setString(1, name);
			pst.setString(2, password);
			pst.setString(3, email);
			pst.setString(4, contact);
			
			int rowCount= pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("registration.jsp");
			if (rowCount>0) {
				request.setAttribute("status","success");
			}else {
				request.setAttribute("status","failed");
			}
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
			con.close();
				
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
		
	}

}
