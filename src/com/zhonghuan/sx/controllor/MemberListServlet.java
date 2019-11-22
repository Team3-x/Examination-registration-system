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
 * 查询所有管理员，并且管理员列表页面
 * 
 * @author Administrator
 *
 */
@WebServlet("/mng/member/list")
public class MemberListServlet extends HttpServlet {

	private MemberDao memberDao;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		// 2、业务逻辑--->member表中查询所有管理员
		memberDao = (MemberDao) DaoFactory.getInstance("memberDao");
		List<Member> list = memberDao.findAll();

		// 3、返回响应---->请求分派
		req.setAttribute("list", list);
		req.getRequestDispatcher("/mng/member/memberlist.jsp").forward(req,
				resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		doGet(req, resp);
	}

}
