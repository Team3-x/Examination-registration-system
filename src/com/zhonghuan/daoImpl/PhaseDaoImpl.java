package com.zhonghuan.daoImpl;

import java.util.List;

import com.zhonghuan.daoImpl.common.BaseDaoImpl;
import com.zhonghuan.sx.dao.PhaseDao;
import com.zhonghuan.sx.entity.Phase;

/**
 * PhashDao实现类
 * 
 * @author Administrator
 *
 */
public class PhaseDaoImpl extends BaseDaoImpl<Phase> implements PhaseDao {

	/**
	 * 根据阶段信息名称进行模糊查询
	 */
	public List<Phase> findByName(String name) {
		String sql = "select   *  from   phase  where  stagename like '%"
				+ name + "%'";
		List<Phase> list = this.find(sql, null);
		return list;
	}

}
