package com.zhonghuan.sx.dao;

import com.zhonghuan.dao.common.BaseDao;
import com.zhonghuan.sx.entity.Regist;

/**
 * 学生登录注册Dao层
 * 
 * @author Administrator
 *
 */
public interface RegistDao extends BaseDao<Regist> {

	public Regist login(String lname, String pwd);

}
