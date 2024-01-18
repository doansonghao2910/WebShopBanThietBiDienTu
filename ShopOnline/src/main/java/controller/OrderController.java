package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.OrderDAO;
import dao.OrderDetailDAO;
import model.CartList;
import model.Order;
import model.OrderDetail;

@WebServlet(urlPatterns = {"/order"})
public class OrderController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		
		OrderDAO orderDAO = new OrderDAO();
		List<Order> orderlist = new ArrayList<Order>();
		if((Integer)session.getAttribute("id") == null) {
			orderlist = null;
		}
		else {
			orderlist = orderDAO.getByUserId((Integer)session.getAttribute("id"));
		}
		session.setAttribute("orderlist", orderlist);
		req.getRequestDispatcher("/views/client/order.jsp").forward(req, resp);
	}
}
