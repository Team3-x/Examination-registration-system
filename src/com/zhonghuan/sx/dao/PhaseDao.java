package com.zhonghuan.sx.dao;

import java.util.List;

import com.zhonghuan.dao.common.BaseDao;
import com.zhonghuan.sx.entity.Phase;

/**
 * 阶段定义Dao
 * 
 * @author Administrator
 *
 */
public interface PhaseDao extends BaseDao<Phase> {

	List<Phase> findByName(String name);

}
