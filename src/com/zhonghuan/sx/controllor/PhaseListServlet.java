package com.zhonghuan.sx.controllor;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhonghuan.dao.common.DaoFactory;
import com.zhonghuan.sx.dao.PhaseDao;
import com.zhonghuan.sx.entity.Phase;

/**
 * 查询所有阶段信息
 * 
 * @author Administrator
 *
 */
@WebServlet("/mng/member/phaselist")
public class PhaseListServlet extends HttpServlet {
	private PhaseDao phaseDao;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		// 2 、执行业务查询--》所有阶段信息
		phaseDao = (PhaseDao) DaoFactory.getInstance("phaseDao");

		List<Phase> list = phaseDao.findAll();

		req.setAttribute("list", list);
		req.getRequestDispatcher("/mng/member/phaselist.jsp")
				.forward(req, resp);

	}
}
