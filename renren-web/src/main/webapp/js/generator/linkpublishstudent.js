$(function () {
    $("#jqGrid").jqGrid({
        url: '../linkpublishstudent/list',
        datatype: "json",
        colModel: [			
			{ label: 'id', name: 'id', index: 'id', width: 50, key: true },
			{ label: '老师名', name: 'teacherUserName', index: 'teacher_user_name', width: 80 }, 			
			{ label: '老师主键', name: 'teacherUserId', index: 'teacher_user_id', width: 80 }, 			
			{ label: '学生名', name: 'studentUserName', index: 'student_user_name', width: 80 }, 			
			{ label: '学生主键', name: 'studentUserId', index: 'student_user_id', width: 80 }, 			
			{ label: '发布资源任务描述', name: 'resDes', index: 'res_des', width: 80 }, 			
			{ label: '聊天类型', name: 'resType', index: 'res_type', width: 80 },
			{ label: '创建时间', name: 'createTime', index: 'create_time', width: 80 }, 			
			{ label: '技能类别。 1:计算机。2：英语', name: 'category', index: 'category', width: 80 }, 			
			{ label: '技能关键字', name: 'keywords', index: 'keywords', width: 80 }, 			
			{ label: '费用类型', name: 'feeType', index: 'fee_type', width: 80 },
			{ label: '收费自定义', name: 'ownFeeDesc', index: 'own_fee_desc', width: 80 }, 			
			{ label: '频道名称', name: 'channelName', index: 'channel_name', width: 80 }			
        ],
		viewrecords: true,
        height: 385,
        rowNum: 10,
		rowList : [10,30,50],
        rownumbers: true, 
        rownumWidth: 25, 
        autowidth:true,
        multiselect: true,
        pager: "#jqGridPager",
        jsonReader : {
            root: "page.list",
            page: "page.currPage",
            total: "page.totalPage",
            records: "page.totalCount"
        },
        prmNames : {
            page:"page", 
            rows:"limit", 
            order: "order"
        },
        gridComplete:function(){
        	//隐藏grid底部滚动条
        	$("#jqGrid").closest(".ui-jqgrid-bdiv").css({ "overflow-x" : "hidden" }); 
        }
    });
});

var vm = new Vue({
	el:'#rrapp',
	data:{
		showList: true,
		title: null,
		linkPublishStudent: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.linkPublishStudent = {};
		},
		update: function (event) {
			var id = getSelectedRow();
			if(id == null){
				return ;
			}
			vm.showList = false;
            vm.title = "修改";
            
            vm.getInfo(id)
		},
		saveOrUpdate: function (event) {
			var url = vm.linkPublishStudent.id == null ? "../linkpublishstudent/save" : "../linkpublishstudent/update";
			$.ajax({
				type: "POST",
			    url: url,
			    data: JSON.stringify(vm.linkPublishStudent),
			    success: function(r){
			    	if(r.code === 0){
						alert('操作成功', function(index){
							vm.reload();
						});
					}else{
						alert(r.msg);
					}
				}
			});
		},
		del: function (event) {
			var ids = getSelectedRows();
			if(ids == null){
				return ;
			}
			
			confirm('确定要删除选中的记录？', function(){
				$.ajax({
					type: "POST",
				    url: "../linkpublishstudent/delete",
				    data: JSON.stringify(ids),
				    success: function(r){
						if(r.code == 0){
							alert('操作成功', function(index){
								$("#jqGrid").trigger("reloadGrid");
							});
						}else{
							alert(r.msg);
						}
					}
				});
			});
		},
		getInfo: function(id){
			$.get("../linkpublishstudent/info/"+id, function(r){
                vm.linkPublishStudent = r.linkPublishStudent;
            });
		},
		reload: function (event) {
			vm.showList = true;
			var page = $("#jqGrid").jqGrid('getGridParam','page');
			$("#jqGrid").jqGrid('setGridParam',{ 
                page:page
            }).trigger("reloadGrid");
		}
	}
});