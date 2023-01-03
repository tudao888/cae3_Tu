package controller.Admin;

import model.Account;
import service.AccountService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/showAdminQuanly")
public class AdminServletQlyAccount extends HttpServlet {
    AccountService accountService = new AccountService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("accounts", accountService.getAllAccount());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/Admin/giaodienAdminQliAccount.jsp");
        requestDispatcher.forward(req,resp);
    }
}
