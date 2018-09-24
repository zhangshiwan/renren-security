package io.renren.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import io.renren.dao.LinkPublishStudentDao;
import io.renren.entity.LinkPublishStudentEntity;
import io.renren.service.LinkPublishStudentService;



@Service("linkPublishStudentService")
public class LinkPublishStudentServiceImpl implements LinkPublishStudentService {
	@Autowired
	private LinkPublishStudentDao linkPublishStudentDao;
	
	@Override
	public LinkPublishStudentEntity queryObject(Long id){
		return linkPublishStudentDao.queryObject(id);
	}
	
	@Override
	public List<LinkPublishStudentEntity> queryList(Map<String, Object> map){
		return linkPublishStudentDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return linkPublishStudentDao.queryTotal(map);
	}
	
	@Override
	public void save(LinkPublishStudentEntity linkPublishStudent){
		linkPublishStudentDao.save(linkPublishStudent);
	}
	
	@Override
	public void update(LinkPublishStudentEntity linkPublishStudent){
		linkPublishStudentDao.update(linkPublishStudent);
	}
	
	@Override
	public void delete(Long id){
		linkPublishStudentDao.delete(id);
	}
	
	@Override
	public void deleteBatch(Long[] ids){
		linkPublishStudentDao.deleteBatch(ids);
	}
	
}
