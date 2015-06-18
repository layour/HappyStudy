//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.OpinionTicklingController');
com.layou.study.OpinionTicklingController = function() {
    com.layou.study.OpinionTicklingController.initializeBase(this);
    this.initialize();
}
function com$layou$study$OpinionTicklingController$initialize(){
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
    
function com$layou$study$OpinionTicklingController$evaljs(js){
    eval(js)
}
function com$layou$study$OpinionTicklingController$closeOpinionTickling(sender, args){
	$view.close();
}
function com$layou$study$OpinionTicklingController$openOpinionDetail(sender, args){
	$view.open({
		"viewid" : "com.layou.study.OpinionDetail",//目标页面（首字母大写）全名，
		"isKeep" : "true"
	});
}
function com$layou$study$OpinionTicklingController$addOpinion(sender, args){
	var opinionDesc = $id("textarea0").getAttribute("value");
	var contactInfo = $id("textbox0").getAttribute("value");
	var userId = $ctx.getApp("userId");
	if(com.layou.study.GlobalUtil.isEmptyString(opinionDesc)){
		$alert("意见描述不能为空");
		return;
	}
	if(com.layou.study.GlobalUtil.isEmptyString(contactInfo)){
		$alert("联系方式不能为空");
		return;
	}
	var params = "?opinionDesc=" + $js.urlEncode(opinionDesc) + "&contactInfo=" + $js.urlEncode(contactInfo) + "&userId=" + userId;
	$service.get({
		"url" : "http://10.2.112.52:8080/HappyStudyServer/opinion/mobileSave" + params,
		"callback" : "opioionCallback()",
		"timeout" : "5"//可选参数，超时时间，单位为秒
	});
}
function opioionCallback(){
	var result = $ctx.param("result");//get和post的CallBack中获取返回结果都从result中获取
	if(com.layou.study.GlobalUtil.isEmptyString(result)){
		$alert("反馈超时");
		return;
	}
	result = $stringToJSON(result);//将字符串转换成JSON对象
	if('0' == result.code){
		$toast("反馈成功");
		$view.open({
			"viewid" : "com.layou.study.OpinionDetail",//目标页面（首字母大写）全名，
			"isKeep" : "false"
		});
	} else {
		$alert("反馈失败");
	}
}
com.layou.study.OpinionTicklingController.prototype = {
    addOpinion : com$layou$study$OpinionTicklingController$addOpinion,
    openOpinionDetail : com$layou$study$OpinionTicklingController$openOpinionDetail,
    closeOpinionTickling : com$layou$study$OpinionTicklingController$closeOpinionTickling,
    initialize : com$layou$study$OpinionTicklingController$initialize,
    evaljs : com$layou$study$OpinionTicklingController$evaljs
};
com.layou.study.OpinionTicklingController.registerClass('com.layou.study.OpinionTicklingController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
