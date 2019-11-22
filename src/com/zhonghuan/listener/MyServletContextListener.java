package com.zhonghuan.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * 应用上下文生命周期监听器
 * 
 * @author Administrator
 *
 */
@WebListener
public class MyServletContextListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent sce) {
		// 1、根目录
		String ctx = sce.getServletContext().getContextPath();
		// 放在作用域中
		sce.getServletContext().setAttribute("ctx", ctx);

		System.out.println("==============ctx==============" + ctx);
		// 2、上传图片
		sce.getServletContext().setAttribute("img_add", ctx + "/img");
	}

	public void contextDestroyed(ServletContextEvent sce) {
		
	}

}
