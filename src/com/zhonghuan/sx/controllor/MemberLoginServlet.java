package com.zhonghuan.sx.controllor;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhonghuan.dao.common.DaoFactory;
import com.zhonghuan.sx.dao.MemberDao;
import com.zhonghuan.sx.entity.Member;


public class MemberLoginServlet extends HttpServlet {
	
	private MemberDao memberDao;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 1、获取请求数据
		String lname = req.getParameter("username");
		String pwd = req.getParameter("password");
		String vc = req.getParameter("vc"); // 用户输入验证码
		if (vc.equalsIgnoreCase((String) req.getServletContext().getAttribute(
				"vc"))) {
			memberDao = (MemberDao) DaoFactory.getInstance("memberDao");
			Member member = memberDao.login(lname, pwd);
			if(member != null) {
				resp.sendRedirect(req.getContextPath() + "/mng/member/main.jsp");
			}else {
				req.setAttribute("msg", "用户名或密码输入错误，请重新输入！");
				req.getRequestDispatcher("/memberlogin.jsp").forward(req, resp);
			}
		}else {
			req.setAttribute("msg", "验证码输入错误，请重新输入！");
			req.getRequestDispatcher("/memberlogin.jsp").forward(req, resp);
		}
	}
}
