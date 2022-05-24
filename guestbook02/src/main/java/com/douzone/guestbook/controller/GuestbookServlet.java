package com.douzone.guestbook.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.guestbook.dao.GuestBookDao;
import com.douzone.guestbook.vo.GuestBookVo;

/**
 * Servlet implementation class GuestbookController
 */
public class GuestbookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("a");
		if("list".equals(action)) {
			
		} else if("deleteform".equals(action)) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp"); //View name
			rd.forward(request, response);
		} else if("delete".equals(action)) {
			int value = Integer.parseInt(request.getParameter("id"));
			String password = request.getParameter("password");
			System.out.println(value + "," + password);
			int result = new GuestBookDao().delete(value, password);
			
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter();	
			if(result == 0){
				writer.println("<script>alert('비밀번호가 틀렸습니다.');</script>");
				response.sendRedirect(request.getContextPath() + "/gb?a=delete?no="+value);
			}else{
				writer.println("<script>alert('삭제되었습니다.');</script>");
				response.sendRedirect(request.getContextPath() + "/gb");
			}
				 
			writer.flush();
		} else if("add".equals(action)) {
			String name =request.getParameter("name");
			String password = request.getParameter("password");
			String message = request.getParameter("message");
			
			GuestBookVo vo = new GuestBookVo();
			vo.setName(name);
			vo.setPassword(password);
			vo.setMessage(message);	
			
			new GuestBookDao().insert(vo);			
		
			response.sendRedirect(request.getContextPath() + "/gb");
		} else {
			List<GuestBookVo> list = new GuestBookDao().findAll();
			request.setAttribute("list", list);
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
