//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.RegisterController');
com.layou.study.RegisterController = function() {
    com.layou.study.RegisterController.initializeBase(this);
    this.initialize();
}
function com$layou$study$RegisterController$initialize(){
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
    
function com$layou$study$RegisterController$evaljs(js){
    eval(js)
}
function com$layou$study$RegisterController$closeRegister(sender, args){
	$view.close();
}
function com$layou$study$RegisterController$nextJs(sender, args){
	$view.open({
		"viewid" : "com.layou.study.Home",//目标页面（首字母大写）全名，
		"isKeep" : "false"
	});
}
function com$layou$study$RegisterController$loadTeamType(sender, args){
	$service.get({
		"url" : "http://192.168.1.105:8080/HappyStudyServer/teamClass/list",
		"callback" : "loadClassCallBack()",
		"timeout" : "5"//可选参数，超时时间，单位为秒
	});
}
function loadClassCallBack(){
	var result = $ctx.param("result");//get和post的CallBack中获取返回结果都从result中获取
	result = $stringToJSON(result);//将字符串转换成JSON对象
	$alert(result);
	$ctx.put("list",result.rows);
	$ctx.dataBind();
	var context={
		citys:["合肥1","合肥2","合肥3","合肥4","合肥5","安庆","蚌埠","亳州","巢湖","池州","滁州","阜阳","淮北","淮南","黄山","六安","马鞍山","宿州","铜陵","芜湖","宣城"],
		types:["职前班","考试辅导班","岗前班","步步高","加油站","冲锋班","部（课）衔训","导师技能提升班","研讨班"],
		teams:[ "201501","201502","201503","201504","201505","201506","201507","201508","201509","201510","201511","201512"]
	}
	$ctx.push(context);//数据绑定,将context的值与picker进行绑定
}
com.layou.study.RegisterController.prototype = {
    loadTeamType : com$layou$study$RegisterController$loadTeamType,
    nextJs : com$layou$study$RegisterController$nextJs,
    closeRegister : com$layou$study$RegisterController$closeRegister,
    initialize : com$layou$study$RegisterController$initialize,
    evaljs : com$layou$study$RegisterController$evaljs
};
com.layou.study.RegisterController.registerClass('com.layou.study.RegisterController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
