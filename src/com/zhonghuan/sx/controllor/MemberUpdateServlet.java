package com.zhonghuan.sx.controllor;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
 * 更新管理员
 * 
 * @author Administrator
 *
 */
@WebServlet("/mng/member/updatemember")
public class MemberUpdateServlet extends HttpServlet {

	private MemberDao memberDao;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 1、获取请求参数
		String id = req.getParameter("id");
		// 2、执行业务逻辑
		memberDao = (MemberDao) DaoFactory.getInstance("memberDao");
		// 先从数据库中获取原有管理数据
		Member member = memberDao.findOne(Long.parseLong(id));

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

		String time = req.getParameter("register_time");
		// string类型时间---Date类型时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date d;
		try {
			d = sdf.parse(time);
			member.setRegister_time(d);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		// 把管理员数据更新到数据库
		memberDao.update(member);
		// 3、返回响应---> 跳转至查询所有管理员，做刷新工作
		resp.sendRedirect(req.getContextPath() + "/mng/member/list");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
}
