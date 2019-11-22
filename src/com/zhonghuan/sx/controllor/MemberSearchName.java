package com.zhonghuan.sx.controllor;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhonghuan.dao.common.DaoFactory;
import com.zhonghuan.sx.dao.MemberDao;
import com.zhonghuan.sx.entity.Member;


/**
 * 根据管理员真实姓名进行模糊查询
 * 
 * @author Administrator
 *
 */
@WebServlet("/mng/member/serachname")
public class MemberSearchName extends HttpServlet {
	private MemberDao memberDao;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		memberDao = (MemberDao) DaoFactory.getInstance("memberDao");

		// 1、请取求请参数
		String name = req.getParameter("search_user_name");

		// 2、业务逻辑
		// 根据真实姓名进行模糊查询
		List<Member> list = memberDao.findByName(name);

		// 3、返回响应
		req.setAttribute("list", list);
		req.getRequestDispatcher("/mng/member/memberlist.jsp").forward(req,
				resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

}
