package com.zhonghuan.daoImpl;

import java.util.List;

import com.zhonghuan.daoImpl.common.BaseDaoImpl;
import com.zhonghuan.sx.dao.MemberDao;
import com.zhonghuan.sx.entity.Member;

public class MemberDaoImpl extends BaseDaoImpl<Member> implements MemberDao {

	public Member login(String lname, String pwd) {
		
		String sql = "select  *  from  member where   username = ?  and  pwd  = ?";

		Member member = this.findOne(sql, new Object[] { lname, pwd });

		return member;
	}

	public List<Member> findByName(String name) {
		
		String sql = "select   *  from  member  where  real_name like '%"
				+ name + "%'";
		System.out.println(sql);

		List<Member> list = this.find(sql, null);

		return list;
	}

	

	
}
