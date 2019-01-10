package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/member/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		
		Member m = new MemberService().memberLogin(id,pw);
		if(m==null) {
			//로그인 실패 or 없는 회원
			System.out.println("로그인 실패");
			request.setAttribute("msg", "!아이디와 비밀번호를 다시 확인세요");
			request.getRequestDispatcher("/views/login_myPage/login.jsp").forward(request, response);
			
		}else {
			//로그인 성공
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", m);
			response.sendRedirect(request.getContextPath()+"/");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}