package com.zhonghuan.daoImpl;

import com.zhonghuan.daoImpl.common.BaseDaoImpl;
import com.zhonghuan.sx.dao.RegistDao;
import com.zhonghuan.sx.entity.Regist;

/**
 * 学生注册、登录Dao实现类
 * 
 * @author Administrator
 *
 */
public class RegistDaoImpl extends BaseDaoImpl<Regist> implements RegistDao {

	public Regist login(String lname, String pwd) {
		
		String sql = "select  *  from  regist where   loginname = ?  and  pwd  = ?";

		Regist regist = this.findOne(sql, new Object[] { lname, pwd });

		return regist;
	}

}