package io.renren.service;

import io.renren.entity.LinkPublishStudentEntity;

import java.util.List;
import java.util.Map;

/**
 * 教师学生关联表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017-05-28 00:04:22
 */
public interface LinkPublishStudentService {
	
	LinkPublishStudentEntity queryObject(Long id);
	
	List<LinkPublishStudentEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(LinkPublishStudentEntity linkPublishStudent);
	
	void update(LinkPublishStudentEntity linkPublishStudent);
	
	void delete(Long id);
	
	void deleteBatch(Long[] ids);
}
