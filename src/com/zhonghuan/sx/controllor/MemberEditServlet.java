package com.zhonghuan.sx.controllor;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhonghuan.dao.common.DaoFactory;
import com.zhonghuan.sx.dao.MemberDao;
import com.zhonghuan.sx.entity.Member;

@WebServlet("/mng/member/memberedit")
public class MemberEditServlet extends HttpServlet {
	private MemberDao memberDao;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 1、获取请求参数
		String id = req.getParameter("id");
		// 2、执行业务逻辑
		memberDao = (MemberDao) DaoFactory.getInstance("memberDao");

		Member member = memberDao.findOne(Long.parseLong(id)); // 根据ID查管理员信息
		// 3、返加响应
		req.setAttribute("member", member);
		System.out.println(member.toString());
		req.getRequestDispatcher("/mng/member/editmember.jsp").forward(req,
				resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
}
