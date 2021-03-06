//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.ExamSelectController');
com.layou.study.ExamSelectController = function() {
    com.layou.study.ExamSelectController.initializeBase(this);
    this.initialize();
}
function com$layou$study$ExamSelectController$initialize(){
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
    
function com$layou$study$ExamSelectController$evaljs(js){
    eval(js)
}
function com$layou$study$ExamSelectController$closeExamSelect(sender, args){
	$view.close();
}
function com$layou$study$ExamSelectController$enterExamTopic(sender, args){
	//////////////////////////////
	//要改
	//////////////////////////////
	var paperId = "8a82f09b4e242686014e242686900000";
	var url = $cache.read("url");
	$service.get({
		"url" : url + "/HappyStudyServer/topic/findTopicByPaper?search_paperId=" + paperId,
		"callback" : "loadExamToticCallback()",
		"timeout" : "5"//可选参数，超时时间，单位为秒
	});
}
function loadExamToticCallback(){
	var result = $ctx.param("result");//get和post的CallBack中获取返回结果都从result中获取
	if(com.layou.study.GlobalUtil.isEmptyString(result)){
		$alert("请求超时");
		return;
	}
	result = $stringToJSON(result);//将字符串转换成JSON对象
	if(result.rows.length > 0){
		$view.open({
			"viewid" : "com.layou.study.ExamTopic",//目标页面（首字母大写）全名，
			"isKeep" : "false",
			"toticData" : result
		});
	}
}
function com$layou$study$ExamSelectController$openExamHistory(sender, args){
	$view.open({
		"viewid" : "com.layou.study.ExamHistory",//目标页面（首字母大写）全名，
		"isKeep" : "true"
	});
}
function com$layou$study$ExamSelectController$loadUserInfo(sender, args){
	var userName = $ctx.getApp("userName");
	var teamType = $ctx.getApp("teamType");
	var teamClass = $ctx.getApp("teamClass");
	$id("label1").set("value", userName);
	$id("label2").set("value", teamType + "-" + teamClass + " | 中国平安培训");
}
function com$layou$study$ExamSelectController$popExamPaper(sender, args){
	var jsonArgs = {
		viewid : "panel1",
		popgravity : "popbottom"
	};
	$view.openPop(jsonArgs);
}
com.layou.study.ExamSelectController.prototype = {
    popExamPaper : com$layou$study$ExamSelectController$popExamPaper,
    loadUserInfo : com$layou$study$ExamSelectController$loadUserInfo,
    openExamHistory : com$layou$study$ExamSelectController$openExamHistory,
    enterExamTopic : com$layou$study$ExamSelectController$enterExamTopic,
    closeExamSelect : com$layou$study$ExamSelectController$closeExamSelect,
    initialize : com$layou$study$ExamSelectController$initialize,
    evaljs : com$layou$study$ExamSelectController$evaljs
};
com.layou.study.ExamSelectController.registerClass('com.layou.study.ExamSelectController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
