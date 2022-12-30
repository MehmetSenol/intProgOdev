package registration;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/logout")
public class logout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        session.invalidate();
        response.sendRedirect("login.jsp");
//hazır bootstrap komutundan geri tekrar giriş ekranına dönmemizi sağlıyor

    }


}
