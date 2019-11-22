package com.zhonghuan.daoImpl.common;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.zhonghuan.common.DBHelper;
import com.zhonghuan.dao.common.BaseDao;
import com.zhonghuan.dao.common.DaoException;
import com.zhonghuan.entity.common.Entity;
import com.zhonghuan.entity.common.Page;

/**
 * 使用commons-dbutils.jar实现的通用DAO实现类
 * 
 * @param <T>
 */
@SuppressWarnings("unchecked")
public abstract class BaseDaoImpl<T extends Entity> implements BaseDao<T> {

	protected QueryRunner qr = new QueryRunner();

	protected BeanHandler<T> beanHandler;
	protected BeanListHandler<T> beanListHandler;
	protected ScalarHandler<Long> scalarHandler = new ScalarHandler<Long>();

	/** 当前要操作的实体类的类型信息对象 */
	protected Class<T> clazz;

	/** 当前要操作的实体类对应的表的名称 */
	protected String tableName;

	public BaseDaoImpl() {
		// 通过反射机制获取子类传递过来的实体类的类型信息对象
		ParameterizedType type = (ParameterizedType) this.getClass()
				.getGenericSuperclass();
		clazz = (Class<T>) type.getActualTypeArguments()[0];

		beanHandler = new BeanHandler<T>(clazz);
		beanListHandler = new BeanListHandler<T>(clazz);

		// 默认情况下，表名就是实体类名全部小写
		tableName = clazz.getSimpleName().toLowerCase();
	}

	/**
	 * 默认情况下，表名就是实体类名全部小写。如果需要更改表名，请在子类中重写本方法
	 */
	public String getTableName() {
		return tableName;
	}

	/**
	 * 默认情况下，表的主键列名是“id”
	 * 
	 * @return
	 */
	public String getPkName() {
		return "id";
	}

	public T save(T entity) throws DaoException {

		// INSERT INTO 表名(列名,列名...) VALUES(?,?...);
		StringBuilder values = new StringBuilder("");
		StringBuilder sql = new StringBuilder("INSERT INTO ");
		sql.append(getTableName());
		sql.append("(");

		Map<String, Object> map = getFieldValueMap(entity);
		map.remove(getPkName()); // 把主键列的值移除掉

		// 用于存放参数值的集合
		List<Object> paramValues = new ArrayList<Object>();

		int i = 0;
		for (Map.Entry<String, Object> entry : map.entrySet()) {
			if (i++ > 0) {
				sql.append(",");
				values.append(",");
			}
			String name = entry.getKey(); // 字段名
			sql.append(name);

			values.append("?");
			Object value = entry.getValue(); // 字段的值
			paramValues.add(value);
		}
		sql.append(") ");
		sql.append(" VALUES(");
		sql.append(values);
		sql.append(")");

		System.out.println(sql.toString());

		Connection conn = null;
		try {
			conn = DBHelper.getConn();
			Long temp = qr.insert(conn, sql.toString(), scalarHandler,
					paramValues.toArray());
			if (temp != null) {
				entity.setId(temp);
			}
		} catch (SQLException e) {
			throw new DaoException(e);
		} finally {
			DbUtils.closeQuietly(conn);
		}
		return entity;
	}

	public void update(T entity) throws DaoException {

		// UPDATE 表名 SET 列名=?,列名=?... WHERE id=?;
		StringBuilder sql = new StringBuilder("UPDATE ");
		sql.append(getTableName());
		sql.append(" SET ");

		Map<String, Object> map = getFieldValueMap(entity);
		// 先获取主键列的值
		Object idValue = map.get(getPkName());
		map.remove(getPkName()); // 把主键列的值移除掉

		// 用于存放参数值的集合
		List<Object> paramValues = new ArrayList<Object>();

		int i = 0;
		for (Map.Entry<String, Object> entry : map.entrySet()) {
			if (i++ > 0) {
				sql.append(",");
			}
			String name = entry.getKey(); // 字段名
			sql.append(name);
			sql.append("=?");

			Object value = entry.getValue(); // 字段的值
			paramValues.add(value);
		}
		sql.append(" WHERE ");
		sql.append(getPkName());
		sql.append("=?");
		paramValues.add(idValue);

		System.out.println(sql.toString());
		System.out.println(paramValues);

		Connection conn = null;
		try {
			conn = DBHelper.getConn();
			qr.update(conn, sql.toString(), paramValues.toArray());
		} catch (SQLException e) {
			throw new DaoException(e);
		} finally {
			DbUtils.closeQuietly(conn);
		}
	}

	public void delete(Long id) throws DaoException {

		StringBuilder sql = new StringBuilder("DELETE FROM ");
		sql.append(getTableName());
		sql.append(" WHERE ");
		sql.append(getPkName());
		sql.append("=?");

		Connection conn = null;
		try {
			conn = DBHelper.getConn();
			qr.update(conn, sql.toString(), id);
		} catch (SQLException e) {
			throw new DaoException(e);
		} finally {
			DbUtils.closeQuietly(conn);
		}
	}

	public boolean exists(Long id) throws DaoException {
		boolean flag = false;

		StringBuilder sql = new StringBuilder("SELECT count(");
		sql.append(getPkName());
		sql.append(") FROM ");
		sql.append(getTableName());
		sql.append(" WHERE ");
		sql.append(getPkName());
		sql.append("=?");

		System.out.println(sql.toString());

		Connection conn = null;
		try {
			conn = DBHelper.getConn();
			Long temp = qr.query(conn, sql.toString(), scalarHandler, id);
			if (temp != null && temp.intValue() > 0) {
				flag = true;
			}
		} catch (SQLException e) {
			throw new DaoException(e);
		} finally {
			DbUtils.closeQuietly(conn);
		}

		return flag;
	}

	public T findOne(Long id) throws DaoException {
		T entity = null;

		StringBuilder sql = new StringBuilder("SELECT * FROM ");
		sql.append(getTableName());
		sql.append(" WHERE ");
		sql.append(getPkName());
		sql.append("=?");

		System.out.println(sql.toString());

		Connection conn = null;
		try {
			conn = DBHelper.getConn();
			entity = qr.query(conn, sql.toString(), beanHandler, id);
		} catch (SQLException e) {
			throw new DaoException(e);
		} finally {
			DbUtils.closeQuietly(conn);
		}

		return entity;
	}

	public List<T> findAll() throws DaoException {
		List<T> list = null;

		StringBuilder sql = new StringBuilder("SELECT * FROM ");
		sql.append(getTableName());

		System.out.println(sql.toString());

		Connection conn = null;

		try {
			conn = DBHelper.getConn();
			list = qr.query(conn, sql.toString(), beanListHandler);
		} catch (SQLException e) {
			throw new DaoException(e);
		} finally {
			DbUtils.closeQuietly(conn);
		}

		return list;
	}

	public long count() throws DaoException {
		long count = 0;

		StringBuilder sql = new StringBuilder("SELECT count(");
		sql.append(getPkName());
		sql.append(") FROM ");
		sql.append(getTableName());

		System.out.println(sql.toString());

		Connection conn = null;
		try {
			conn = DBHelper.getConn();
			Long temp = qr.query(conn, sql.toString(), scalarHandler);
			if (temp != null) {
				count = temp.longValue();
			}
		} catch (SQLException e) {
			throw new DaoException(e);
		} finally {
			DbUtils.closeQuietly(conn);
		}

		return count;
	}

	public Page<T> findAll(int page, int size) throws DaoException {
		Page<T> pager = new Page<T>(page, size);

		long count = count();
		if (count > 0) {
			pager.setTotalElements(count);

			StringBuilder sql = new StringBuilder("SELECT * FROM ");
			sql.append(getTableName());
			sql.append(" LIMIT ?,?");

			System.out.println(sql.toString());

			Object[] params = { (page - 1) * size, size };

			System.out.println(Arrays.toString(params));

			Connection conn = null;
			try {
				conn = DBHelper.getConn();
				List<T> items = qr.query(conn, sql.toString(), beanListHandler,
						params);
				pager.setItems(items);
			} catch (SQLException e) {
				throw new DaoException(e);
			} finally {
				DbUtils.closeQuietly(conn);
			}
		}

		return pager;
	}

	public void update(String sql, Object... paramValues) throws DaoException {
		Connection conn = null;
		try {
			conn = DBHelper.getConn();

			qr.update(conn, sql, paramValues);
		} catch (SQLException e) {
			throw new DaoException(e);
		} finally {
			DbUtils.closeQuietly(conn);
		}
	}

	public List<T> find(String sql, Object... paramValues) throws DaoException {
		List<T> list = null;

		Connection conn = null;
		try {
			conn = DBHelper.getConn();

			list = qr.query(conn, sql, beanListHandler, paramValues);
		} catch (SQLException e) {
			throw new DaoException(e);
		} finally {
			DbUtils.closeQuietly(conn);
		}

		return list;
	}

	public T findOne(String sql, Object... paramValues) throws DaoException {
		T entity = null;

		Connection conn = null;
		try {
			conn = DBHelper.getConn();

			entity = qr.query(conn, sql, beanHandler, paramValues);
		} catch (SQLException e) {
			throw new DaoException(e);
		} finally {
			DbUtils.closeQuietly(conn);
		}

		return entity;
	}

	/**
	 * 通过反射机制，获取指定实体类对象的所有属性名及对应值的Map实例
	 * 
	 * @param entity
	 *            实例
	 * @return 字段名及对应值的Map实例
	 */
	protected Map<String, Object> getFieldValueMap(T entity) {
		// key是属性名,value是对应值
		Map<String, Object> fieldValueMap = new HashMap<String, Object>();

		// 获取当前加载的实体类中所有属性(字段)
		Field[] fields = this.clazz.getDeclaredFields(); // 反射
		// 获取父类中的属性
		Field[] parentFields = this.clazz.getSuperclass().getDeclaredFields();

		for (int i = 0; i < fields.length; i++) {
			Field f = fields[i];
			String name = f.getName(); // 属性名

			if (!"serialVersionUID".equalsIgnoreCase(name)) { // 忽略序列化版本ID号
				// System.out.println("字段的名：" + name);

				f.setAccessible(true);// 取消 Java语言访问检查
				try {
					Object value = f.get(entity); // 反射获取该属性的值

					fieldValueMap.put(name, value);

					// System.out.println("字段值：" + value);
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				}
			}
		}

		for (int i = 0; i < parentFields.length; i++) {
			Field f = parentFields[i];
			String name = f.getName(); // 属性名

			if (!"serialVersionUID".equalsIgnoreCase(name)) { // 忽略序列化版本ID号
				// System.out.println("字段的名：" + name);

				f.setAccessible(true);// 取消 Java语言访问检查
				try {
					Object value = f.get(entity); // 反射获取该属性的值

					fieldValueMap.put(name, value);

					// System.out.println("字段值：" + value);
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				}
			}
		}

		return fieldValueMap;
	}
}
