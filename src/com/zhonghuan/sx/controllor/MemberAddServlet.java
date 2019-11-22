package com.zhonghuan.sx.controllor;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhonghuan.dao.common.DaoFactory;
import com.zhonghuan.sx.dao.MemberDao;
import com.zhonghuan.sx.entity.Member;


/**
 * 添加管理员
 * 
 * @author Administrator
 *
 */
@WebServlet("/mng/member/addmember")
public class MemberAddServlet extends HttpServlet {

	private MemberDao memberDao;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 1、获取请求参数
		// 2、执行业务逻辑
		memberDao = (MemberDao) DaoFactory.getInstance("memberDao");
		Member member = new Member();
		member.setNick_name(req.getParameter("username"));
		member.setReal_name(req.getParameter("real_name"));
		member.setEmail(req.getParameter("email"));
		member.setUsername(req.getParameter("loginname"));
		member.setMobile(req.getParameter("mobile"));
		member.setThumbnail(req.getParameter("title"));
		member.setPwd(req.getParameter("pwd"));
		String g = req.getParameter("gender");
		if (g.equals("1")) {
			member.setGender(true);
		} else {
			member.setGender(false);
		}
		String e = req.getParameter("isenable");
		if (e.equals("1")) {
			member.setIs_enable(true);
		} else {
			member.setIs_enable(false);
		}
		member.setRegister_time(new Date());
		// 把管理员数据保存到数据库
		memberDao.save(member);
		// 3、返回响应---> 跳转至查询所有管理员，做刷新工作
		resp.sendRedirect(req.getContextPath() + "/mng/member/list");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
}
