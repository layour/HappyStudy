//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.OpinionDetailController');
com.layou.study.OpinionDetailController = function() {
    com.layou.study.OpinionDetailController.initializeBase(this);
    this.initialize();
}
function com$layou$study$OpinionDetailController$initialize(){
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
    
function com$layou$study$OpinionDetailController$evaljs(js){
    eval(js)
}
function com$layou$study$OpinionDetailController$closeOpinionDetail(sender, args){
	$view.close();
}
function com$layou$study$OpinionDetailController$loadOpinion(sender, args){
	var json = {
		list : [{
			time : "2015-05-26 15:34:00",
			content : "签到功能非常好用"
		}, {
			time : "2015-05-27 15:34:00",
			content : "这个应用太好了"
		}, {
			time : "2015-05-28 15:34:00",
			content : "这个应用太好了"
		}, {
			time : "2015-05-29 15:34:00",
			content : "签到功能非常好用"
		}, {
			time : "2015-05-30 15:34:00",
			content : "这个应用太好了"
		}]
	}
	$ctx.push(json);
}
com.layou.study.OpinionDetailController.prototype = {
    loadOpinion : com$layou$study$OpinionDetailController$loadOpinion,
    closeOpinionDetail : com$layou$study$OpinionDetailController$closeOpinionDetail,
    initialize : com$layou$study$OpinionDetailController$initialize,
    evaljs : com$layou$study$OpinionDetailController$evaljs
};
com.layou.study.OpinionDetailController.registerClass('com.layou.study.OpinionDetailController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
