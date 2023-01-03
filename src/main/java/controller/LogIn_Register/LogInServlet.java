package controller.LogIn_Register;

import model.Account;
import service.AccountService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LogInServlet extends HttpServlet {
    AccountService accountService = new AccountService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String mess = req.getParameter("mess");
        if (mess != null){
            mess = "Tài khoản hoặc mật khẩu không hợp lệ";
            req.setAttribute("mess", mess);
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/LogIn-Register/login.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        Account account = accountService.checklogin(email, password);
        if (account != null) {
            HttpSession session = req.getSession();
            session.setAttribute("account", account);
            if (account.getEmail().equals("admin@gmail.com")) {
                resp.sendRedirect("/showAdmin");
            } else {
                resp.sendRedirect("/showClient");
            }
        } else {
            resp.sendRedirect("/login?mess=error");
        }
    }
}
