package com.zhonghuan.sx.controllor;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhonghuan.dao.common.DaoFactory;
import com.zhonghuan.sx.dao.RegistDao;
import com.zhonghuan.sx.entity.Regist;

public class StuloginController extends HttpServlet{
	
	private RegistDao registDao;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String lname = req.getParameter("loginname");
		String pwd = req.getParameter("password");
		String vc = req.getParameter("vc"); // 用户输入验证码
		if (vc.equalsIgnoreCase((String) req.getServletContext().getAttribute(
				"vc"))) { 
			registDao = (RegistDao) DaoFactory.getInstance("registDao");
			// 登录验证方法
			Regist regist = registDao.login(lname, pwd);
			if(regist != null) {
				resp.sendRedirect(req.getContextPath() + "/mng/stu/list.jsp");
			}else {
				req.setAttribute("msg", "用户名或密码输入错误，请重新输入！");
				req.getRequestDispatcher("/stulogin.jsp").forward(req, resp);
			}
			
		}else {
			req.setAttribute("msg", "验证码输入错误，请重新输入！");
			req.getRequestDispatcher("/stulogin.jsp").forward(req, resp);
		}
		
	}
}
