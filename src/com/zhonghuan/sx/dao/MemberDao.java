package com.zhonghuan.sx.dao;

import java.util.List;

import com.zhonghuan.dao.common.BaseDao;
import com.zhonghuan.sx.entity.Member;

public interface MemberDao extends BaseDao<Member> {
	public  Member login(String lname, String pwd);
	
	public List<Member> findByName(String name);
}
