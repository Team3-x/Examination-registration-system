package com.zhonghuan.sx.entity;

import java.util.Date;

import com.zhonghuan.entity.common.Entity;

/**
 * 学生注册/登录实体类
 * 
 * @author Administrator
 *
 */
public class Regist extends Entity {

	// 学生登录用户名
	private String loginname;
	// 密码
	private String pwd;
	// 注册时间
	private Date register_time;

	public String getLoginname() {
		return loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Date getRegister_time() {
		return register_time;
	}

	public void setRegister_time(Date register_time) {
		this.register_time = register_time;
	}

	@Override
	public String toString() {
		return "Regist [loginname=" + loginname + ", pwd=" + pwd
				+ ", register_time=" + register_time + "]";
	}

}
