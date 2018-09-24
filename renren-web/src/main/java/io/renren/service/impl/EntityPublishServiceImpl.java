package io.renren.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import io.renren.dao.EntityPublishDao;
import io.renren.entity.EntityPublishEntity;
import io.renren.service.EntityPublishService;



@Service("entityPublishService")
public class EntityPublishServiceImpl implements EntityPublishService {
	@Autowired
	private EntityPublishDao entityPublishDao;
	
	@Override
	public EntityPublishEntity queryObject(Long id){
		return entityPublishDao.queryObject(id);
	}
	
	@Override
	public List<EntityPublishEntity> queryList(Map<String, Object> map){
		return entityPublishDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return entityPublishDao.queryTotal(map);
	}
	
	@Override
	public void save(EntityPublishEntity entityPublish){
		entityPublishDao.save(entityPublish);
	}
	
	@Override
	public void update(EntityPublishEntity entityPublish){
		entityPublishDao.update(entityPublish);
	}
	
	@Override
	public void delete(Long id){
		entityPublishDao.delete(id);
	}
	
	@Override
	public void deleteBatch(Long[] ids){
		entityPublishDao.deleteBatch(ids);
	}
	
}
