/**
 * Created by zhangshiwan on 2017/5/29.
 */
var menuItem = Vue.extend({
    name: 'menu-item',
    props:{item:{}},
    template:[
        '',
        '<a v-if="item.type === 0" href="javascript:;">',
        '<i v-if="item.icon != null" :class="item.icon"></i>',
        '<span>{{item.name}}</span>',
        '<i class="fa fa-angle-left pull-right"></i>',
        '</a>',
        '<ul v-if="item.type === 0" class="treeview-menu">',
        '<menu-item :item="item" v-for="item in item.list"></menu-item>',
        '</ul>',
        '<a v-if="item.type === 1" :href="\'#\'+item.url"><i v-if="item.icon != null" :class="item.icon"></i><i v-else class="fa fa-circle-o"></i> {{item.name}}</a>',
        '</li>'
    ].join('')
});



//注册菜单组件
Vue.component('menuItem',menuItem);


var vm = new Vue({
    el:'#app-4',
    data:{
        user:{},
        publishList:{}
    },
    methods: {
        getPublishList: function (event) {
            var url = "../entitypublish/list?_"+$.now();
            $.ajax({
                type: "POST",
                url: url,
                data: {"page":1,"limit":100},
                success: function(r){
                    if(r.code === 0){
                        vm.publishList = r.page.list;
                    }else{
                        //alert(r.msg);
                    }
                }
            });
        },
        getUser: function(){
            $.getJSON("../sys/user/info?_"+$.now(), function(r){
                vm.user = r.user;
            });
        },

    },
    created: function(){
        this.getPublishList();
        this.getUser();
    },
    updated: function(){
        //路由

    }
});



