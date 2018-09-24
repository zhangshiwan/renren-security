$(function () {
    $("#jqGrid").jqGrid({
        url: '../entitypublish/list',
        datatype: "json",
        colModel: [			
			{ label: 'id', name: 'id', index: 'id', width: 50, key: true },
			{ label: '用户名', name: 'userName', index: 'user_name', width: 80 }, 			
			{ label: '用户主键', name: 'userId', index: 'user_id', width: 80 }, 			
			{ label: '发布资源任务描述', name: 'resDes', index: 'res_des', width: 80 }, 			
			{ label: '聊天类型', name: 'resType', index: 'res_type', width: 80 },
			{ label: '创建时间', name: 'createTime', index: 'create_time', width: 80 }, 			
			{ label: '技能类别。 1:计算机。2：英语', name: 'category', index: 'category', width: 80 }, 			
			{ label: '技能关键字', name: 'keywords', index: 'keywords', width: 80 }, 			
			{ label: '费用类型', name: 'feeType', index: 'fee_type', width: 80 },
			{ label: '收费自定义', name: 'ownFeeDesc', index: 'own_fee_desc', width: 80 }, 			
			{ label: '频道名称', name: 'channelName', index: 'channel_name', width: 80 }, 			
			{ label: '学习或发布', name: 'sourceType', index: 'source_type', width: 80 },
			{					name : "url",
                index : "url",
                formatter : showPicture,
                editable : true,
                edittype : 'file',
                editoptions:{enctype:"multipart/form-data"},
                width : 40,

            }

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
function showPicture(cellvalue, options, rowObject){

    return "<img src='" +cellvalue  + "' height='50' width='50' />";
}




var vm = new Vue({
	el:'#rrapp',
	data:{
		showList: true,
		title: null,
		entityPublish: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.entityPublish = {};
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
			var url = vm.entityPublish.id == null ? "../entitypublish/save" : "../entitypublish/update";
			$.ajax({
				type: "POST",
			    url: url,
			    data: JSON.stringify(vm.entityPublish),
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
				    url: "../entitypublish/delete",
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
			$.get("../entitypublish/info/"+id, function(r){
                vm.entityPublish = r.entityPublish;
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