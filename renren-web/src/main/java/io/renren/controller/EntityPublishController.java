package io.renren.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import io.renren.entity.SysUserEntity;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.renren.entity.EntityPublishEntity;
import io.renren.service.EntityPublishService;
import io.renren.utils.PageUtils;
import io.renren.utils.Query;
import io.renren.utils.R;


/**
 * 教学发布表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017-05-28 00:04:22
 */
@RestController
@RequestMapping("entitypublish")
public class EntityPublishController extends AbstractController {
	@Autowired
	private EntityPublishService entityPublishService;
	
	/**
	 * 列表
	 */
	@RequestMapping("/list")
	@RequiresPermissions("entitypublish:list")
	public R list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);

		List<EntityPublishEntity> entityPublishList = entityPublishService.queryList(query);
		int total = entityPublishService.queryTotal(query);
		
		PageUtils pageUtil = new PageUtils(entityPublishList, total, query.getLimit(), query.getPage());
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@RequestMapping("/info/{id}")
	@RequiresPermissions("entitypublish:info")
	public R info(@PathVariable("id") Long id){
		EntityPublishEntity entityPublish = entityPublishService.queryObject(id);
		
		return R.ok().put("entityPublish", entityPublish);
	}
	
	/**
	 * 保存
	 */
	@RequestMapping("/save")
	@RequiresPermissions("entitypublish:save")
	public R save(@RequestBody EntityPublishEntity entityPublish){

		entityPublish.setCreateTime(new Date());

		SysUserEntity user = getUser();
		entityPublish.setUserId(user.getUserId().toString());
		entityPublish.setUserName(user.getUsername());
		entityPublish.setSourceType(2);

		entityPublishService.save(entityPublish);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@RequestMapping("/update")
	@RequiresPermissions("entitypublish:update")
	public R update(@RequestBody EntityPublishEntity entityPublish){
		entityPublishService.update(entityPublish);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@RequestMapping("/delete")
	@RequiresPermissions("entitypublish:delete")
	public R delete(@RequestBody Long[] ids){
		entityPublishService.deleteBatch(ids);
		
		return R.ok();
	}
	
}
