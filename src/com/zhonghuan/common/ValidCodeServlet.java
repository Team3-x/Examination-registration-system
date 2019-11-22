package com.zhonghuan.common;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 生成验证码图片
 * 
 * @author Administrator
 *
 */
@WebServlet("/vcServlet")
public class ValidCodeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static String[] src = { "A", "B", "C", "D", "E", "F", "G", "H",
			"I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U",
			"V", "W", "X", "Y", "Z", "1", "0", "2", "3", "4", "5", "6", "7",
			"8", "9" };

	// 随机数
	private Random random = new Random();

	/**
	 * 处理Get请求
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 获取请求参数
		// 处理业务逻辑
		// 返回响应
		ServletOutputStream sos = resp.getOutputStream(); // 字节流（图片、音频、视频）
		// 1、生成验证码
		String rs = randomString(4);
		System.out.println(rs + " 内置验证码--------");
		req.getServletContext().setAttribute("vc", rs);
		// 返回图片
		renderImage(rs, sos, 80, 20);
	}

	/**
	 * 生成4位验证码
	 * 
	 * @param length
	 *            //位数：验证码长度
	 * @return
	 */
	public String randomString(int length) {
		String rs = ""; // 生成验证码结果值
		for (int i = 0; i < length; i++) {
			rs += src[random.nextInt(src.length)];
		}
		return rs;
	}

	/**
	 * 
	 * @param src
	 *            4位验证码
	 * @param width
	 *            //图片宽度
	 * @param height
	 *            //图片高度
	 * @throws IOException
	 */
	public void renderImage(String src, ServletOutputStream sos, int width,
			int height) throws IOException {

		BufferedImage img = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		Graphics2D g = (Graphics2D) img.getGraphics();
		// 画背景
		g.setColor(Color.white);
		g.fillRect(0, 0, width, height);
		// 画字符串
		g.setColor(randColor(10, 255));
		g.setFont(new Font("Arial", Font.BOLD, 24));
		g.drawString(src, 10, height - 1);

		// 画干扰圈
		g.setColor(randColor(150, 250));
		for (int i = 0; i < 10; i++) {
			g.drawOval(random.nextInt(width - 10), random.nextInt(height - 10),
					random.nextInt(10) + 5, random.nextInt(10) + 5);
		}

		// 输出
		ImageIO.write(img, "png", sos);
	}

	/**
	 * 随机颜色
	 * 
	 * @param min
	 * @param max
	 * @return
	 */
	public Color randColor(int min, int max) {
		if (min > 255) {
			min = 255;
		}
		if (max > 255) {
			max = 255;
		}

		int r = random.nextInt(max - min) + min;
		int g = random.nextInt(max - min) + min;
		int b = random.nextInt(max - min) + min;

		return new Color(r, g, b);
	}

}
