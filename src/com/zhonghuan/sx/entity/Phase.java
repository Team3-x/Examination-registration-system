package com.zhonghuan.sx.entity;

import java.util.Date;

import com.zhonghuan.entity.common.Entity;

/**
 * 阶段定义实体类
 * 
 * @author Administrator
 *
 */
public class Phase extends Entity {

	// 阶段名称
	private String stagename;

	// 开始时间
	private Date starttime;

	// 结束时间
	private Date endtime;

	// 备注
	private String note;

	public String getStagename() {
		return stagename;
	}

	public void setStagename(String stagename) {
		this.stagename = stagename;
	}

	public Date getStarttime() {
		return starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	public Date getEndtime() {
		return endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@Override
	public String toString() {
		return "Phase [stagename=" + stagename + ", starttime=" + starttime
				+ ", endtime=" + endtime + ", note=" + note + "]";
	}

}
