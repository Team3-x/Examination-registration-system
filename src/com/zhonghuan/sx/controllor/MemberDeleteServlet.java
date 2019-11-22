package com.zhonghuan.sx.controllor;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhonghuan.dao.common.DaoFactory;
import com.zhonghuan.sx.dao.MemberDao;

/**
 * 管理员删除功能
 * 
 * @author Administrator
 *
 */
@WebServlet("/mng/member/memberdelete")
public class MemberDeleteServlet extends HttpServlet {

	private MemberDao memberDao;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 1、获取请求数据-->管理员ID
		String id = req.getParameter("id");
		// 2、执行业务逻辑
		memberDao = (MemberDao) DaoFactory.getInstance("memberDao");
		memberDao.delete(Long.parseLong(id));
		// 3、返回响应--->重定向到查询所有管理员功能
		resp.sendRedirect(req.getContextPath() + "/mng/member/list");

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}

}
