//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.AboutController');
com.layou.study.AboutController = function() {
    com.layou.study.AboutController.initializeBase(this);
    this.initialize();
}
function com$layou$study$AboutController$initialize(){
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
    
function com$layou$study$AboutController$evaljs(js){
    eval(js)
}
function com$layou$study$AboutController$closeAbout(sender, args){
	$view.close();
}
function com$layou$study$AboutController$enterOpinionTickling(sender, args){
	$view.open({
		"viewid" : "com.layou.study.OpinionTickling",//目标页面（首字母大写）全名，
		"isKeep" : "true"
	});
}
function com$layou$study$AboutController$openSystemHelp(sender, args){
	$view.open({
		"viewid" : "com.layou.study.SystemHelp",//目标页面（首字母大写）全名，
		"isKeep" : "true"
	});
}
function com$layou$study$AboutController$openAboutSystem(sender, args){
	$view.open({
		"viewid" : "com.layou.study.AboutSystem",//目标页面（首字母大写）全名，
		"isKeep" : "true"
	});
}
function com$layou$study$AboutController$loadUserInfo(sender, args){
	var userName = $ctx.getApp("userName");
	var teamType = $ctx.getApp("teamType");
	var teamClass = $ctx.getApp("teamClass");
	$id("label4").set("value", userName);
	$id("label5").set("value", teamType + "-" + teamClass);
}
com.layou.study.AboutController.prototype = {
    loadUserInfo : com$layou$study$AboutController$loadUserInfo,
    openAboutSystem : com$layou$study$AboutController$openAboutSystem,
    openSystemHelp : com$layou$study$AboutController$openSystemHelp,
    enterOpinionTickling : com$layou$study$AboutController$enterOpinionTickling,
    closeAbout : com$layou$study$AboutController$closeAbout,
    initialize : com$layou$study$AboutController$initialize,
    evaljs : com$layou$study$AboutController$evaljs
};
com.layou.study.AboutController.registerClass('com.layou.study.AboutController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
