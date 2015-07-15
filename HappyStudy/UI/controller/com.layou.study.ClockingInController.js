//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.ClockingInController');
com.layou.study.ClockingInController = function() {
    com.layou.study.ClockingInController.initializeBase(this);
    this.initialize();
}
function com$layou$study$ClockingInController$initialize(){
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
    
function com$layou$study$ClockingInController$evaljs(js){
    eval(js)
}
function com$layou$study$ClockingInController$closeClockingIn(sender, args){
	$view.close();
}
function com$layou$study$ClockingInController$clockingIn(sender, args){
	com.layou.study.GlobalFunction.clockingIn();
}
function com$layou$study$ClockingInController$clockingInLoad(sender, args){
	var userId = $ctx.getApp("userId");
	var url = $cache.read("url");
	$service.get({
		"url" : url + "/HappyStudyServer/checkIn/list?page.size=20&search_userId=" + userId,
		"callback" : "loadCheckCallback()",
		"timeout" : "5"//可选参数，超时时间，单位为秒
	});
}
function loadCheckCallback(){
	var result = $ctx.param("result");//get和post的CallBack中获取返回结果都从result中获取
	result = $stringToJSON(result);//将字符串转换成JSON对象
	$ctx.put("list",result.rows);
	$ctx.dataBind();
}
com.layou.study.ClockingInController.prototype = {
    clockingInLoad : com$layou$study$ClockingInController$clockingInLoad,
    clockingIn : com$layou$study$ClockingInController$clockingIn,
    closeClockingIn : com$layou$study$ClockingInController$closeClockingIn,
    initialize : com$layou$study$ClockingInController$initialize,
    evaljs : com$layou$study$ClockingInController$evaljs
};
com.layou.study.ClockingInController.registerClass('com.layou.study.ClockingInController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
