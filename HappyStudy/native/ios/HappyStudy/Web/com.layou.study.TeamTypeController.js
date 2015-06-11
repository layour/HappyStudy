//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.TeamTypeController');
com.layou.study.TeamTypeController = function() {
    com.layou.study.TeamTypeController.initializeBase(this);
    this.initialize();
}
function com$layou$study$TeamTypeController$initialize(){
    //you can programing by $ctx API
    //get the context data through $ctx.get()
    //set the context data through $ctx.push(json)
    //set the field of the context through $ctx.put(fieldName, fieldValue)
    //get the parameter of the context through $ctx.param(parameterName)
    //Demo Code:
    //    var str = $ctx.getString();      //获取当前Context对应的字符串
    //    alert($ctx.getString())          //alert当前Context对应的字符串
    //    var json = $ctx.getJSONObject(); //获取当前Context，返回值为json
    //    json["x"] = "a";        //为当前json增加字段
    //    json["y"] = [];           //为当前json增加数组
    //    $ctx.push(json);            //设置context，并自动调用数据绑定
    //    
    //    put方法需手动调用databind()
    //    var x = $ctx.get("x");    //获取x字段值
    //    $ctx.put("x", "b");     //设置x字段值
    //    $ctx.put("x", "b");     //设置x字段值
    //    $ctx.databind();            //调用数据绑定才能将修改的字段绑定到控件上
    //    var p1 = $param.getString("p1");   //获取参数p2的值，返回一个字符串
    //    var p2 = $param.getJSONObject("p2");   //获取参数p3的值，返回一个JSON对象
    //    var p3 = $param.getJSONArray("p3");   //获取参数p1的值，返回一个数组
    
    //your initialize code below...
    
}
    
function com$layou$study$TeamTypeController$evaljs(js){
    eval(js)
}
function com$layou$study$TeamTypeController$registerJs(sender, args){
	$view.open({
		"viewid" : "com.layou.study.Home",//目标页面（首字母大写）全名，
		"isKeep" : "false"
	});
}
function com$layou$study$TeamTypeController$closeTeamType(sender, args){
	$view.close();
}
function com$layou$study$TeamTypeController$loadTeamType(sender, args){
	var context={
		citys:["合肥1","合肥2","合肥3","合肥4","合肥5","安庆","蚌埠","亳州","巢湖","池州","滁州","阜阳","淮北","淮南","黄山","六安","马鞍山","宿州","铜陵","芜湖","宣城"],
		types:["职前班","考试辅导班","岗前班","步步高","加油站","冲锋班","部（课）衔训","导师技能提升班","研讨班"],
		teams:[ "201501","201502","201503","201504","201505","201506","201507","201508","201509","201510","201511","201512"]
	}
	$ctx.push(context);//数据绑定,将context的值与picker进行绑定
}
com.layou.study.TeamTypeController.prototype = {
    loadTeamType : com$layou$study$TeamTypeController$loadTeamType,
    closeTeamType : com$layou$study$TeamTypeController$closeTeamType,
    registerJs : com$layou$study$TeamTypeController$registerJs,
    initialize : com$layou$study$TeamTypeController$initialize,
    evaljs : com$layou$study$TeamTypeController$evaljs
};
com.layou.study.TeamTypeController.registerClass('com.layou.study.TeamTypeController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
