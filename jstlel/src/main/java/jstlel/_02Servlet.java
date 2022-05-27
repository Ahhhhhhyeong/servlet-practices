package jstlel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/02")
public class _02Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/** 
		 * 1. Scope(범위)
		 * 객체가 존재하는 범위
		 * 
		 * 2. 객체가 오래 지속되는 순서 
		 * ①Application(Servlet Context) Scope > Session Scope > Reqquest Scope > Page Scope
		 * 
		 * 3. EL이 이름으로 객체를 찾는 순서
		 */
		
		request.getRequestDispatcher("/WEB-INF/views/02.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
