package com.zhonghuan.sx.entity;

import java.util.Date;

import com.zhonghuan.entity.common.Entity;

/**
 * 管理 员管理 实体类
 * 
 * @author Administrator
 *
 */
public class Member extends Entity {

	// 管理员名称
	private String username;
	// 管理员密码
	private String pwd;
	// 联系方式
	private String mobile;
	// 真实姓名
	private String real_name;
	// 昵称
	private String nick_name;
	// 邮箱
	private String email;
	// 性别 1：男 0： 女
	private Boolean gender;
	// 注册 时间
	private Date register_time;
	// 是否启用 1：启用 0：不启用
	private Boolean is_enable;
	// 头像
	private String thumbnail;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getReal_name() {
		return real_name;
	}

	public void setReal_name(String real_name) {
		this.real_name = real_name;
	}

	public String getNick_name() {
		return nick_name;
	}

	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Boolean getGender() {
		return gender;
	}

	public void setGender(Boolean gender) {
		this.gender = gender;
	}

	public Date getRegister_time() {
		return register_time;
	}

	public void setRegister_time(Date register_time) {
		this.register_time = register_time;
	}

	public Boolean getIs_enable() {
		return is_enable;
	}

	public void setIs_enable(Boolean is_enable) {
		this.is_enable = is_enable;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	@Override
	public String toString() {
		return "Member [username=" + username + ", pwd=" + pwd + ", mobile="
				+ mobile + ", real_name=" + real_name + ", nick_name="
				+ nick_name + ", email=" + email + ", gender=" + gender
				+ ", register_time=" + register_time + ", is_enable="
				+ is_enable + ", thumbnail=" + thumbnail + "]";
	}

}
