package io.renren.controller;

import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.renren.entity.LinkPublishStudentEntity;
import io.renren.service.LinkPublishStudentService;
import io.renren.utils.PageUtils;
import io.renren.utils.Query;
import io.renren.utils.R;


/**
 * 教师学生关联表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017-05-28 00:04:22
 */
@RestController
@RequestMapping("linkpublishstudent")
public class LinkPublishStudentController {
	@Autowired
	private LinkPublishStudentService linkPublishStudentService;
	
	/**
	 * 列表
	 */
	@RequestMapping("/list")
	@RequiresPermissions("linkpublishstudent:list")
	public R list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);

		List<LinkPublishStudentEntity> linkPublishStudentList = linkPublishStudentService.queryList(query);
		int total = linkPublishStudentService.queryTotal(query);
		
		PageUtils pageUtil = new PageUtils(linkPublishStudentList, total, query.getLimit(), query.getPage());
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@RequestMapping("/info/{id}")
	@RequiresPermissions("linkpublishstudent:info")
	public R info(@PathVariable("id") Long id){
		LinkPublishStudentEntity linkPublishStudent = linkPublishStudentService.queryObject(id);
		
		return R.ok().put("linkPublishStudent", linkPublishStudent);
	}
	
	/**
	 * 保存
	 */
	@RequestMapping("/save")
	@RequiresPermissions("linkpublishstudent:save")
	public R save(@RequestBody LinkPublishStudentEntity linkPublishStudent){
		linkPublishStudentService.save(linkPublishStudent);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@RequestMapping("/update")
	@RequiresPermissions("linkpublishstudent:update")
	public R update(@RequestBody LinkPublishStudentEntity linkPublishStudent){
		linkPublishStudentService.update(linkPublishStudent);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@RequestMapping("/delete")
	@RequiresPermissions("linkpublishstudent:delete")
	public R delete(@RequestBody Long[] ids){
		linkPublishStudentService.deleteBatch(ids);
		
		return R.ok();
	}
	
}
