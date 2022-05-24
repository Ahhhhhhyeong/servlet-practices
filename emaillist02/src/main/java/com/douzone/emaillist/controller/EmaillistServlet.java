package com.douzone.emaillist.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.emaillist.dao.EmaillistDao;
import com.douzone.emaillist.vo.EmaillistVo;


public class EmaillistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("a");
		if("list".equals(action)) {
			
		} else if("form".equals(action)) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/form.jsp"); //View name
			rd.forward(request, response);
		} else if("add".equals(action)) {
			String firstName =request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			
			EmaillistVo vo = new EmaillistVo();
			vo.setFirst_name(firstName);
			vo.setLast_name(lastName);
			vo.setEmail(email);
			
			new EmaillistDao().insert(vo);
			
			response.sendRedirect(request.getContextPath() + "/el");
		} else {
			List<EmaillistVo> list = new EmaillistDao().findAll();
			
			request.setAttribute("list", list);
			// 포워딩
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp"); //View name
			rd.forward(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
