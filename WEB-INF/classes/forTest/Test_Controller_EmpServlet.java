package forTest;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Test_Controller_EmpServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		String action = req.getParameter("action");

		if ("getOne_From03".equals(action) || "getOne_From05".equals(action)) {

			try {
				// Retrieve form parameters.
				Integer empno = new Integer(req.getParameter("empno"));

				EmpDAO dao = new EmpDAO();
				EmpVO empVO = dao.findByPrimaryKey(empno);

				req.setAttribute("empVO", empVO); // ��Ʈw���X��empVO����,�s�Jreq

				// ���X��empVO�e��listOneEmp.jsp
				RequestDispatcher successView = req
						.getRequestDispatcher("/forTest/listOneEmp.jsp");
				successView.forward(req, res);
				return;

				// Handle any unusual exceptions
			} catch (Exception e) {
				throw new ServletException(e);
			}
		}
		
		
		if ("getOne_From04".equals(action)) {

			try {
				// Retrieve form parameters.
				Integer empno = new Integer(req.getParameter("empno"));

				EmpDAO dao = new EmpDAO();
				EmpVO empVO = dao.findByPrimaryKey(empno);

				req.setAttribute("empVO", empVO); // ��Ʈw���X��empVO����,�s�Jreq

				// ���X��empVO�e��listOneEmp.jsp
				RequestDispatcher successView = req
						.getRequestDispatcher("/forTest/listAllEmp_04_EL_Test_href_include.jsp");
				successView.forward(req, res);
				return;

				// Handle any unusual exceptions
			} catch (Exception e) {
				throw new ServletException(e);
			}
		}
		
		
		if ("getOne_From06".equals(action)) {

			try {
				// Retrieve form parameters.
				Integer empno = new Integer(req.getParameter("empno"));

				EmpDAO dao = new EmpDAO();
				EmpVO empVO = dao.findByPrimaryKey(empno);

				req.setAttribute("empVO", empVO); // ��Ʈw���X��empVO����,�s�Jreq
				
				//Bootstrap_modal
				boolean openModal=true;
				req.setAttribute("openModal",openModal );
				
				// ���X��empVO�e��listOneEmp.jsp
				RequestDispatcher successView = req
						.getRequestDispatcher("/forTest/listAllEmp_06_EL_Test_Bootstrap_modal.jsp");
				successView.forward(req, res);
				return;

				// Handle any unusual exceptions
			} catch (Exception e) {
				throw new ServletException(e);
			}
		}
		
	}
}