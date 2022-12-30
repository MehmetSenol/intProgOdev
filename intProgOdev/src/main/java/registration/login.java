package registration;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/login")
public class login extends HttpServlet {

//login işleminin yapıldığı manager sınıfı mysql den veri çekerek sisteme giriş yapılmasını sağlıyor
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email= request.getParameter("username");
        String password= request.getParameter("password");
        HttpSession session=request.getSession();
        RequestDispatcher dispatcher=null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/mehmet","root","");
            PreparedStatement preparedStatement =con.prepareStatement("select *from users where uemail=? and upwd=?");
            preparedStatement.setString(1,email);
            preparedStatement.setString(2,password);

            ResultSet set=preparedStatement.executeQuery();
            if (set.next()) {
                session.setAttribute("name",set.getString("uname"));
                dispatcher=request.getRequestDispatcher("index.jsp");
            }else{
                request.setAttribute("status","failed");
                dispatcher=request.getRequestDispatcher("login.jsp");
            }
            dispatcher.forward(request,response);

        }catch (Exception e){
            e.printStackTrace();

        }

    }
}
