package io.renren.service;

import io.renren.entity.EntityPublishEntity;

import java.util.List;
import java.util.Map;

/**
 * 教学发布表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017-05-28 00:04:22
 */
public interface EntityPublishService {
	
	EntityPublishEntity queryObject(Long id);
	
	List<EntityPublishEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(EntityPublishEntity entityPublish);
	
	void update(EntityPublishEntity entityPublish);
	
	void delete(Long id);
	
	void deleteBatch(Long[] ids);
}
